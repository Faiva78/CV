<?php 
include_once './Languages.php';

$Menus = M_SqlToArray("SELECT `menu` FROM `menus`");
$MenusLang = M_SqlToArray("SELECT `" . $lang . "` FROM `menus`");
$MenusPage = M_SqlToArray("SELECT `page` FROM `menus`");

if (M_isGet("page")) {$PageValue = M_get("page");} else {$PageValue = $Menus[0];};
?>    

<script>
    function ChangeL($laa) {
        document.cookie = "Lang=" + $laa;
    }  
</script>

<div id="Top">
    <a name="Top" ></a>
    <div class="Title"  >
        <img src="img/potrait.jpg" >
        <a ><h1> Teso Nicola </h1> </a> 
    </div>
    <div id="Language" class="Langs" >

        <ul  >
            <li><a href="index.php" onclick="ChangeL('IT')"><img src="img/It.png" class="LanguageImg"></a></li>
            <li><a href="index.php" onclick="ChangeL('EN')"><img src="img/en.jpg" class="LanguageImg"></a></li>
            <li><a href="index.php" onclick="ChangeL('ES')"><img src="img/es.jpg" class="LanguageImg"></a></li>
        </ul>
    </div>

    <div id="MenuDiv" class="TopMenu">
        <ul id="Menuitems" >
            <?php 
            for ($_x=0; $_x<(count($Menus)) ;$_x++){
                $a1="<li";
                $a2=" ".M_ActPag($Menus[$_x],$PageValue)." ";
                $a3='><a href="index.php?page='.$Menus[$_x].'">';
                $a4=$MenusLang[$_x];
                $a5="</a></li>".chr("13");
                $tot=$a1.$a2.$a3.$a4.$a5;
                echo $tot;
            }                    
            ?>   
        </ul>
    </div>
</div>
