import Foundation


func makeReadableNumber(_ num: Int) {
    let numbers = String(num).reversed()
    let commaPosition = 3
    var i = 1

    let addingCommas = numbers.map {
        if i == commaPosition && $0 != numbers.last {
            i = 1
            return "\($0),"
        } else {
            i += 1
            return "\($0)"
        }
    }

    let readableNum = addingCommas.joined().reversed()

    print(String(readableNum))
}


let userInput = Int(CommandLine.arguments[1])

if userInput != nil {
    makeReadableNumber(userInput!)
} else {
    print("Invalid input")
}