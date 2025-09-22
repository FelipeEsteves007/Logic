class Tree {
  int value;
  Tree? right;
  Tree? left;

  Tree(this.value, {this.left, this.right});
}

bool sameTree (Tree? p, Tree? q){
  if (p == null && q == null) return true;

  if (p == null || q == null) return false;

  if (p.value != q.value) return false;

  return sameTree(p.left, q.left) && sameTree(p.right, q.right);
}



void main (){
  var t1 = Tree(1, left: Tree(2), right: Tree(3));
  var t2 = Tree(1, left: Tree(2), right: Tree(3));
  var t3 = Tree(1, left: Tree(2));

  print(sameTree(t1, t2));
  print(sameTree(t1, t3));
}