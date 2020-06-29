import Foundation

protocol Shape {
    var area: Double { get }
}

struct Square: Shape {
    let side: Double
    
    var area: Double {
        return side * side
    }
}

struct Rectangle: Shape {
    let width: Double
    let height: Double
    
    var area: Double {
        return width * height
    }
}

struct Rhombus: Shape {
    let d1: Double
    let d2: Double
    
    var area: Double {
        return (d1 * d2) / 2
    }
}

struct Circle: Shape {
    let radius: Double
    
    // A = π * r^2
    var area: Double {
        return .pi * radius * radius
    }
}

var shape: Shape
shape = Rectangle(width: 2, height: 3.5)
print(shape.area)

shape = Circle(radius: 4.5)
print(shape.area)

shape = Rhombus(d1: 4, d2: 6)
print(shape.area)

var shapes = [Shape]()

let square = Square(side: 5)
shapes.append(square)

let rect = Rectangle(width: 5, height: 10)
shapes.append(rect)

let circle = Circle(radius: 2)
shapes.append(circle)

for shape in shapes {
    print(shape.area)
}

