<?php

if (empty($or)) {
    global $sor;
    $sor = 0;
}
//Query('set character_set_client=utf8');
//Query('set character_set_connection=utf8');
//Query('set character_set_results=utf8');
//Query('set character_set_server=utf8');
error_reporting(E_ALL);
ini_set('display error', '1');

// $ini_array = parse_ini_file("property.properties");
$ini_array = parse_ini_file("property.properties");
$host = $ini_array["host"];
$usr = $ini_array["user"];
$pwd = $ini_array["psw"];
$dbase = $ini_array["dbase"];
$mysqli = new mysqli($host, $usr, $pwd, $dbase);
mysqli_set_charset($mysqli, "utf8");
//var_dump(mysqli_character_set_name($mysqli));
if ($mysqli->connect_errno) {
    printf('Database connection failed %s\n', $mysqli->connect_errno);
    exit();
}

function Query($sql) {
    global $mysqli;
    return mysqli_query($mysqli, $sql);
}
