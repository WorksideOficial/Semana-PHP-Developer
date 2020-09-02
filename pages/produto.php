<?php
$pega_slug = strip_tags(trim($parametros[1]));
$selecinarProduto = "SELECT * FROM `loja_produtos` WHERE slug = ?";
$executar = BD::conn()->prepare($selecinarProduto);
$executar->execute(array($pega_slug));
$fetch_produto = $executar->fetchAll();

foreach($fetch_produto as $Produto);
?>
<div class="base-home">
		<!-- com tres produtos-->	
				
				<div class="cx-base-home">
				
					<h1><span>Descricao &gt;&gt; <?php echo $Produto['titulo'];?></span></h1>

				
						<div class="caixa-prod-home">
							<div class="cx-img-prod">
								<a href="#" class="efeito">
									<img class="img" src="<?php echo PATH;?>/produtos/<?php echo $Produto['img_padrao'];?>" width="226" height="157">
								</a>
								<div class="preco">
									<h2><a href="#"><?php echo $Produto['titulo'];?></a></h2>								
									<div class="cx-botoes">
										<h3>R$ <?php echo number_format($Produto['valor_atual'], 2,',','.')?> </h3>
										
										<form action="<?php echo PATH.'/carrinho/add/'.$Produto['id'];?>" method="post" enctype="multipart/form-data">
											<input type="hidden" name="qtd" value="1" size="3">
											<input type="hidden" name="id" value="<?php echo $Produto['id'];?>">
											<input type="hidden" name="acao" value="add">
											<input type="submit" name="comprar" value="Adicionar ao carrinho" class="bot-comprar">
										</form>
									</div>
								</div>
							</div>					
							
						</div><!--produto-->
						<div class="cx-mr">
							<header>
									<div class="caixa">
										<p><?php echo html_entity_decode($Produto['descricao']);?></p>
								 </div>       
							</header>
						</div>	
					</div>
					
						<?php
							$catId = $Produto['categoria'];
							$Realacionados = "SELECT * FROM `loja_produtos` WHERE categoria = $catId";
							$Rel = BD::conn()->prepare($Realacionados);
							$Rel->execute();

							if($Rel->rowCount() == 0){
								echo'<p>NÃO ENCONTRAMOS RESULTADOS</p>';
							}else{
								while($prodRel = $Rel->fetchObject()){
						?>
						<div class="caixa-prod-home">
							<div class="cx-img-prod">
								<a href="#" class="efeito">
									<img class="img" src="<?php echo PATH.'/produtos/'.$prodRel->img_padrao;?>">
								</a>
								<div class="preco">
									<h2><a href="#"><?php echo $prodRel->titulo;?></a></h2>								
									<div class="cx-botoes">
										<h3>R$ <?php echo number_format($prodRel->valor_atual, 2,',','.')?> </h3>
										<a href="#" class="bot-comprar">Comprar</a>
									</div>
								</div>
							</div>					
							
						</div><!--produto-->
						<?php
							}}
						?>		
		</div>