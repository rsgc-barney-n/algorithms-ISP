// Noah Barney
// Quadratic Formula Solver

import Foundation
import Cocoa

// Print welcome message on it's own line
print("Welcome to the Quadratic Equation Solver")


// Print prompt (but don't go to new line)
print("Are you giving the equation in vertex or standard form? ")

// Get the response
var input = readLine(stripNewline: true)
// create if statement to separate "vertex" form from the rest of the program
if input == "vertex" { print("what is the equation")
    print("for squared terms you must write it like x*x or(x)*(x)")
    //y= a(x-h)^2+k
    var vertex = Float(readLine(stripNewline: true)!)!
    
    
    
    
    
    
    
}
    // use else if to allow the rest of the program to run if the input is "standard"
else if input == "standard" {
    // Say hello, so long as some input was provided
    // Add an extra newline at the start \n
    var actualResponse = ""
    if let response = input{
        print("Hey, you said \(response)")
        actualResponse = response
    }
    print("the actual response is: \(actualResponse)")
    
    
    // ask A B and C values
    //Ask A value
    print("What is your A value?")
    // Read A value
    
    var a  = Float(readLine(stripNewline: true)!)!
    
    
    print("a is \(a)")
    //Ask B value
    print("What is your B value?")
    //Read B value
    var b = Float(readLine(stripNewline: true)!)!
    print("b is \(b)")
    //ask C value
    print("What is your C value?")
    // Read C value
    var c = Float(readLine(stripNewline: true)!)!
    print("c is \(c)")
    
    
    //Implement quadrtic formula
    var x1 = -1*b + sqrt((b*b) - (4*(a)*(c)))
    var x2 = -1*b - sqrt((b*b) - (4*(a)*(c)))
    
    if x1 == Float.NaN {
        print( " There are No Roots")
    }
    print("The Roots are \(x1)")
    print("and \(x2)")
    
}
print("Hope the Quadratic Equation Solver Helped!")



