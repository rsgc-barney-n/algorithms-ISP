// Noah Barney
//  main.swift
//  basic-command-line
//
//  Created by Russell Gordon on 2015-12-16.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

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

var a  = Int(readLine(stripNewline: true)!)!


print("a is \(a)")
//Ask B value
print("What is your B value?")
//Read B value
var b = Int (readLine(stripNewline: true)!)!
print("b is \(b)")
//ask C value
print("What is your C value?")
// Read C value
var c = Int (readLine(stripNewline: true)!)!
print("c is \(c)")
var validInput : Bool          // Status of input
repeat {
    
    // Show prompts
    
    var A = readLine(stripNewline: true)
    var B = readLine(stripNewline: true)
    var C = readLine(stripNewline: true)
    //print("Select your favourite (A/B/C/Quit): ", terminator: "")
    
    // Get the user's input
    var givenFoodPreference = readLine(stripNewline: true)
    
    // Assume valid input
    validInput = true
    
    // Interpret the result, if one was given
    if let foodPreference = givenFoodPreference {
        
        // Add a blank line to separate response from input block
        print("")
        
        switch foodPreference {
            
        case "A", "a":
            print("Awesome, I love Cheerios!")
            
        case "B", "b":
            print("My favourite is mango.")
            
        case "C", "c":
            print("Have you tried baked eggplant? Delectable!")
            
        case "Quit", "QUIT", "quit":
            print("Bye.")
            
        default:
            print("Sorry, I didn't get that.")
            validInput = false
        }
        
    }
    
    
} while validInput == false

// Print one additional blank line to separate from exit code message that is automatically displayed
print("")
