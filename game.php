<?php
    require_once("conexao.php");
?>
<?php
    $questoes1 = "SELECT * FROM game WHERE id = 1";
    $chute = mysqli_query($conecta, $questoes1);
    $dados = mysqli_fetch_assoc($chute);
    $cont = $dados['contador'];

    if($cont > 20){
        header('Location: acertos.php');
    }    

    $questoes = "SELECT * FROM game WHERE id = $cont";
    $pegarDados = mysqli_query($conecta, $questoes);
    $row = mysqli_fetch_assoc($pegarDados);
    if(!$pegarDados){
        die("Falha na Consulta ao Banco");
    } 
    
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <title>Software Engineer Game</title>
    </head>
    <body class="flex-box">
        <header class="header">
            <h1>SOFTWARE ENGINEER GAME</h1>
        </header>
            <main class="flex-box">
                <form action="verificar.php" class="border-body form" method="post">
                    <div class='center'>
                        <p class="pergunta"><?php echo $row['id']?>. <?php echo $row['questao']?></p>
                        <input type="radio" name="alternativa" id="a" value="a" required="">
                        <label for="a" class="alternativa"><?php echo $row['a']?></label><br><br>
                        <input type="radio" name="alternativa" id="b" value="b" required="">
                        <label for="b" class="alternativa"><?php echo $row['b']?></label><br><br>
                        <input type="radio" name="alternativa" id="c" value="c"  required="">
                        <label for="c" class="alternativa"><?php echo $row['c']?></label><br><br>
                        <input type="radio" name="alternativa" id="d" value="d" required="">
                        <label for="d" class="alternativa"><?php echo $row['d']?></label><br><br>
                        <input type="hidden" value="<?php echo $row['resposta'] ?>" name="resposta">
                    </div>
                    <input type="submit" value="Responder" class="button-form" name="button">
                    <h1>
                        <span class="tot_acertos"><?php echo $dados['acertos']?>/20</span>
                    </h1>
                </form>
            </main>
        <footer>
            <p class="autores">&copy Desenvolvido por: Gabriel Eduardo de Souza, Pedro Henrique Camargo Ruthes</p>
        </footer>
    </body>
</html>
<?php
    mysqli_close($conecta);
?>