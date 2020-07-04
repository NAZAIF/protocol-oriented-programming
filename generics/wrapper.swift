import Foundation

struct Wrapper<T: Equatable>{
    var storage: T
    
    init(_ value: T) {
        storage = value
    }
}

let piWrapped = Wrapper(Double.pi)
print(piWrapped.storage)
let stringWrapped = Wrapper("POPP")
print(stringWrapped.storage)
let dateWrapped = Wrapper(Date())
print(dateWrapped.storage)
