

import Foundation

class Sketch {
    
    var a = 1
    var b = 6
    var c = 9
    

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Declare any properties you need for your sketch below this comment, but before init()
    var x = 0
    var s = 1

    // This runs once, equivalent to setup() in Processing
    init() {
        
        b = b*b
        
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 800)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 10000

        
        
        // Print welcome message on it's own line
        print("Welcome.")
        
        
        // Print prompt (but don't go to new line)
        print("Are you giving the equation in vertex or standard form? ")
        
        // Get the user's name
        var equation = readLine(stripNewline: true)
        
        //Ask for the equation
        if let name = equation {
            print("\nWhat is the equation?, \(name)")
        }
        
        
        // Ask about food preferences
        var validInput : Bool          // Status of input
        repeat {
            
            // Show prompts
            print("\nWhat what are the a, b and, c inputs?")
            print("A - Cereal")
            print("B - Fruit")
            print("C - Vegetables")
            print("Select your favourite (A/B/C/Quit): ", terminator: "")
            
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

    
        var x1 = 5
        var x2 = 7
        
        
        // print output to the command line
        print("The roots are \(x1) and \(x2)")
    }
    
    /* Runs repeatedly, equivalent to draw() in Processing
    func draw() {
                
        // Horizontal position of circle
        x = x + s
        
        // Bounce when hitting wall
        if (x > canvas.width || x < 0) {
            s *= -1
        }
        
        // Clear the background
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 5, alpha: 10)
        canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        
        // Draw a circle that moves across the screen
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: Float(canvas.frameCount), saturation: 80, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: canvas.height / 2, width: 500, height: 500)
        
    }
    
}