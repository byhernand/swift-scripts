import Foundation

// Main function
func calcPercentage(_ num1: Float, _ num2: Float) -> String {
    let calc = num1 * 100 / num2
    let result = round(calc * 100) / 100.0 // Rounding to 2 decimals
    return "🔢 The number \(num1) is \(result)% of \(num2)"
}

let thereAreEnoughArguments = CommandLine.arguments.count == 3

if thereAreEnoughArguments {
    let arg1 = CommandLine.arguments[1]
    let arg2 = CommandLine.arguments[2]
    let num1: Float? = Float(arg1)
    let num2: Float? = Float(arg2)

    if num1 != nil && num2 != nil {
        print(calcPercentage(num1!, num2!))
    } else {
        let numError = num1 == nil ? arg1 : arg2  
        print("❗️No valid arguments, \"\(numError)\" is not a number.")
    }
} else {
    print("❗️The program needs 2 arguments, try again.")
}