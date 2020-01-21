/* This is the Tip Calculator written in Dart to be written in Flutter at a later date */
import 'dart:io';


void main() {
  var price = 0.00;
  var percentage = 0.00;

  stdout.write("Enter the service price: ");
  price = double.parse(stdin.readLineSync());

  stdout.write("Enter the percentage: ");
  percentage = double.parse(stdin.readLineSync());

  if (percentage >= 1.00) {
    percentage = percentage / 100;
  }
  var tipAmount = getTipAmount(price, percentage);

  var totAmount = calcTotalAmount(price, tipAmount);

  print("The tip amount is: \$"+tipAmount.toStringAsFixed(2));
  print("The total amount will be: \$"+totAmount.toStringAsFixed(2));
}

getTipAmount(var servPrice, var percent) {
  var tipAmt = servPrice * percent;
  return tipAmt;
}

calcTotalAmount(var servicePrice, var tipAmnt) {
  var totAmnt = servicePrice + tipAmnt;
  return totAmnt;
}
