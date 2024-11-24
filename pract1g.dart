bool isPrime(N){
  for(var i =2; i<=2/i;i++){
    if(N % i==0) {
      return false;
    }
  }
  return true;
}
void main(){
  print('enter N');
  int N=12;
  if(isPrime(N)){
    print('$N is a prime number');
  }else{
    print('$N is a not prime number');
  }
}