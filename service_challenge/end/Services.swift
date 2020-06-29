import Foundation

public protocol Service {
     var totalEarnings: Float { get }
    mutating func add(payment: Float)
}


private class AmazonService {
    private var balance: Float = 0
    
    fileprivate init() {}
    
    private func orderPlaced(payment: Float) {
        balance += payment
    }
    
    private var earnings: Float {
        return balance
    }
}

private class EtsyService {
    private var earnings: Float = 0
    
    fileprivate init() {}
    
    private func itemSold(profit: Float) {
        earnings += profit
    }
    
    private var totalSold: Float {
        return earnings
    }
}


extension AmazonService: Service {
    public var totalEarnings: Float {
        earnings
    }
    
    public func add(payment: Float) {
        orderPlaced(payment: payment)
    }
}

extension EtsyService: Service {
    
    public var totalEarnings: Float {
        totalSold
    }
    
    public func add(payment: Float) {
        itemSold(profit: payment)
    }
    
}

public func make(serviceType: ServiceType) -> Service {
    switch serviceType {
    case .amazonService:
        return AmazonService()
    case .ecsyService:
        return EtsyService()
    }
}


public enum ServiceType {
    case amazonService
    case ecsyService
}

