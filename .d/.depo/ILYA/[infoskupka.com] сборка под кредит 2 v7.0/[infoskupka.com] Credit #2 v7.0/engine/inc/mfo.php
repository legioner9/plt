<?php


if( !defined( "DATALIFEENGINE" ) ) die( "Hacking attempt!" );
if( $member_id['user_group'] != 1 && $member_db[1] != 1 ) die( "��� �������" );


require_once( ENGINE_DIR."/data/mfo.config.php" );
require_once( ENGINE_DIR."/inc/mfo/mfo.class.php" );
require_once( ENGINE_DIR."/inc/mfo/functions.php" );

//----------------------------------------------------
//  ����������� �����
//----------------------------------------------------



//----------------------------------------------------
//  ���������� �����
//----------------------------------------------------


define('MOD_DIR', ENGINE_DIR.'/inc/mfo'); // ���� � ������ � ������






?>