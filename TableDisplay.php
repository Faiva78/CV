<?php
include_once './include/db.php';
include_once './myFuncs.php';
global $mysqli;

// elaborazione variabili $get lingua e tabella
$KeyTableStr = "table";
$LangTbleStr = "lang";
$Table = "";
$la = "";
if (M_isGet($KeyTableStr)) {
    $Table = M_get($KeyTableStr);
}
if (M_isGet($LangTbleStr)) {
    $la = M_get($LangTbleStr);
    $laSQL = " `language`=\"" . strtolower($la) . "\"";
}

// query per il numero di righe tabella
$QuantiLav = Query("SELECT count(Id) FROM `" . $Table . "` WHERE `header`=0 AND " . $laSQL);
$quantiLavori = mysqli_fetch_array($QuantiLav);
$Qlav = ($quantiLavori[0]);

//query per le intestazioni personalizzate
$sql = "SELECT * FROM `" . $Table . "` WHERE " . $laSQL . " AND `header`=1";
$IntesSql = Query($sql);
$intestazioni = mysqli_fetch_array($IntesSql);

//query per le righe tabella
$sql = "SELECT * FROM `" . $Table . "` WHERE `header`=0 AND " . $laSQL . " ORDER BY `data` DESC";
$res = Query($sql);

// variabili inizio lettura colonne tabella
$StartTableCol = 4;

//  --- inizio composizione tabella
echo '<table class="CvTable">';
echo '<col width="50%">';
for ($xx = 0; $xx < $Qlav; $xx++) {
    // ricerca e recupero dati riga 
    $res->data_seek($xx);
    $tab = mysqli_fetch_row($res);
    $fields = $res->field_count;
    echo '<tr><td>';
    echo '<table  class="CvTable2" >';
    echo '<col width="25%">';
    for ($x = $StartTableCol; $x < ($fields); $x++) {
        echo '<tr >';
        echo '  <td class="CvDesc">' . M_RetToUL($intestazioni[$x]) . '</td>';
        echo '  <td class="CvMid"></td>';
        echo '  <td class="CvData">' . M_RetToUL($tab[$x]) . '</td>';
        echo '</tr>';
    }
    echo '</table>';
    //echo '<hr>';
    echo '</td></tr>';
}
echo '</table>';
?>
