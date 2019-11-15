import Foundation

public struct Amount {
    let price: String
    let currencyType: CurrencyType

    private var formatter: NumberFormatter {
        let formatter = NumberFormatter.currencyFormatter
        formatter.locale = Locale(countryCode: currencyType.code)

        return formatter
    }

    public init(price: String, currencyType: CurrencyType) {
        self.price = price
        self.currencyType = currencyType
    }
}
