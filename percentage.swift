import Foundation

// Helper
func roundNumber(_ value: Float) -> Float {
    return round(value * 100) / 100.0 // 2 decimals
}

// Main function
func calcPercentage(_ num1: Float, _ num2: Float) -> String {
    let calc = num1 * 100 / num2
    let result = roundNumber(calc) 
    return "The number \(num1) is \(result)% of \(num2)"
}

let number1 = Float(CommandLine.arguments[1])
let number2 = Float(CommandLine.arguments[2])

print(calcPercentage(number1!, number2!))