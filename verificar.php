<?php
    require_once("conexao.php");
?>
<?php
    if(isset($_POST['alternativa'])){
        $tentativa = $_POST['alternativa'];
        $resposta = $_POST['resposta'];

        $updateContador = "UPDATE game SET contador =  contador + 1 WHERE id = 1";
        $update = mysqli_query($conecta, $updateContador);
        
        if($resposta == $tentativa){
            $updateAcertos = "UPDATE game SET acertos =  acertos + 1 WHERE id = 1";
            $update2 = mysqli_query($conecta, $updateAcertos); 
        }
    }

    header('Location: game.php');
    
?>
<?php
    mysqli_close($conecta);
?>