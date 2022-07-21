<?php
// include do footer
include_once './includes/_banco.php';
include_once './includes/_head.php';
include_once './includes/_header.php';
?>


<div class="container">
    <h1>Ofertas</h1>
    <div class="row mt-5">
        <?php

            $sql = "SELECT * FROM produtos WHERE ativo = 1 LIMIT 3";

            $exec = mysqli_query($conn ,$sql);

            $numProdutos = mysqli_num_rows($exec);

            while($dados = mysqli_fetch_assoc($exec)){

            


        ?>
        <div class="card m-3" style="width: 18rem;">
            <img src="./content/<?php echo $dados["Imagem"]; ?>" class="card-img-top" alt="...">
            <h5 class="card-title"><?php echo $dados["Nome"];  ?></h5>
                <p class="card-text"><?php echo $dados["Descricao"]; ?></p>
                <a href="produto-detalhe.php?id=<?php echo $dados["ProdutoID"] ?>" class="btn btn-primary">Ver</a>
            <div class="card-body">
                
            </div>
        </div>
        <?php
        }
        ?>
    </div>
</div>

<?php

// include do footer
include_once './includes/_footer.php';
?>