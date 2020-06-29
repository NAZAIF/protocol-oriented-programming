class PaymentController {
    let services: [Service]
    
    init(services: [Service]) {
        self.services = services
    }
    
    func calculateEarnings() -> Float {
        services.reduce(0) { $0 + $1.totalEarnings}
    }
}

var amazonService = make(serviceType: .amazonService)
var etsyService = make(serviceType: .ecsyService)

let controller = PaymentController(services: [amazonService, etsyService])

amazonService.add(payment: 100)
etsyService.add(payment: 25)
amazonService.add(payment: 12.50)

print("Total earned: \(controller.calculateEarnings())")

