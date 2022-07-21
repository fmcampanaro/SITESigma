<?php
include_once 'includes/_dados.php';

foreach ($produtos as $key => $value){
    $nome = $value["nome"];
    $desc = $value["descricao"];
    $img = $value["imagem"];
    $rs = str_replace("," , ".", $value["preco"]);
    echo "INSERT INTO `produtos` (`ProdutoID`, `Nome`, `Descricao`, `Imagem`, `Preco`, `Categoria`, `Ativo`) VALUES (NULL, '$nome', '$desc', '$img', '$rs', '1', '1');<br>";
};

?>