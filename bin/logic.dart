class Tree { // fazendo uma arvore
  int val; // seu primeiro valor
  Tree? right; // filha da direita
  Tree? left; // filha da esquerda

  Tree(this.val, [this.left, this.right]); // construtor, esta em [pois pode ser null, nao é obrigatorio]
}

bool sameTree (Tree? p, Tree? q){
  if (p == null && q == null) return true; // se as duas forem nulas

  if (p == null || q == null) return false; // se apenas uma for nula

  if(p.val != q.val) return false; // se n tiverem o mesmo valor 

  return sameTree(p.left, q.left) && sameTree(p.right, q.right); // chamandoa as duas recursivamente pra ver se as filhas sao iguais
}

void main (){
  Tree p = Tree(1,Tree(2), Tree(3)); 
  Tree q = Tree(1, Tree(2),Tree(3));

  Tree p2 = Tree(1);

  print(sameTree(p, q));
   print(sameTree(p, p2));
}