import 'dart:io';

void main (){
  double age = 0;
  String? country = "";

 // enter age
  print ("How old are you?");
  String? inputAge = stdin.readLineSync();
  
  if (inputAge != null){
    if (inputAge!= ""){
      age = double.parse(inputAge);
    }
  }

   print("Where are you lived? (Brazil, EUA, Japan)");
  String? inputCountry = stdin.readLineSync();

  if (inputCountry != null){
    if (inputCountry != ""){
      country = inputCountry;
    }
  }

 // functiom country
  void brazil(){
    if (age >= 18){
      print ("You can drive ");
    } else {
      print ("You can't drive ");
    }
  }

  void eua(){
    if (age >= 16){
      print ("You can drive ");
    } else {
      print ("You can't drive ");
    }
  }

  void japan(){
    if (age >= 20){
      print ("You can drive ");
    } else {
      print ("You can't drive ");
    }
  }


  void nation (){
    switch (country){
      case "Brazil":
      brazil();
      break;

      case "EUA":
      eua();
      break;

      case "Japan":
      japan();
      break;

      default:
        print ("Invalid country");
    }
  }

  nation();

}