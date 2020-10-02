
import 'dart:io';


void main() {
  const double Leaded = 45.75;
  const double Unleaded = 43.18;
  const double Diesel = 37.12;
  const double BioDiesel = 48.03;

  var sum,type,payment;
  String gas = '', vote;
  int liters,number,number2,amount;

  print('#############################');
  print('# --Peter Gasoline Station--#');
  print('# Select Fuel Type [ 1 - 4 ]#');
  print('#   1. Leaded               #');
  print('#   2. UnLeaded             #');
  print('#   3. Diesel               #');
  print('#   4. Bio-Diesel           #');
  print('#############################');
  print('Enter number: ');
  number = int.parse(stdin.readLineSync());
  if(number == 1){
    print('You selected Leaded gasoline');
    print('How many liters of Leaded gasoline you want to buy? ');
    liters = int.parse(stdin.readLineSync());
    sum = (liters*Leaded);
    gas = 'Leaded';
    type = Leaded;
  }else if(number == 2){
    print('You selected UnLeaded gasoline');
    print('How many liters of UnLeaded gasoline you want to buy? ');
    liters = int.parse(stdin.readLineSync());
    sum = (liters*Unleaded);
    gas = 'UnLeaded';
    type =Unleaded;
  }else if(number == 3){
    print('You selected Diesel gasoline');
    print('How many liters of Diesel gasoline you want to buy? ');
    liters = int.parse(stdin.readLineSync());
    sum = (liters*Diesel);
    gas = 'Diesel';
    type = Diesel;
  }else if(number == 4){
    print('You selected Bio-Diesel gasoline');
    print('How many liters of Bio-Diesel gasoline you want to buy? ');
    liters = int.parse(stdin.readLineSync());
    sum = (liters*BioDiesel);
    gas = 'Bio-Diesel';
    type = BioDiesel;
  }else{
    print('Invalid Input! numbers 1 up to 4 only!!.');
    return main();
  }

  print('###################################');
  print('#                                 #');
  print('#Select type of purchase:[ 1 - 2 ]#');
  print('#                                 #');
  print('#           1. by Cash            #');
  print('#           2. by Liter           #');
  print('#                                 #');
  print('###################################');
  number2 = int.parse(stdin.readLineSync());
  if(number2 == 1){
    print('Payment type by Cash');
    print('Type of gas $gas $type per liter');
    print('Total liters acquired: $liters');
    print('Total amount to be paid $type x $liters = $sum');
    print('THANKS FOR BUYING!.');

    print('Do you want to purchase again?[ yes - no ]');
    vote = stdin.readLineSync();
    if(vote == 'yes'){
        return main();
    }else{
        print('Have a good day!');
    }
    
  }else if(number2 == 2){
    print('Payment type by Liters');
    print('Type of gas $gas $type per liter');
    print('Total amount to be paid $type x $liters = $sum');

    print('Enter Amount Cash : ');
    amount = int.parse(stdin.readLineSync());
    if(amount<sum){
      print('Invalid Cash Amount Enter again');
      amount = int.parse(stdin.readLineSync());
    }
    payment = (amount-sum);
    print('Change : $payment');
    print('THANKS FOR BUYING!.');

    print('Do you want to purchase again?[ yes - no ]');
    vote = stdin.readLineSync();
    if(vote == 'yes'){
        return main();
    }else{
        print('Have a good day!');
    }
  }
}
