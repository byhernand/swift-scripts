import Foundation


func makeReadableNumber(_ num: Int) {
    let numbers = String(num).reversed()
    let commaPosition = 3
    var numPosition = 1
    var numWithCommas = String()

    for (idx, number) in numbers.enumerated() {
        let isLastItem = idx == (numbers.count - 1)
        let needToAddComma = numPosition == commaPosition

        if isLastItem {
            numWithCommas += "\(number)"
            break
        } else {
            numWithCommas += needToAddComma ? "\(number)," : "\(number)"
            numPosition += needToAddComma ? -2 : 1
        }
    }

    let readableNum = numWithCommas.reversed()

    print(String(readableNum))
}


let thereAreArguments = CommandLine.arguments.count > 1

if thereAreArguments {
    let userInput = Int(CommandLine.arguments[1])

    if userInput != nil  {
        makeReadableNumber(userInput!)
    } else {
        print("❌ No valid number, try again.")
    }
} else {
    print("❌ There's no enough arguments, try again.")
}