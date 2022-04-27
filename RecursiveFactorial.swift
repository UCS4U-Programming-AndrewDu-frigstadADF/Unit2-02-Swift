// learning how to do recursions by calculating a factorial
// Andrew Du-frigstad
// version 1
// since 2022-04-27

import Foundation

// finding the factorial
func findFactorial(number: Float) -> Float {

  // if user inputs 0 then return 1
  if (number == 0) {
    return 1
  }

  // if the user inputs any other positive numver then find its factorial
  else {
    return number * findFactorial(number:number - 1)
  }
}  
  
// user input
print("pick a number to calculate the factorial")
let userNumString = readLine()
let userNumInt = Float(userNumString!) ?? -1

// try catch
while (userNumInt < 0) {
  print("please input a positive number")
  let userNumString = readLine()
  let userNumInt = Float(userNumString!) ?? -1
  break
  }  

// calling and printing the recursion
var foundFactorial = findFactorial(number: userNumInt)
print("the factorial is ", foundFactorial)

