import Foundation

public enum CurrencyType: String {
    case dollar = "USD"
    case euro = "EUR"
    case pound = "GBP"

    public var code: String { rawValue }
}
