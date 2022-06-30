<?php
// include do footer
include_once './includes/_dados.php';
include_once './includes/_head.php';
include_once './includes/_header.php';


?>

<h1>Contato</h1>
<div id="contato_info">
    
</div>
<form action="./contato.php" method="post">
    <ul>
        <li>
            <label for="txtNome">Nome Completo</label>
            <input type="text" name="txtNome" id="txtNome">
        </li>
        <li>
            <label for="txtEmail">E-mail</label>
            <input type="text" name="txtEmail" id="txtEmail">
        </li>
        <li>
            <label for="txtTel">Telefone</label>
            <input type="text" name="txtTel" id="txtTel">
        </li>
        <li>
            <label for="txtMensagem">Mensagem</label>
            <textarea name="txtMensagem" id="txtMensagem" cols="30" rows="10"></textarea>
        </li>
    </ul>
    <input type="submit" value="Cadastrar">
</form>


<?php
if ( isset($_POST["txtNome"]) && !is_null($_POST["txtTel"]) ){
    $nome = strtoupper($_POST["txtNome"]);
    $mensagem = strtoupper($_POST["txtMensagem"]);
    $tel = strtoupper($_POST["txtTel"]);
    $email = strtoupper($_POST["txtEmail"]);
    echo $nome ."<br>";
    echo $tel ."<br>";
    echo $email ."<br>";
    echo $mensagem ."<br>";
}







// include do footer
include_once './includes/_footer.php';
?>