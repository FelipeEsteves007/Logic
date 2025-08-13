void main (){
    int num = 8;
    bool isPrime = true;

    if (num < 1){
        isPrime = false;
    } else {
        for (var i = 2; i < num; i++){
            if (num % i == 0){
                isPrime = false;
                break;
            }
        }
    }

    if(isPrime){
        print("is Prime");
    } else {
        print ("Is not prime");
    }
}