<?php

class Site extends BD{
  private $conexao;

  public function getProdutosHome($limit = false)
  {
    if($limit == false)
    {
      $query = "SELECT * FROM `loja_produtos` ORDER BY id DESC";
    }else{
      $query = "SELECT * FROM `loja_produtos` ORDER BY id DESC LIMIT $limit";
    }
    return self::conn()->query($query);
  }

}