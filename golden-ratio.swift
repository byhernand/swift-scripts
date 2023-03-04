import Foundation


// Helper
func roundNumber(_ value: Float) -> Float {
    return round(value * 10000) / 10000.0 // 4 decimals
}


// Main function
func goldenRatio(_ num: Float, x xTimes: UInt8) {
    print("🔢 Number \(Int(num))")

    var result = num
    var identation = "⎿"
    let goldenNumber: Float = 1.6180


    for n in 1...xTimes {
        result = roundNumber(result / goldenNumber)
        identation.insert(" ", at: identation.startIndex)

        print("\(identation) \(n)x \(result)")
    }
}


let thereAreEnoughArguments = CommandLine.arguments.count == 3

if thereAreEnoughArguments {
    let arg1: Float? = Float(CommandLine.arguments[1])
    let arg2: UInt8? = UInt8(CommandLine.arguments[2])

    if let number = arg1, let times = arg2 {
        goldenRatio(number, x: times)
    } else {
        print("❗️Arguments must be numbers, try again.")
    }
} else {
    print("❗️The program needs 2 arguments, try again.")
}