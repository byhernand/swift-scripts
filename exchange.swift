import Foundation

struct Money {
    var quantity : Double
    var exchangeRate : Double
    var inDollar : Double { quantity / exchangeRate }
}

if CommandLine.arguments.count > 2 {
    let arg1: Double? = Double(CommandLine.arguments[1])
    let arg2: Double? = Double(CommandLine.arguments[2])

    if arg1 != nil && arg2 != nil {
        let myWallet = Money(quantity: arg1!, exchangeRate: arg2!)
        print("$\(myWallet.inDollar)")
    } else {
        print("❌ No valid arguments")
    }
} else {
    print("❌ Insufficient arguments")
}