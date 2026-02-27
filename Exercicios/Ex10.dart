// Exercicío 10 - Calculadora com 4 valores

// Exemplo switch case
import 'dart:io';
void main(){
  double n1,n2,n3,n4,res;
  var op ;
  var msg ;
  do {

  
  print('Operações:');
  print('+: soma');
  print('-: subtracao');
  print('*: multiplicação');
  print('/: dividir');
  print('Digite o numero n1: ');
  n1 = double.parse(stdin.readLineSync()!);
  print('Digite o numero n2: ');
  n2 = double.parse(stdin.readLineSync()!);
  print('Digite o numero n3: ');
  n3 = double.parse(stdin.readLineSync()!);
  print('Digite o numero n4: ');
  n4 = double.parse(stdin.readLineSync()!);
  print('Escolha a operacao');
  op = stdin.readLineSync();

  switch(op){
    case '+':
    res = n1+n2+n3+n4;
    print('Resultado: $res');
    break;

    case '-':
    res = n1-n2-n3-n4;
    print('Resultado: $res');
    break;

    case '*':
    res = n1*n2*n3*n4;
    print('Resultado: $res');
    break;

    case '/': 
    if(n2!=0 || n3!=0 || n4!=0){
      res= n1/n2/n3/n4;
      print('Resultado: $res');
    }
    else{
      print('Divisão por zero tende ao infinito');
      print('Digite outro valor: ');
      n2 = double.parse(stdin.readLineSync()!);
      if(n2!=0 || n3!=0 || n4!=0){
        res= n1/n2/n3/n4;
        print('Resultado: $res');
      }
    }
    break;
    default:
    print('Operacao invalida');
  }

print('Deseja continuar ? ');
msg = stdin.readLineSync();
}while(msg =='s'|| msg=='S'|| msg=='sim');
print('Finalizando calculadora');
}