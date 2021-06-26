
import UIKit

// 1st Question
var sum1 = 0

for i in 1 ... 999 {
    if(i % 3 == 0){
        sum1 += i
    }
    if((i % 5 == 0) && (i % 3 != 0)){
        sum1 += i
    }
}

print(sum1)


// 2nd Question
var sum2 = 0, num1 = 1, num2 = 1, num3 = 0

while num3 <= 4000000 {
    num3 = num1 + num2
    if(num3 % 2 == 0){
        sum2 += num3
    }
    num1 = num2
    num2 = num3
}

print(sum2)


// 3rd Question
var numberToFactor = 0, primeFactor = 2

print(findLargestPrimeFactor(number: 600851475143))

func findLargestPrimeFactor (number : Int) -> Int {
    numberToFactor = number
    
    while numberToFactor > 1 {
        if (numberToFactor % primeFactor == 0) {
            numberToFactor /= primeFactor
        }else {
            primeFactor += 1
        }
    }
    return primeFactor
}


// 4th Question
var result = 0

palindromeNumber()

func palindromeNumber() {
    for number1 in stride (from: 999, to: 100, by: -1){
        for number2 in stride(from: 999, to: 100, by: -1) {
            
            let number = number1 * number2
            let numberInStr = String(number)
            let reverseNumberInStr = String(numberInStr.reversed())
            
            if (numberInStr == reverseNumberInStr) {
                if (result < number) {
                    result = number
                    break
                }
            }
        }
    }
    print(result)
}


// 5th Question
var result5 = 1;
print(leastCommonMultiple(number5: 20))

func leastCommonMultiple(number5: Int) -> Int{
    for i in 1 ... number5 {
        result5 = (result5 * i) / (greatestCommonDivisor(a: result5, b: i))
    }
    return result5
}

func greatestCommonDivisor(a: Int, b: Int) -> Int{
    if(a % b != 0){
        return greatestCommonDivisor(a: b, b: a % b)
    }else{
        return b
    }
}

