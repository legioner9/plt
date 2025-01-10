<?php
/*
=====================================================
 ����: navigation.class.php
=====================================================
 ������ ��� ������� ���������� �������
=====================================================
 ����������: ����� ��� ���������
=====================================================
*/

if( !defined( "DATALIFEENGINE" ) ) die( "Hacking attempt!" );

//------------------------------------------=-=-=-=-=
//	����� ��� ���������
//------------------------------------------=-=-=-=-=

class OffersNavigation {
	
	var $URL = "";
	var $Page = "";
	var $Total = "";
	var $Ajax = false;
	var $AjaxURL = "";
	var $Tpl = "";
	var $Compile = "content";
	
	// ����� ��������������� ������ ��� Url �� �������������
	function CNPage( $page, $title = "", $return = "" ){
		$link = str_replace( "{page}", $page, $this->URL );
		if( $return == "url" ) return $link;
		if( $this->Ajax ) $OnClick = str_replace( "{page}", $page, $this->AjaxURL );
		if( $title ) $page = $title;
		return "<a {$OnClick} href=\"{$link}\">{$page}</a> ";
	}
	
	// ���������� ���� ������
	function LPage( $start, $end ){
	 
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
	function BuildNavigation(){
		global $tpl;
		
		// ���� ���� �������, �� ��������� �� ���������
		if( $this->Total < 2 ) return;
		
		// �������� ������ ��������������� ���������
		//$tpl->result[ $this->Compile ] = "";
		
		// ����� �� ���� �������������
		if( $this->Page < 1 ) $this->Page = 1;
		if( $this->Page > $this->Total ) $this->Page = $this->Total;
	
		$first = $this->Page - 4; // ������� ������� ��������� ����� �� ��������
		$last = $this->Page + 5; // ������� ������� ��������� ������ �� ��������
		$PPage = $this->CNPage( $this->Page - 1 , "", "url" ); // ���������� ��������
		$NPage = $this->CNPage( $this->Page + 1 , "", "url" ); // ��������� ��������
		$PageMin = 8; // ���������� �������� ��� ������ ���������
		$PageMax = $this->Total - 8; // ����������� �������� ��� ������ ���������
		$divider = "... ";  // �� ��� �������� �������
		
		// �������� Ajax
		if( $this->Ajax ) 
			{
				$OnClickPrev = str_replace( "{page}", ( $this->Page - 1 ), $this->AjaxURL );
				$OnClickNext = str_replace( "{page}", ( $this->Page + 1 ), $this->AjaxURL );
			}
		  
		 // ��������� �������
		$tpl->load_template( $this->Tpl );
	
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
				if( ( $this->Page >= $PageMin - 2 ) and ( $this->Page <= $PageMax + 2 ) )
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
		$tpl->set( "{navigation}", $navigation );
		$tpl->set( "{page}", $this->Page );
		$tpl->set( "{count_page}", $this->Total );
		
		if( $this->Total < 2 )
			{
				$tpl->set_block( "'\[page\](.*?)\[/page\]'si", "" );
			}
				else
			{
				$tpl->set( "[page]", "" );
				$tpl->set( "[/page]", "" );
			}
		
		// ������������ �������
		$tpl->compile( $this->Compile );
		
		// ������� ������ �������� �� ���������
		$tpl->clear();
		
		// ������� ���������
		unset( $navigation );
	}
}

?>