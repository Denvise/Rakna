<?php

$bdd = new PDO('mysql:host=localhost;dbname=chappy', 'root', 'root');
$data = $bdd->query('SELECT * FROM Valnut WHERE Aliment LIKE "%'.$_POST['food'].'%"');

?>
    <ul>
        <?php while ($a = $data->fetch()){
            ?>
            <li><?= $a['Aliment']. ' | '.$a['Kcal']. ' Kcal'   ;?></li>
            <?php
        }
        ?>
    </ul>
