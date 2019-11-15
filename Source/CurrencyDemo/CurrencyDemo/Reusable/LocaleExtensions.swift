import Foundation

public extension Locale {
    init(countryCode: String) {
        let countryCodeComponent = [NSLocale.Key.countryCode.rawValue: countryCode]
        let localeIdentifier = NSLocale.localeIdentifier(fromComponents: countryCodeComponent)

        self.init(identifier: localeIdentifier)
    }
}
