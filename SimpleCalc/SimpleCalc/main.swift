//
//  main.swift
//  SimpleCalc
//
//  Created by Vishesh Sood on 4/3/17.
//  Copyright © 2017 Vishesh Sood. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

var complete = false;

while !complete {
    
    let userInput = String( readLine(strippingNewline: true)! )
    
    if userInput!.contains("count"){
        var countValues = userInput?.components(separatedBy: " ")
        print("Result: \(countValues!.count - 1)")
    } else if userInput!.contains("fact") {
        var intToFactorial = userInput?.components(separatedBy: " ")
        if (intToFactorial!.count > 2) {
            print("You entered too many values to factorial!")
        } else {
            var total = 1;
            for i in 1...Int(intToFactorial![0])!{
                total *= i
            }
            print("Result: \(total)")
        }
    } else if userInput!.contains("avg") {
        var valuesToAverage = userInput?.components(separatedBy: " ")
        var symbol = valuesToAverage!.popLast()
        var sum = 0;
        for i in 0...valuesToAverage!.count - 1{
            sum += Int(valuesToAverage![i])!
        }
        print("Result: \(Double(sum) / Double(valuesToAverage!.count))")
    } else {
        let symbol = String( readLine(strippingNewline: true)! )
        let secondValue = Double( readLine(strippingNewline: true)! )
        
        if symbol == "+"  {
            let result = Double(userInput!)! + secondValue!
            print("Result: \(result)")
        } else if symbol == "-" {
            let result = Double(userInput!)! - secondValue!
            print("Result: \(result)")
        } else if symbol == "*" {
            let result = Double(userInput!)! * secondValue!
            print("Result: \(result)")
        } else if symbol == "/" {
            let result = Double(userInput!)! / secondValue!
            print("Result: \(result)")
        } else if symbol == "%" {
            let result = Double(userInput!)!.truncatingRemainder(dividingBy: secondValue!)
            print("Result: \(result)")
        } else {
            print("Please enter a valid operand such as +, -, *, /, %, count, avg or fact")
        }
    }
    
}
