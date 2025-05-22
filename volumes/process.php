<?php 
$message = $_POST['mensagem'] ?? null;

$files = scandir("./mensagens");
$num_files = count($files) -2;
$filesName = "msg -{$num_files}.txt";

$file = fopen("./mensagens/$filesName", "x");
if ($file) {
    fwrite($file, $message);
    fclose($file);
    echo "Mensagem enviada com sucesso!";
} else {
    echo "Erro ao enviar a mensagem.";
}  




?>
