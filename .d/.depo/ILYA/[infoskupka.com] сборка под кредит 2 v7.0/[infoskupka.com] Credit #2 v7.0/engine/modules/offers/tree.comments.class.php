<?php
/*

*/

if( !defined( "DATALIFEENGINE" ) ) die( "Hacking attempt!" );


class tree_comments {
	
	// ��������� �������
	public $i = 0; 
	
	// ����� ��� �������� ������������
	public $ComDIR = "comments";
	
	// �������� � ���� ����������� ����� ������������
	private $GroupCom = 1;
	
	// ���� ���������� �������� Ajax ���������, �� ������ ���������� ������ ����� �������� "true"
	public $Ajax = false;
	
	// ���� �������� ������ ����������, �� ��� ������������ ����� ������������ ������ �������
	// ��� �������� (1,3,5 � �.�.) ����� ������������ ������� ������ "odd-comments.tpl"
	// ��� ������ (2,4,6 � �.�.) ����� ������������ ������ "comments.tpl"
	public $Alternation = false;
	
	// ��������� ���� ������������. ����� �������� �������� "� ����������� ���� ������..."
	private $IdAnswer = array();
	
	// ��������� �������� ������������. ����� �������� �������� "����� ��� �����������..."
	private $AnswerId = array();
	
	// �������� � ���� ��� ����������� ������ ���� ������ � ���������� �����������
	private $Row = array();
	
	// ���� ���������� ������������ ������ ������������, �� �������� ������ ���� "true"
	public $AllocationGroups = false;
	
	// ������ ���������� ������ ��������� � ���� ������ ������ ��� ������������ ��������� �� ������������
	// ��� ����������� ����������� �� �������. ���� ������, �� ����������� ��������� ���������� ������� ���������
	// ���� �� ��������� ������ ����������, �� � ������� ������������ ��������� ������ ���������� �� �����
	public $URL = "";
	
	// ���� � ���� �������� �����������, ������� �������� �������, �� ��� �����������, �� ������� 
	// ������ �������� ������� ��� �����, �� ������ ����������� �� ���������, � ��� ��� �������� ����������� ����.
	// ������� �����, ����� ���� ������ (������������ ��������), �� ����� ����, ����������� �����, � ����� �������.
	// ����� �������� ���� ������, ������ ������ �������� "true". ��� ����� ��������� ��������.
	// ������ ���������, ��� ��� �������, ��� ��������� ��������
	public $IncorrectRemoval = true;
	
	// ������ ���������� �������� � ���� ����� ������������ ������������. 
	// ���� ����������� �������� �������, �� �� �� ���������
	// ��������, �������� �� ����������� �������, ���������� ��� ������������ �������, ����������� �������� ������.
	public $CountCom = 0;
	
	// ���������, ���� �� ������ ����������� �� �������
	// "title" - ��������� ���������
	// "text" - ����� ���������
	// "template" - ������ ��� ������ ���������
	// "Load" - false ���� �� �������� ������, true ���� ��������
	public $NoCom = array(
		"title" => "",
		"text" => "������� �� ����������, �� ������ ����� ������.",
		"template" => "banki/default/no-otziv.tpl",
		"Load" => true
	);
	
	public $AllowAdd = false;
	public $AllowEditAllComments = false;
	private $OddComTpl = "";
	private $ComTpl = "";
	public $AllowEchoGuestEmail = false;
	
	//--------------------------=-=-=-=-=-=
	// ���������� ��� ���������
	//--------------------------=-=-=-=-=-=
	
	public $Navigation = false; // ����� �������� ���������, ���������� ����� �������� ���� "true"
	public $ComOnPage = null; // ������� �������� ������������ �� ��������
	public $Page = null; // �� ����� �������� ��������� ������������
	
	private $NavStart = null; // �������� ��������, � ������ ����������� �� ���� ������ �����
	private $NavEnd = null; // �������� ��������, �� ����� ����������� �� ����� ��������� �����
	private $Total = 1; // �������� ��������, ������� � ����� ������� ������������
	
//----------------------------------------------------
// ��������� ������� ��� ��������
//----------------------------------------------------

	private function i_plus(){
		$this->i++;	  
	}
	
	public function i_echo(){
		return $this->i;
	}
	
//----------------------------------------------------
// ������� ������� ���� ������ ��� ����� ������������
//----------------------------------------------------
	
	public function CreateDB( $sort = "", $order = "", $query = "" ){
		global $db, $id;
		
		$this->NewsID = $id;
		if( !$sort ) $sort = PREFIX."_offers_comments.id";
		$sort = "ORDER BY {$sort}";
		
		if( empty( $query ) )
			{
				$query = "SELECT ".PREFIX."_offers_comments.id, offers_id, del, author_id, answer, author, text, otziv, name_otziv, tit_otziv, ip, date, approve=1, ".PREFIX."_offers_comments.email as com_email, ".USERPREFIX."_users.email, news_num, comm_num, user_group, reg_date, signature, foto, fullname, land, xfields, name FROM ".PREFIX."_offers_comments LEFT JOIN ".USERPREFIX."_users ON ".PREFIX."_offers_comments.author_id=".USERPREFIX."_users.user_id WHERE ".PREFIX."_offers_comments.approve = 1 AND ".PREFIX."_offers_comments.offers_id = '{$this->NewsID}' {$sort} {$order}";
			}
		
		$result = $db->query( $query );
		if( $db->num_rows( $result ) > 0 )
			{
				while( $row = $db->get_row( $result ) )
					{
						$this->IdAnswer[ $row['id'] ] = $row['answer'];
						if( $row['answer'] ) $this->AnswerId[ $row['answer'] ][] = $row['id'];
						$this->Row[ $row['id'] ] = $row;
						if( !$row['answer'] ) $this->CountCom++;
					}
				
				return true;
			}
		
		return false;
	}
	
//-----------------------------------------------------
// �������������� ����������� �������� ������������
//-----------------------------------------------------
	
	private function IncorrectRemoval(){
		
		if( is_array( $this->IdAnswer ) )
			{
				$this->CountCom = 0;
				foreach( $this->IdAnswer as $id => $answer )
					{
						if( !$answer || !$this->Row[ $answer ] ) $this->CountCom++;
					}
				
				return true;
			}
		
		return false;
	}
	
//-----------------------------------------------
// �������� ������� ��� ���������� ���������
//-----------------------------------------------
	
	private function BuildController(){
		
		if( $this->Navigation && $this->ComOnPage > 0 )
			{
				$this->Page = intval( $this->Page );
				$this->Total = intval( ( ( $this->CountCom - 1 ) / $this->ComOnPage ) + 1 );
				if( empty( $this->Page ) || $this->Page <= 0 ) $this->Page = 1;
				if( $this->Page > $this->Total ) $this->Page = $this->Total;
				$this->NavStart = ( $this->Page * $this->ComOnPage - $this->ComOnPage ) + 1;
				$this->NavEnd = ( $this->NavStart + $this->ComOnPage ) - 1;
				return true;
			}
		
		return false;
	}
	
//-----------------------------------------------
// ��������� ���������
//-----------------------------------------------
	
	private function NavController(){
		
		if( $this->Navigation && $this->ComOnPage > 0 )
			{				
				if( $this->GroupCom < $this->NavStart )
					{
						return "wait";
					}
				elseif( $this->GroupCom > $this->NavEnd )
					{
						return "stop";	
					}
			}
		
		return "continue";
	}
		
//-----------------------------------------------
// ������� ������
//-----------------------------------------------

	public function start( $nbsp = 0 ){
		
		if( $this->IncorrectRemoval ) $this->IncorrectRemoval();
		$this->BuildController();
		if( $this->CountCom > 0 )
			{
				foreach( $this->IdAnswer as $id => $answer )
					{
						$access = $this->NavController();
						if( $access == "stop" ) break;
						if( !$answer || !$this->Row[ $answer ] )
							{
								if( $access != "wait" ) 
									{
										if( count( $this->AnswerId[ $id ] ) > 0 ) $this->Border( "start" );
										$this->echo_comm( $id, $nbsp );
									}
									
								unset( $this->IdAnswer[ $id ] );
								$this->GroupCom++;
								
								if( $access != "wait" ) 
									{
										$this->com_tree( $id, $nbsp );
										if( count( $this->AnswerId[ $id ] ) > 0 ) $this->Border();
									}
							}
					}
			}
				else
			{
				$this->EchoInfo();
			}
	}

//-----------------------------------------------
// ���� ������� �������������
//-----------------------------------------------

	private function com_tree( $id, $nbsp = 0 ){
		
		if( is_array( $this->AnswerId[ $id ] ) && count( $this->AnswerId[ $id ] ) > 0 )
			{
				$nbsp += 3;
				foreach( $this->AnswerId[ $id ] as $id_com )
					{
						if( $this->IdAnswer[ $id_com ] == $id )
							{
								$this->echo_comm( $id_com, $nbsp );
								unset( $this->IdAnswer[$id_com] );				
								$this->com_tree( $id_com, $nbsp );	
							}			
					}
			}
			
	    return "";
	}
	
//-----------------------------------------------
// ������� ����������
//-----------------------------------------------
	
	public function EchoInfo(){
		global $tpl;
		
		if( $this->NoCom['Load'] )
			{
				$tpl->Load_Template( $this->NoCom['template'] );
				$tpl->set( "{title}", stripslashes( $this->NoCom['title'] ) );
				$tpl->set( "{error}", stripslashes( $this->NoCom['text'] ) );
				$tpl->copy_template = "<span id=\"dle-ajax-comments\">".$tpl->copy_template."</span>";
				$tpl->compile( "offers_comments" );
				$tpl->clear();
			}
	}
	
//-----------------------------------------------
// ������� ��������� ������ ������������
//-----------------------------------------------

	private function Border( $type = "end" ){
		global $tpl;
		
		
		if( $this->AllocationGroups )
			{
				$tpl->Load_Template( "{$this->ComDIR}/border-com.tpl" );
				
				if( $type == "start" )
					{
						$tpl->set( "[start]", "" );
						$tpl->set( "[/start]", "" );
						$tpl->set_block( "'\\[end\\](.*?)\\[/end\\]'si", "" );
					}
						else
					{
						$tpl->set( "[end]", "" );
						$tpl->set( "[/end]", "" );
						$tpl->set_block( "'\\[start\\](.*?)\\[/start\\]'si", "" );
					}
				
				$tpl->compile( "offers_comments" );
				$tpl->clear();
				
				return true;
			}
		
		return false;		
	}

//-----------------------------------------------
// ������� ������ ������������
//-----------------------------------------------

	private function echo_comm( $id, $nbsp, $i = 1 ){
		global $config, $tpl, $is_logged, $member_id, $user_group, $lang, $_TIME;
	
		$this->i_plus();
		$nbsp = $nbsp * 15;
		$row = $this->Row[ $id ];
		
		if( $config['allow_alt_url'] == "yes" ) $AltUrl = true;
		
		/*********************************************
					�������� �������
		*********************************************/
		
		if( $this->i % 2 && $this->Alternation )
			{
				if( !$this->OddComTpl )
					{
						$tpl->load_template( "{$this->ComDIR}/odd-comments.tpl" );
						$this->OddComTpl = $tpl->copy_template;
					}
						else
					{
						// �������� ������� Load_Template (����� �� 100 ��� �� ������� ���� � ����� ������)
						$tpl->copy_template = $this->OddComTpl;
					}
			}
				else
			{
				if( !$this->ComTpl )
					{
						$tpl->load_template( "{$this->ComDIR}/comments.tpl" );
						$this->ComTpl = $tpl->copy_template;
					}
						else
					{
						// �������� ������� Load_Template (����� �� 100 ��� �� ������� ���� � ����� ������)
						$tpl->copy_template = $this->ComTpl;
					}
			}
		
		/*********************************************
					��������� �����������
		*********************************************/
		
		$id = $row['id'];
		$photo_id = intval( $row['photo_id'] );
		$author_id = intval( $row['author_id'] );
		$date = strtotime( $row['date'] );
		$ComAutor = htmlspecialchars( stripslashes( $row['author'] ), ENT_QUOTES, $config['charset'] );
		$ComEmail = htmlspecialchars( stripslashes( $row['com_email'] ), ENT_QUOTES, $config['charset'] );
		$text = stripslashes( $row['text'] );
		$otziv = stripslashes( $row['otziv'] );
		$name_otziv = stripslashes( $row['name_otziv'] );
		$tit_otziv = stripslashes( $row['tit_otziv'] );
		$ip = htmlspecialchars( stripslashes( $row['ip'] ), ENT_QUOTES, $config['charset'] );
		$is_register = $author_id > 0 ? 1 : 0;
		$answer = intval( $row['answer'] );
		$del = intval( $row['del'] );
		
		if( $del ) $text = "<span class=\"offers-comment-del\">���� ����� ��� �����...</span>";
		
		$UserName = stripslashes( $row['name'] );
		$UserEmail = stripslashes( $row['email'] );
		$UserNewsNum = intval( $row['news_num'] );
		$UserCommNum = intval( $row['comm_num'] );
		$UserGroup = intval( $row['user_group'] );
		$UserRegDate = stripslashes( $row['reg_date'] );
		$UserSignature = stripslashes( $row['signature'] );
		$UserFoto = stripslashes( $row['foto'] );
		$UserFullName = stripslashes( $row['fullname'] );
		$UserLand = stripslashes( $row['land'] );
		$UserICQ = stripslashes( $row['icq'] );
		$UserXfields = stripslashes( $row['xfields'] );
		
		if( $AltUrl )
			{
				$AuthorLink = $config['http_home_url']."user/".urlencode( $UserName )."/";
			}
				else
			{
				$AuthorLink = "$PHP_SELF?subaction=userinfo&amp;user=".urlencode( $UserName );
			}	
		
		// ������ �� ������ �����������
		if( !$is_register  || $UserName == "" )
			{
				// ��������� � ������, ������� ����� ��������, �������� ����� email
				if( $this->AllowEchoGuestEmail !== true ) $ComEmail = false;
				if( $ComEmail )
					{
						$tpl->set( "{author}", "<a href=\"mailto:{$ComEmail}\">{$ComAutor}</a>" );
					}
						else
					{
						$tpl->set( "{author}", $ComAutor );
					}
			}
				else
			{
				$tpl->set( "{author}", "{$UserName}" );
			}
		
		// ���� ���������� �����������
		if( date( Ymd, $date ) == date( Ymd, $_TIME ) )
			$tpl->set( "{date}", $lang['time_heute'].langdate( ", H:i", $date ) );
		elseif( date( Ymd, $date ) == date( Ymd, ($_TIME - 86400) ) )
			$tpl->set( "{date}", $lang['time_gestern'].langdate( ", H:i", $date ) );
		else
			$tpl->set( "{date}", langdate( $config['timestamp_comment'], $date ) );
	
		$tpl->copy_template = preg_replace_callback( "#\{date=(.+?)\}#i", function( $matches ) use ( $date ){
			return langdate( $matches[1], $date );
		}, $tpl->copy_template );
					
		// ���� ������� ������������
		if( $is_register )
			{
				$tpl->set( "{registration}", langdate( "j.m.Y", $UserRegDate ) );
				if( $UserICQ ) $tpl->set( "{icq}", $UserICQ ); else $tpl->set( "{icq}", "--" );
				
				if( $UserSignature && $user_group[$row['user_group']]['allow_signature'] )
					{
						$tpl->set_block( "'\\[signature\\](.*?)\\[/signature\\]'si", "\\1" );
						$tpl->set( "{signature}", $UserSignature );
					}
						else
					{
						$tpl->set_block( "'\\[signature\\](.*?)\\[/signature\\]'si", "" );
					}
					
				if( $user_group[$row['user_group']]['icon'] ) 
					$tpl->set( "{group-icon}", "<img src=\"".$user_group[$row['user_group']]['icon']."\" border=\"0\" alt=\"\" />" );
				else
					$tpl->set( "{group-icon}", "" );
			}
				else
			{
				$tpl->set( "{registration}", "--" );
				$tpl->set( "{icq}", "--" );
				$tpl->set_block( "'\\[signature\\](.*?)\\[/signature\\]'si", "" );
				$tpl->set( "{group-icon}", "" );
			}
		
		// IP ����� ������ �����������
		if( $is_logged && $member_id['user_group'] == 1 )
			$tpl->set( "{ip}", "IP: <a onclick=\"return dropdownmenu(this, event, IPMenu('{$ip}', '".$lang['ip_info']."', '".$lang['ip_tools']."', '".$lang['ip_ban']."'), '190px')\" onmouseout=\"delayhidemenu()\" href=\"https://www.nic.ru/whois/?ip={$ip}\" target=\"_blank\">{$ip}</a>" );
		else 
			$tpl->set( "{ip}", "" );
		
		// ������ ������������
		if( $UserFoto )
			$tpl->set( "{foto}", $config['http_home_url']."uploads/fotos/{$UserFoto}" );
		else
			$tpl->set( "{foto}", "{THEME}/dleimages/noavatar.png" );
		
		// ������ ����������� � ������
		if( $this->AllowAdd && !$del )
			{
				$FastName = str_replace( array( " ", "&#039;" ), array ( "&nbsp;", "&amp;#039;" ), $ComAutor );
				$tpl->set( "[fast]", "<a onmouseover=\"dle_copy_quote( '{$FastName} ');\" href=\"#\" onclick=\"OffersQuoteSelectedText( '{$FastName}' ); return false;\">" );
				$tpl->set( "[/fast]", "</a>" );
				
				$tpl->set( "{comm-answer}", "<span id=\"button_answer_to_{$id}\"><a href=\"#\" onclick=\"OffersAnswerComment( '{$id}' ); return false;\">��������</a></span>" );
				$tpl->set( "[comm-answer]", "<span id=\"button_answer_to_{$id}\"><a href=\"#\" onclick=\"OffersAnswerComment( '{$id}' ); return false;\">" );
				$tpl->set( "[/comm-answer]", "</a></span>" );
				$tpl->set_block( "'\\[no-comm-answer\\](.*?)\\[/no-comm-answer\\]'si", "" );
			}
				else
			{
				$tpl->set_block( "'\\[fast\\](.*?)\\[/fast\\]'si", "" );
				$tpl->set_block( "'\\[comm-answer\\](.*?)\\[/comm-answer\\]'si", "" );
				$tpl->set( "[no-comm-answer]", "" );
				$tpl->set( "[/no-comm-answer]", "" );
				$tpl->set( "{comm-answer}", "" );
			}
		
		// �������������� �����������
		if( $is_logged && ( ( $member_id['name'] == $UserName && $is_register ) || $this->AllowEdit === true ) && !$del )
			{
				$tpl->set( "[com-edit]", "<a onclick=\"OffersEditCom( '{$id}' ); return false;\" href=\"javascript:void(0);\">" );
				$tpl->set( "[/com-edit]", "</a>" );
			} 
				else
			{
				$tpl->set_block( "'\\[com-edit\\](.*?)\\[/com-edit\\]'si", "" );
			}
		
		// �������� �����������
		if( $is_logged && ( ( $member_id['name'] == $UserName && $is_register ) || $this->AllowEdit === true ) && !$del )
			{
				$tpl->set( "[com-del]", "<a href=\"javascript:void(0);\" onclick=\"OffersDelCom( '{$id}', '{$this->NewsID}', '{$otziv}' ); return false;\">" );
				$tpl->set( "[/com-del]", "</a>" );
			} 
				else
			{
				$tpl->set_block( "'\\[com-del\\](.*?)\\[/com-del\\]'si", "" );
			}
			
		if( $del )
			{
				$tpl->set( "[del]", "" );
				$tpl->set( "[/del]", "" );
				$tpl->set_block( "'\\[not-del\\](.*?)\\[/not-del\\]'si", "" );
			}
				else
			{
				$tpl->set( "[not-del]", "" );
				$tpl->set( "[/not-del]", "" );
				$tpl->set_block( "'\\[del\\](.*?)\\[/del\\]'si", "" );
			}
		
		// ������ ����� (��� �������)
		if( !empty( $nbsp ) )
			{
				$tpl->set( "{nbsp}", ( $nbsp - 20 ) );
				$tpl->set( "[tree-start]", "" );
				$tpl->set( "[/tree-start]", "" );
				$tpl->set( "[tree-end]", "<div id=\"tree_comments_form-{$id}\">" );
				$tpl->set( "[/tree-end]", "" );
				$tpl->set_block( "'\\[not-tree\\](.*?)\\[/not-tree\\]'si", "" );
			}
				else
			{
				$tpl->set( "[not-tree]", "" );
				$tpl->set( "[/not-tree]", "" );
				$tpl->set_block( "'\\[tree-start\\](.*?)\\[/tree-start\\]'si", "" );
				$tpl->set_block( "'\\[tree-end\\](.*?)\\[/tree-end\\]'si", "<div id=\"tree_comments_form-{$id}\"></div>" );
			}
			
		// ������ ����
		$tpl->set( "{comment-id}", $id );
		$tpl->set( "{news_title}", "" );
		$tpl->set( "{comment}", "<div id=\"comm-id-{$id}\">{$text}</div>" );
		$tpl->set( "{otziv}", "{$otziv}" );
		$tpl->set( "{name_otziv}", "{$name_otziv}" );
		$tpl->set( "{tit_otziv}", "{$tit_otziv}" );
		$tpl->set( "{group-name}", $user_group[ $UserGroup ]['group_name'] );
		$tpl->set( "{news-num}", $UserNewsNum );
		$tpl->set( "{comm-num}", $UserCommNum );
		$tpl->set( "{login}", $ComAutor );
		
		$tpl->copy_template = "\n<div id=\"offers-full-com-{$id}\">\n".$tpl->copy_template."\n</div>\n";
		
		/*********************************************
					���������� ����������
		*********************************************/
		
		$tpl->compile( "offers_comments" );
		$tpl->clear();
	 }

//-----------------------------------------------
// 3 ������� ��� ���������
//-----------------------------------------------
	
	// ����� ��������������� ������ ��� Url �� �������������
	private function CNPage( $page, $title = "", $return = "" ){
		$link = str_replace( "{page}", $page, $this->URL );
		if( $return == "url" ) return $link;
		if( $this->Ajax ) $OnClick = "onclick=\"OffersComPage( '{$page}', '{$this->NewsID}', '{$this->URLAjax}' ); return false;\"";
		if( $title ) $page = $title;
		return "<a {$OnClick} href=\"{$link}\">{$page}</a> ";
	}
	
	// ���������� ���� ������
	private function LPage( $start, $end ){
	 
		while( $start < $end )
			{ 
				if( $start == $this->Page )
					$navigation .= "<span>".$start."</span>\n";
				else
					$navigation .= $this->CNPage( $start );				
				$start++;
			} 
			
		return $navigation;
	}
	
	// ������������ ��������� ���������� � ���� �������
	public function BuildNavigation( $UrlOff = "", $UrlOn = "" ){
		global $config, $tpl;
		
		// ���� ���� �������, �� ��������� �� ���������
		if( $this->Total < 2 ) return;
		
		// �������� ������� ������ ��� ���������
		if( empty( $this->URL ) )
			{
				if( $config['allow_alt_url'] == "yes" )
					$this->URL = $UrlOn;
				else
					$this->URL = $UrlOff;
			}
		
		$this->URLAjax = str_replace( "{page}", "|-page-|", $this->URL );
		
		// ����� �� ���� �������������
		if( $this->Page < 0 ) $this->Page = 1;
		if( $this->Page > $this->Total ) $this->Page = $this->Total;
	
		$first = $this->Page - 4; // ������� ������� ��������� ����� �� ��������
		$last = $this->Page + 5; // ������� ������� ��������� ������ �� ��������
		$PPage = $this->CNPage( $this->Page - 1 ,"","url" ); // ���������� ��������
		$NPage = $this->CNPage( $this->Page + 1 ,"","url" ); // ��������� ��������
		$PageMin = 81; // ���������� �������� ��� ������ ���������
		$PageMax = $this->Total - 81; // ����������� �������� ��� ������ ���������
		$divider = "... ";  // �� ��� �������� �������
		
		// �������� Ajax
		if( $this->Ajax ) 
			{
				$OnClickPrev = "onclick=\"OffersComPage( '".( $this->Page - 1 )."', '{$this->NewsID}', '{$this->URLAjax}' ); return false;\"";
				$OnClickNext = "onclick=\"OffersComPage( '".( $this->Page + 1 )."', '{$this->NewsID}', '{$this->URLAjax}' ); return false;\"";
			}
		  
		 // ��������� �������
		$tpl->load_template( "{$this->ComDIR}/com-navigation.tpl" );
	
		// ���������� ��������
		if( $this->Page > 1 )
			$tpl->set_block( "'\[prev-link\](.*?)\[/prev-link\]'si", "<a {$OnClickPrev} href=\"{$PPage}\">\\1</a>" );
		else
			$tpl->set_block( "'\[prev-link\](.*?)\[/prev-link\]'si", "<span>\\1</span>" );
		  
		// ��������� ��������
		if( $this->Page < $this->Total )
			$tpl->set_block( "'\[next-link\](.*?)\[/next-link\]'si", "<a {$OnClickNext} href=\"{$NPage}\">\\1</a>" );
		else
			$tpl->set_block( "'\[next-link\](.*?)\[/next-link\]'si", "<span>\\1</span>" );
	
		// ���� ������� ������ ��� 10
		if( $this->Total < 10 )
			{
				$navigation = $this->LPage( 1, $this->Total + 1 );
				$navigation = $navigation;
			}
				else
			{	  
				// �� ��������  
				if( ( $this->Page >= $PageMin - 2 ) && ( $this->Page <= $PageMax + 2 ) )
					{
						$navigation = $this->LPage( $first, $last );
						$navigation = $this->CNPage( "1" ).$divider.$navigation.$divider.$this->CNPage( $this->Total );
					}
				// ���� �������� �� ������ 8 - ��
				elseif( $this->Page < $PageMin )
					{  
						$navigation = $this->LPage( 1, $PageMin + 1 );
						$navigation = $navigation.$divider.$this->CNPage( $this->Total );
					}
				// ���� �������� ������ ���� 8 - �� ���������
				elseif( $this->Page > $PageMax )
					{
						$navigation = $this->LPage( $PageMax, $this->Total + 1 );
						$navigation = $this->CNPage( "1" ).$divider.$navigation;
					} 
			}	
	  	
		// ���������� ����� ��� �������
		$tpl->set( "{pages}", $navigation );
		$tpl->set( "{page}", $this->Page );
		$tpl->set( "{count}", $this->Total );
		
		// ������������ �������
		$tpl->compile( "nav_comments" );
		
		// ������� ������ �������� �� ���������
		$tpl->clear();
		
		// ������� ���������
		unset( $navigation );
	}
	
//----------------------------------------------------------------------------------------------------=-=-=-=-=-=-=
// ������������� ���� ��� ����� ���������� ������������ � ������� TinyMCE Wysiwyg ���������. 
// �������� �� ������������ ������� ��������� ������� ������ ������� �.�. ������ ������� ������ ���������� ���.
//----------------------------------------------------------------------------------------------------=-=-=-=-=-=-=
	
	public function TinyMCEInit( $TplName = "content" ){
		global $tpl, $lang, $config, $user_group, $member_id;
		
		if ($user_group[$member_id['user_group']]['allow_url']) $link_icon = "link,dle_leech,separator,"; else $link_icon = "";
		if ($user_group[$member_id['user_group']]['allow_image']) $link_icon .= "image,";
		$tpl->result[ $TplName ] .= <<<HTML

	<script type="text/javascript">
		var TreeComWysiwyg = true;
		function TinyMCEInit(){
			
			tinyMCE.init({
				// General options
				mode : "exact",
				theme : "advanced",
				elements : "comments",
				language : "{$lang['wysiwyg_language']}",
				width : "460",
				height : "220",
				plugins : "safari,emotions,inlinepopups",
				convert_urls : false,
				force_p_newlines : false,
				force_br_newlines : true,
				forced_root_block : '',
				dialog_type : 'window',
				extended_valid_elements : "div[align|class|style|id|title]",
		
				// Theme options
				theme_advanced_buttons1 : "bold,italic,underline,separator,strikethrough,justifyleft,justifycenter,justifyright, justifyfull,undo,redo,separator,{$link_icon}emotions,dle_quote,dle_hide",
				theme_advanced_buttons2 : "",
				theme_advanced_buttons3 : "",
				theme_advanced_toolbar_location : "top",
				theme_advanced_toolbar_align : "left",
				theme_advanced_statusbar_location : "bottom",
				theme_advanced_resizing : true,
		
		
				// Example content CSS (should be your site CSS)
				content_css : "{$config['http_home_url']}engine/editor/css/content.css",
		
				setup : function(ed) {
						// Add a custom button
					ed.addButton('dle_quote', {
					title : '{$lang['bb_t_quote']}',
					image : '{$config['http_home_url']}engine/editor/jscripts/tiny_mce/themes/advanced/img/dle_quote.gif',
					onclick : function() {
						// Add you own code to execute something on click
						ed.execCommand('mceReplaceContent',false,'[quote]' + ed.selection.getContent() + '[/quote]');
					}
					   });
		
					ed.addButton('dle_hide', {
					title : '{$lang['bb_t_hide']}',
					image : '{$config['http_home_url']}engine/editor/jscripts/tiny_mce/themes/advanced/img/dle_hide.gif',
					onclick : function() {
						// Add you own code to execute something on click
						ed.execCommand('mceReplaceContent',false,'[hide]' + ed.selection.getContent() + '[/hide]');
					}
					   });
		
					ed.addButton('dle_leech', {
					title : '{$lang['bb_t_leech']}',
					image : '{$config['http_home_url']}engine/editor/jscripts/tiny_mce/themes/advanced/img/dle_leech.gif',
					onclick : function() {
		
						var enterURL   = prompt("{$lang['bb_url']}", "http://");
						if (enterURL == null) enterURL = "http://";
						ed.execCommand('mceReplaceContent',false,"[leech="+enterURL+"]{\$selection}[/leech]");
					}
					   });
		
				 }
		
		
			});
		}
	</script>
	
HTML;
	
}
 
//-----------------------------------------------
// ������� ������
//-----------------------------------------------

	public function apocalypse(){
		$this->i = 0;
		$this->IdAnswer = array();
		$this->Row = array();
		$this->GroupCom = 1;
		$this->AllocationGroups = false;
		$this->IncorrectRemoval = true;
		$this->CountCom = 0;
		$this->Navigation = false;
		$this->ComOnPage = null;
		$this->Page = null;
		$this->NavStart = null;
		$this->NavEnd = null;
		$this->Total = 1;
		$this->Alternation = false;
		$this->OddComTpl = "";
		$this->ComTpl = "";
	}
		
}
?>