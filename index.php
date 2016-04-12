<?php
global $PageValue;
?>
<!DOCTYPE html>
<html>
    <head>
        <?php include_once './Head.php'; ?>
        <title>Teso Nicola -- Faiva78.com</title>
    </head>
    <body>

        <?php include_once './Top.php'; ?>
        <div id="Middle" >
            <?php
            for ($_y = 0; $_y < count($Menus); $_y++) {
                if ($Menus[$_y] == $PageValue) {
                    include_once $MenusPage[$_y];
                }
            }
            ?>
            <div id="Mainbody">
                <p><?php ?> </p>
            </div>
        </div>
<?php include_once './Bottom.html'; ?>
    </body>
</html>
