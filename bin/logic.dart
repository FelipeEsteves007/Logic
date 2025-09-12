class Tree {  // declaramos nossa arvore
int val;
Tree? right;
Tree? left;

Tree(this.val, [this.left, this.right]);
}

bool symmetricTree ( Tree? p, Tree? q){ // passamos seus filhos de cada lado 
   if (p == null && q == null) return true; // se as duas forem null
   if (p == null || q == null) return false;// se uma for null
   if (p.val != q.val) return false; // se o nó tiver valor difente 

  return symmetricTree(p.left, q.right) && symmetricTree(p.right, q.left); // pegamos o lado 
}



void main (){
  Tree root = Tree(1,
    Tree(2, Tree(3), Tree(4)),
    Tree(2, Tree(4), Tree(3))
  );

  var result = symmetricTree(root,root);
  print(result);
}