<?php
global $lang;
//global $transl;
include_once './myFuncs.php';
include_once './include/db.php';
$LangCK="Lang";
$DefaultLang="EN";

if (!isset($_COOKIE[$LangCK])) {
    $lang = $DefaultLang;
    $return= setcookie($LangCK, $DefaultLang);
} else {
    $lang = $_COOKIE[$LangCK];
}
$transl=  M_SqlToArray("SELECT `".$lang."` FROM `translate`");

?>