import Foundation

// Helper
func roundNumber(_ value: Float) -> Float {
    return round(value * 10000) / 10000.0 // 4 decimals
}

// Main function
func goldenRatio(num: Float, xTimes: UInt8) {
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

let number = Float(CommandLine.arguments[1])
let times = UInt8(CommandLine.arguments[2])

goldenRatio(num: number!, xTimes: times!)