//
//  main.swift
//  iOS_Functions
//
//  Created by Stannis Baratheon on 27/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import Foundation

print("Hello, World!")

func displayPi ()
{
    print("The value of pi is 3.1415927")
}

displayPi()
displayPi()
displayPi()

func greet(name: String) {

    print("Welcome \(name)")
    
}

greet(name: "David")


func greet2(_ name: String) {
    
    print("Welcome \(name)")
    
}

greet2("David")

func greet3(person name: String) {
    
    print("Welcome \(name)")
    
}

greet3(person: "David")

func averageScoreFor(name: String, score1: Double, score2: Double) {

    let average = (score1 + score2) / 2
    print("\(name)s average score is \(average)")

}

averageScoreFor(name: "Luke" , score1:100 , score2: 120)


func isNumberEven(number: Int) -> Bool {

    var even = false
    if number % 2 == 0 {
        even = true }
    return even

}

let numberToTest = 3
if isNumberEven(number: numberToTest) {
    print("The number is even")
} else {
    print("The number is odd")
}


func countEvenOddNumbers(numbers: [Int]) -> (evenCount: Int, oddCount: Int)
{
    var oddCount = 0 , evenCount = 0
    for number in numbers
    {
        if number % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    return (evenCount, oddCount)
}

let numbersToTest = [ 1, 2, 3, 4, 5, 6, 7, 8, 9]
let total = countEvenOddNumbers(numbers: numbersToTest)
print("Total even is \(total.evenCount) and total odd is \(total.oddCount)")


func addTwoInts (a: Int, b: Int) -> Int
{
    return a + b }
func multiplyTwoInts (a: Int, b: Int) -> Int
{
    return a * b }


func printMathResult (mathFunction: (Int, Int) -> Int  , a: Int , b: Int
    )
{
    print("Result: \(mathFunction(a, b))")
}

printMathResult(mathFunction: addTwoInts, a:3 , b:5)
printMathResult(mathFunction: multiplyTwoInts, a:3 , b:5)

func increaseLives (lives: Int) -> Int
{
    print("We are incrementing the lives variable")
    return lives + 1
}
func decreaseLives (lives: Int) -> Int
{
    print("We are decrementing the lives variable")
    return lives - 1
}

func chooseLivesFunction (decrease: Bool) -> (Int) -> Int
{
    return decrease ? decreaseLives : increaseLives
}

var totalLives = 3
var decrease = false
let changeLives = chooseLivesFunction(decrease: decrease)
totalLives = changeLives(totalLives)
print("We have \(totalLives) lives")
