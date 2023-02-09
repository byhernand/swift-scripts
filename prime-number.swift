import Foundation

func isPrime(_ num: Int) -> Bool {
    let primeNumbers = [2,3,5,7]

    if num <= 1 { return false }

    if primeNumbers.contains(num) { return true }

    for primeNum in primeNumbers {
        if num % primeNum == 0 { return false }
    }

    return true
}

let number = Int(CommandLine.arguments[1])

print(isPrime(number!))