import Foundation


// Capturing closure
func goldenRatio(_ number: Float) -> () -> Float {
    var num = number
    let goldenNumber: Float = 1.6180

    func roundNumber(_ value: Float) -> Float {
        return round(value * 10000) / 10000.0 // 4 decimals
    }

    func makeCalc() -> Float {
        num /= goldenNumber
        return roundNumber(num)
    }

    return makeCalc
}


// Error Handling
let thereAreEnoughArguments = CommandLine.arguments.count == 3

if thereAreEnoughArguments {
    let arg1: Float? = Float(CommandLine.arguments[1])
    let arg2: UInt8? = UInt8(CommandLine.arguments[2])

    if let number = arg1, let times = arg2 {
        let calcGoldenRatio = goldenRatio(number)
        var identation = " ⎿"

        print("🔢 Number \(Int(number))")

        for nTimes in 1...times {
            print("\(identation) \(nTimes)x \(calcGoldenRatio())")
            identation.insert(" ", at: identation.startIndex)
        }
    } else {
        print("❗️Arguments must be numbers, try again.")
    }
} else {
    print("❗️The program needs 2 arguments, try again.")
}