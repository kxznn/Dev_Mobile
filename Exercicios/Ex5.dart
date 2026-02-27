// Exercicío 5 - Média das notas 

import 'dart:io';

void main (){
  double n1, n2, res;
  print("Digite sua primeira nota: ");
  n1 = double.parse(stdin.readLineSync()!);
  print("Digite sua segunda nota:");
  n2 = double.parse(stdin.readLineSync()!);
  
  // Calculo da média 
  res = (n1 + n2 ) / 2;
  print("Nota 1: $n1");
  print("Nota 2: $n2");
  print("Média das notas: $res");

  if (res>=7) {
    print("Você foi Aprovado!");
  }
  else if (res>=4) {
    print("Você ficou de exame !");
  }
  else {
    print("Você foi Reprovado");
  }
}