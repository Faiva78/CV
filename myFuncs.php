<?php


/**
 * valuta se il parametro inserito 
 * è contenuto nell' array globale $_GET
 * @param string $value
 * Stringa da ricercare
 * @return boolean
 * Ritorna vero o falso
 * @
 */
function M_isGet($value) {
    if (isset($_GET[($value)])) {
        return true;
    } else {
        return false;
    }
}


/**
 * Ritorna il il valore della chiave
 * nell'array $GET
 * @param string $value
 * Stringa chiave
 * @return string
 * Ritorna stringa valore
 */
function M_get($value) {
    if (M_isGet($value)) {
        return $_GET[($value)];
    } else {
        return NULL;
    }
}


/**
 * Valuta se esiste la stringa indicata nell''array $_GET
 * @param type $key
 * stringa del campo 
 * @param type $value
 * valore del campo
 * @return boolean
 *
 * vero o falso
 */
function M_checkGet($key, $value) {
    if (M_isGet($key)) {
        if (M_get($key) === $value) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

function M_checkPost($key, $value) {
    if (M_isGet($key)) {
        if (M_get($key) === $value) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}







function M_post($value) {
    if (M_isPost($value)) {
        return $_POST[($value)];
    } else {
        return NULL;
    }
}



function M_isPost($value) {
    if (isset($_POST[($value)])) {
        return true;
    } else {
        return false;
    }
}

function M_RetToA($input){
    return "<a>".$input."</a>";   
}

/**
 * Converte la stringa input e divide i caratteri di new line 
 * in stringa HTML formattata un Unnumbered list
 * @param string $input
 * Stringa da convertire
 * @return string
 * Ritorna stringa formattata
 */
function M_RetToUL($input) {
    $spl = explode(chr(13), $input);
    $len = count($spl);
    if ($len<=1) {
        return "<a>".$input."</a>";
    } else {
        
        $tot = "<ul>" . chr(13);
    for ($c = 0; $c < $len; $c++) {
        $line= $spl[$c];
        $len2=  strlen($line);
        if ($len2>1){
        $tmp = "<li>" . $line . "</li>" . chr(13);
        $tot = $tot . $tmp;    
        }     
    }
    $tot = $tot . "</ul>";
    return $tot;
    }
}



function M_ActPag($page,$index){
    if ($page==$index) {
        return 'class="Active"';
    } else   { 
    return "";}
}

function M_Col($type, $top) {
    if ($top === $type) {
        echo 'style="background-color:#8d8d8d"';
    } else {
        'style="background-color:#d8d8d8"';
    }
}

function M_SqlToArray($SqlSend) {

    $resQuery = Query($SqlSend);
    $numrowsQuery = $resQuery->num_rows;
    $ReturnArray = array();
    for ($xx = 0; $xx < $numrowsQuery; $xx++) {
        $_val = mysqli_fetch_row($resQuery);
        array_push($ReturnArray, $_val[0]);
    }
    return $ReturnArray;
}
