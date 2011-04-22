<?php
/* Copyright (C) 2008 Laurent Destailleur  <eldy@users.sourceforge.net>
 *
 * Licensed under the GNU GPL v3 or higher (See file gpl-3.0.html)
 */

/**
 *		\file 		htdocs/google/pre.inc.php
 *		\ingroup    google
 *		\brief      File to manage left menu for google module
 *		\version    $Id: pre.inc.php,v 1.10 2011/04/22 16:01:58 hregis Exp $
 */

define('NOCSRFCHECK',1);

$res=0;
if (! $res && file_exists("../main.inc.php")) $res=@include("../main.inc.php");
if (! $res && file_exists("../../main.inc.php")) $res=@include("../../main.inc.php");
if (! $res && file_exists("../../../dolibarr/htdocs/main.inc.php")) $res=@include("../../../dolibarr/htdocs/main.inc.php");     // Used on dev env only
if (! $res && file_exists("../../../../dolibarr/htdocs/main.inc.php")) $res=@include("../../../../dolibarr/htdocs/main.inc.php");   // Used on dev env only
if (! $res && file_exists("../../../../../dolibarr/htdocs/main.inc.php")) $res=@include("../../../../../dolibarr/htdocs/main.inc.php");   // Used on dev env only
if (! $res) die("Include of main fails");


/**
 * Enter description here...
 *
 * @param   $head
 * @param   $title
 * @param   $help_url
 */
function llxHeader($head = "", $title="", $help_url='')
{
	global $conf,$langs;
	$langs->load("agenda");

	top_menu($head, $title);

	$menu = new Menu();
	
	if ($conf->global->GOOGLE_ENABLE_AGENDA)
	{
		$menu->add("/google/index.php?mainmenu=google&idmenu=".$_SESSION["idmenu"], $langs->trans("Agendas"));
	
		$MAXAGENDA=empty($conf->global->GOOGLE_AGENDA_NB)?5:$conf->global->GOOGLE_AGENDA_NB;
		$i=1;
		while ($i <= $MAXAGENDA)
		{
			$paramkey='GOOGLE_AGENDA_NAME'.$i;
			$paramcolor='GOOGLE_AGENDA_COLOR'.$i;
			//print $paramkey;
			if (! empty($conf->global->$paramkey))
			{
				$addcolor=false;
				if (isset($_GET["nocal"]))
				{
					if ($_GET["nocal"] == $i) $addcolor=true;
				}
				else $addcolor=true;
	
				$link=dol_buildpath("/google/index.php",1)."?mainmenu=google&idmenu=".$_SESSION["idmenu"]."&nocal=".$i;
	
				$text='';
				$text.='<table class="nobordernopadding">';
	
				$text.='<tr valign="middle" class="nobordernopadding">';
	
				// Color of agenda
				$text.='<td style="padding-left: 4px; padding-right: 4px" nowrap="nowrap">';
				$box ='<!-- Box color '.$selected.' -->';
				$box.='<table style="border-collapse: collapse; margin:0px; padding: 0px; border: 1px solid #888888;';
				if ($addcolor) $box.=' background: #'.(preg_replace('/#/','',$conf->global->$paramcolor)).';';
				$box.='" width="12" height="10">';
				$box.='<tr class="nocellnopadd"><td></td></tr>';	// To show box
				$box.='</table>';
				$text.=$box;
				$text.='</td>';
	
				// Name of agenda
				$text.='<td>';
				$text.='<a class="vsmenu" href="'.$link.'">'.$conf->global->$paramkey.'</a>';
				$text.='</td></tr>';
				$text.='</table>';
	
				$menu->add_submenu('', $text);
			}
			$i++;
		}
	}

	left_menu($menu->liste, $help_url);
}
?>
