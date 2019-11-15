import Foundation

public struct Amount {
    let price: String
    let currencyType: CurrencyType

    private static var currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2

        return formatter
    }()

    private var formatter: NumberFormatter {
        let formatter = Amount.currencyFormatter
        formatter.locale = Locale(countryCode: currencyType.code)

        return formatter
    }

    public init(price: String, currencyType: CurrencyType) {
        self.price = price
        self.currencyType = currencyType
    }
}
