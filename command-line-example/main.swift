// Noah Barney
//  main.swift
//  basic-command-line
//
//  Created by Russell Gordon on 2015-12-16.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation
import Cocoa

// Print welcome message on it's own line
print("Welcome to the quadratic equation solver!")


// Print prompt (but don't go to new line)
print("Are you giving the equation in vertex or standard form? ")

// Get the response
var input = readLine(stripNewline: true)

// Say hello, so long as some input was provided
// Add an extra newline at the start     \n
var actualResponse = ""
if let response = input {
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
print("The Roots are \(x1)")
print("and \(x2)")




