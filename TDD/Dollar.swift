import Foundation

class Money {
    internal var ammount: Int = 0
    internal var currencyStr: String = ""
    
    init(_ ammount: Int, _ currency: String) {
        self.ammount = ammount
        self.currencyStr = currency
    }
    
    static func ==(lhs: Money, rhs: AnyObject) -> Bool {
        let money = (rhs as! Money)
        return lhs.ammount == money.ammount
            && lhs.currency() == money.currency()
    }
    
    static func dollar(_ ammount: Int) -> Dollar {
        return Dollar(ammount, "USD")
    }
    
    static func franc(_ ammount: Int) -> Franc {
        return Franc(ammount, "CHF")
    }
    
    func times(_ multiplier: Int) -> Money {
        return Money(ammount * multiplier, currencyStr)
    }
    
    func currency() -> String {
        return currencyStr
    }
}

class Dollar: Money {
    
    override init (_ ammount: Int, _ currency: String) {
        super.init(ammount, currency)
    }
}

class Franc: Money {

    override init (_ ammount: Int, _ currency: String) {
        super.init(ammount, currency)
    }
}

