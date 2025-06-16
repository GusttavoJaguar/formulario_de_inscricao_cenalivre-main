<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = htmlspecialchars($_POST['nome']);
    $alcunha = htmlspecialchars($_POST['alcunha']);
    $contato = htmlspecialchars($_POST['contato']);
    $regiao = htmlspecialchars($_POST['regiao']);
    $data = htmlspecialchars($_POST['data']);
    $imagem = htmlspecialchars($_POST["imagem"]);

    $to = "cenalivreeventos@gmail.com";
    $subject = "Inscrito para a batalha";
    $body = "Nome: $nome\n";
    $body .= "Alcunha: $alcunha\n";
    $body .= "Contato: $contato\n";
    $body .= "Regiao: $regiao\n";
    $body .= "Data: $data\n";
    $body .= "Imagem: $imagem\n";
    $headers = "From: $email\r\n";
    $headers .= "Reply-To: $email\r\n";

    if (mail($to, $subject, $body, $headers)) {
        header("Location: success.html");
        exit();
    } else {
        header("Location: error.html");
        exit();
    }
} else {
    echo "Método de requisição inválido.";
}
?>
