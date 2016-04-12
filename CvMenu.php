<script>
    function remCl(id, clas) {
        $($(id).removeClass(clas));
    }
    function addCl(id, clas) {
        $($(id).addClass(clas));
    }

    function LoadTableDisplay(table, lang) {
        $Tmp = "TableDisplay.php?table=" + table + "&lang=" + lang;
        $("#Mainbody").load($Tmp, null, response());
        // da finire: cambiare il background del menu sulla classe Vuota 
        //$("a.MenuLeft").attr("class","n");
        
        
        addCl("#" + table,"Activa");
        //$($(".MenuLeft").removeClass("Activa"));
        //$($("#" + table).attr("class", "Activa"));
    }

    function  response() {
    }
    ;

    $body = $("body");
    $(document).on({
        ajaxStart: function() {
            $body.addClass("loading");
        },
        ajaxStop: function() {
            $body.removeClass("loading");
        }
    });
    //$(".MenuLeft").css("background-color","lightgray");
    //$(document).ready(function() { $(".MenuLeft").click(function()) { alert("d"); } } );
</script>           
        <?php

        function loadSpinTag() {
            echo '<a id="spinner" ></a>';
        }
        ?>
<div class="MenuLeft">
    <ul>
        <?php
        $cv = M_SqlToArray("SELECT `cv` FROM `infocv`");
        $cvLangs = M_SqlToArray("SELECT `" . $lang . "` FROM `infocv`");
        $apici = chr(39);
        for ($d = 0; $d < count($cv); $d++) {
            $b1 = '<li><a id="' . $cv[$d] . '" ';
            $b2 = 'onclick="LoadTableDisplay(' . $apici . $cv[$d] . $apici . ',' . $apici . $lang . $apici . ')" ';
            $b3 = 'href="#">' . $cvLangs[$d] . '</a></li>' . chr(13);
            echo $b1 . $b2 . $b3;
        };
        ?>

    </ul>
</div>
