import Foundation

// Main function
func isPrime(_ num: Int) -> Bool {
    let primeNumbers = [2,3,5,7]

    if num <= 1 { return false }

    if primeNumbers.contains(num) { return true }

    for primeNum in primeNumbers {
        if num % primeNum == 0 { return false }
    }

    return true
}

let thereAreEnoughArguments = CommandLine.arguments.count > 1

if thereAreEnoughArguments {
    let arg1 = CommandLine.arguments[1]
    let number: Int? = Int(arg1)

    if number != nil {
        print(isPrime(number!))
    } else {
        print("❗️No valid argument, \"\(arg1)\" is not a number.")
    }
} else {
    print("❗️Empty argument, you must provide a number.")
}