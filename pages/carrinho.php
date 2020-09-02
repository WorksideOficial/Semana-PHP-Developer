<?php
session_start();
$carrinho = new Carrinho();

if(isset($_POST['acao']) && $_POST['acao'] == 'add'){
  $id_produto = (int)$_POST['id'];
  $qtd = (int)$_POST['qtd'];
  $forma = (isset($_POST['forma'])) ? $_POST['forma'] : null;
  
  
  $carrinho->adicionarProduto($id_produto, $qtd, $forma);
  if(isset($_POST['atualizar'])){
    $carrinho->alterarQtd($indice, $valor);
  }
}

if(isset($parametros[1]) && $parametros[1] == 'del' && isset($parametros[2])){
  $id = $parametros[2];
  $carrinho->excluirProduto($id);
}
  $produtos = $carrinho->listarProdutos();
  $total = $carrinho->valorTotal();
?>
<div class="base-carrinho">
	<table class="" border="1" cellppading="0" cellspacing="0">
      <caption>Carrinho de compras</caption>
      <thead>
        <tr>
          <td>Produto</td>
          <td>Quantidade</td>
          <td>Preço</td>
          <td>Subtotal</td>
          <td>Remover</td>
        </tr>
      </thead>
      <form action="" method="post">
        <tfoot>
          <tr>
            <td colspan="4">Valor Total:</td>
            <td>R$ <?php echo number_format($total, 2, ',','.');?></td>
          </tr>
          <tr>
            <td><input class="atualizar" type="submit" name="atualizar" value="Atualizar"></td>
            <td><a class="comprar" href="index.php">Continuar Comprando</a></td>
          </tr>
        </tfoot>

        <tbody>
          <?php
          $contarProdutos = count($produtos);
          if($contarProdutos == 0){
            echo'<tr><td colspan="5">Não existem produtos listados</td></tr>';
          }else{
            foreach($produtos as $indice => $produto){
          ?>
          <tr>
            <td><?php echo $produto['titulo'];?></td>
            <td><input type="text" size="3" name="qtd[<?php echo $indice;?>]" value="3"></td>
            <td>R$ <?php echo number_format($produto['valor_atual'], 2, ',','.');?></td>
            <td>R$ <?php echo number_format($produto['subtotal'], 2, ',','.');?></td>
            <td><a class="excluir" href="<?php echo PATH.'/carrinho/del/'.$indice;?>">Remover</a></td>
          </tr>
           <?php
            }
            }
           ?>
         
        </tbody>
      </form>

		</table>			
	</div>