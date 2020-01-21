//This is a version of FizzBuzz with Functions
void main(){
  for (var i = 0; i <= 100; i++){
    print(FizzBuzz(i));
  }
}

String FizzBuzz(var num){
   if (num % 3 == 0 && num % 5 == 0)
    {
      return "FizzBuzz";
    } else if (num % 5 == 0){
      return "Buzz"; 
    } else if (num % 3 == 0){
      return "Fizz";
    } else {
      return num.toString();
    }
}