//: Playground - noun: a place where people can play

import UIKit

for n in 1...100
{
    if(n>=30 && n<=40){
        print("\(n) Viva Swift!!!")
    }
    else if(n % 5 == 0){
        print ("\(n) bingo!")
    }
    else if (n % 2 == 0){
        print ("\(n) es par")
    }
    else{
        print ("\(n) es impar")
    }
}