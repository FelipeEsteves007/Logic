function fibonacc (num){
    // 0 1 1 2 3 5 8

    let seq = [];

    if (num < 1) return seq;
    if (num >= 1) seq.push(0)
    if (num >= 2) seq.push(1)

    for (let i = 2; i < num; i++){
        let next = seq[i - 1] + seq[i -2]
        seq.push(next)
    }
    return seq
}
console.log(fibonacc(7));
