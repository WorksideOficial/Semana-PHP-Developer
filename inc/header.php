<?php
include_once"Config.php";
function __autoload($classe){
	require_once'classes/'.$classe.'.php';
}
BD::conn();
$site = new Site();

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PHP Developer</title>

<link href="<?php echo PATH;?>/css/reset" rel="stylesheet" type="text/css">
<link href="<?php echo PATH;?>/css/estilo.css" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:700' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="base-topo">
<div class="mn-topo">
	<div class="conteudo">
		<div class="contato-topo">
			<a href="#" title="logo loja virtual" class="logo"><H1>loja virtual</H1></a>
					
				<ul class="menu-topo">
					<li><a href="<?php echo PATH;?>">HOME	</a></li>    
					<li><a href="#">Sobre a loja	</a></li>
					<li><a href="#">Contato	</a></li>
					<li><a href="#">Cadastrar	</a></li>
					<li><a href="#">Login</a></li>         			
				</ul>
		</div>
	</div>
</div>

</div><!--topo-->	