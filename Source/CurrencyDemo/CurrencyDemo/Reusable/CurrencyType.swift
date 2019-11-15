import Foundation

public enum CurrencyType: String {
    case dollar = "USD"
    case euro = "EUR"
    case pound = "GBP"
    case inr = "INR"

    public var code: String { rawValue }
}
