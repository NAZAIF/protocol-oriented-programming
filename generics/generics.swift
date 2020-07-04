import Foundation

func equals<T: Equatable>(lhs: T, rhs: T) -> Bool {
    return lhs == rhs
}

print(equals(lhs: 3, rhs: 4))

let a: Double = 3.4
let b: Double = 3.4

print(equals(lhs: a, rhs: b))

let c: Float = 3.41
let d: Float = 3.4

print(equals(lhs: c, rhs: d))

print(equals(lhs: Double.pi, rhs: 3.14))

print(equals(lhs: "abcd", rhs: "bcda"))

let d1 = Data(repeating: 0, count: 10)
let d2 = Data(repeating: 0, count: 10)

print(equals(lhs: d1, rhs: d2))
