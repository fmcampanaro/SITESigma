<?php
// include do footer
include_once './includes/_banco.php';
include_once './includes/_head.php';
include_once './includes/_header.php';
$id = $_GET['id'];
?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1><?php echo $produtos[$id]["nome"]?></h1>
            <p><?php echo $produtos[$id]["descricao"]?></p>
            <img src="./content/<?php echo $produtos[$id]["imagem"] ?>" alt="">
            <h4>R$ <?php echo $produtos[$id]["preco"]?></h1>
        </div>
    </div>
</div>
<div class="row">
    <div class="col"><a class="btn btn-primary" href="#" role="button">Comprar</a></button></div>
    <div class="col"><a class="btn btn-primary" href="./index.php" role="button">Voltar</a></div>
</div>
<?php
// include do footer
include_once './includes/_footer.php';
?>