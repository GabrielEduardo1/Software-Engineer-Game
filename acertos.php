<?php
    require_once("conexao.php");
?>
<?php
    $questoes1 = "SELECT * FROM game WHERE id = 1";
    $chute = mysqli_query($conecta, $questoes1);
    $dados = mysqli_fetch_assoc($chute);
    $acertos = $dados['acertos'];
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <title>Acertos Softwate Engineer Game</title>
    </head>
    <body class="flex-box">
        <header class="header">
            <h1>SOFTWARE ENGINEER GAME</h1>
        </header>
        <div class="border-body2">
            <main class="flex-box">
                <h1 class="content-text">
                    Você é 
                        <?php
                            if($acertos >= 15){
                                echo " um especialista";
                            }else if($acertos >= 10 && $acertos < 15){
                                echo " bom";
                            }else if($acertos >= 5 && $acertos < 10){
                                echo " regular";
                            }else if($acertos < 5 && $acertos > 1){
                                echo " ruim";
                            }else if($acertos <= 1){
                                echo " péssimo";
                            }
                        ?>
                    em Engenharia de Software
                </h1>
                <h1 class="content-text">Acertos: <?php echo $acertos ;?>/20</h1>
                <a href="game.php" class="link-game">Jogar Novamente ▶</a>
            </main>
        </div>
        <footer>
            <p class="autores">&copy Desenvolvido por: Gabriel Eduardo de Souza, Pedro Henrique Camargo Ruthes</p>
        </footer>
    </body>
</html>
<?php
    $updateFim = "UPDATE game SET contador =  1, acertos = 0 WHERE id = 1";
    $update3 = mysqli_query($conecta, $updateFim);
    mysqli_close($conecta);
?>