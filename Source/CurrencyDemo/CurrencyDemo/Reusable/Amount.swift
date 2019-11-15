import Foundation

public struct Amount {
    let price: String
    let currencyType: CurrencyType

    public init(price: String, currencyType: CurrencyType) {
        self.price = price
        self.currencyType = currencyType
    }
}
