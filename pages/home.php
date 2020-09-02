<div class="base-home">
		<!-- com tres produtos-->	
				
				<div class="cx-base-home">

					<?php 
					foreach($site->getProdutosHome(6) as $produto){
					?>
						<div class="caixa-prod-home">
							<div class="cx-img-prod">
								<a href="<?php echo PATH.'/produto/'.$produto['slug'];?>" class="efeito">
									<img src="produtos/<?php echo $produto['img_padrao'];?>" width="226" height="157">
								</a>
								<div class="preco">
									<h2><a href="<?php echo PATH.'/produto/'.$produto['slug'];?>"><?php echo $produto['titulo'];?></a></h2>								
									<div class="cx-botoes">
										<h3>R$ <?php echo number_format($produto['valor_atual'], 2,',','.')?> </h3>
										<a href="<?php echo PATH.'/produto/'.$produto['slug'];?>" class="bot-comprar">Comprar</a>
									</div>
								</div>
							</div>					
							
						</div><!--produto-->
						<?php 
						}
						?>								
					</div>
					
					
		</div>
		</div>