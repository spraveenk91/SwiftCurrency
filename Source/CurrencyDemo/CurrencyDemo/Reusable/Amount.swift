import Foundation

public struct Amount {
    public var price: String
    public var currencyType: CurrencyType

    private var formatter: NumberFormatter {
        let formatter = NumberFormatter.currencyFormatter
        formatter.locale = Locale(countryCode: currencyType.code)

        return formatter
    }

    public init(price: String, currencyType: CurrencyType = .euro) {
        self.price = price
        self.currencyType = currencyType
    }
}
