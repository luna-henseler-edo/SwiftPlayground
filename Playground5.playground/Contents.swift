import UIKit

enum Ingredient: String {
    case chicken = "breast"
    case butter = "unsalted"
    case eggs = "free range"
}

let ingredient = Ingredient.butter

switch ingredient {
case .chicken:
    print("The type of chicken is \(Ingredient.chicken.rawValue)")
case .butter:
    print("The butter is \(Ingredient.butter.rawValue)")
case .eggs:
    print("The eggs are \(Ingredient.eggs.rawValue)")
}


enum RecipeInformation {
    case allergens (information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "Gluten, milk, peanuts")

switch recipeInformation {
case .allergens(information: let information):
    print("Allergens: \(information)")

}

let reservationsInPerson:Set<String> = ["000-345-3441", "000-345-3442"]
let reservationsOnline:Set<String> = ["000-345-3443", "000-345-3444"]
let reservationsPhone:Set<String> = ["070-345-3443", "000-349-3444"]

let inPersonAndPhone = reservationsInPerson.union(reservationsPhone)
print(inPersonAndPhone)

let allPhoneNumbers = inPersonAndPhone.union(reservationsOnline)
print(allPhoneNumbers)

var confirmationCodes = Set<String>()
confirmationCodes.insert("LL3441")
confirmationCodes.insert("LL6579")


print(allPhoneNumbers.count, confirmationCodes.count)

confirmationCodes.remove("LL6579")
print(confirmationCodes)

var letter: Set = ["a", "b", "c"]

enum PastaTypes: Int {
    case spaghetti
    case penne
    case ravioli
    case rigatoni
}

print(PastaTypes.rigatoni.rawValue)

enum Week: Int, CaseIterable {
  case Monday = 1
  case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

for day in Week.allCases {
  print("\(day) is day \(day.rawValue) of the week")
}


//Polymorphism exercise
class Dish {
    private let ingredients: [String]
    private let name: String
    
    init(ingredients: [String], name: String) {
        self.ingredients = ingredients
        self.name = name
    }
    
    func printInfo() {
        print(name)
        print(ingredients)
    }
    
}

final class AppetizerDish: Dish {
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}

final class MainDish: Dish {
    }


for _ in 1...5 {
    let randomNumber = Int.random(in: 0...1)
    let dish: Dish
    if randomNumber==0 {
        dish = AppetizerDish(ingredients: ["Margherita", "Flatbread"], name: "Marguerita Flatbread")
    } else {
        dish = MainDish(ingredients: ["Spaghetti", "Tomato sauce", "Cheese"], name: "Super spaghetti")
    }
    
    if let appetizerDish = dish as? AppetizerDish {
        appetizerDish.printInfo()
    }
    
    if dish is MainDish {
        print("Main Dish!")
    }
}



//Protocol exercise
protocol Plate {
    var name: String { get }
    var preparationMinutes: Int { get set }
    
    func prepare()
    func plate (artisticLevel: Int)
    
}

class MainPlate: Plate {
    var name: String
    var preparationMinutes: Int
    
    init(name: String, preparationMinutes: Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
        
    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }
        
    func plate (artisticLevel: Int) {
        print("Plating \(name) with artistic level \(artisticLevel)")
    }
}


let superSpaghetti = MainPlate(name: "Super Spaguetti", preparationMinutes: 35)

superSpaghetti.prepare()
superSpaghetti.plate(artisticLevel: 10)



//Delegate exercise
protocol Driver {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}

class DeliveryDriver: Driver {
    let name: String
    init(name: String) {
        self.name = name
    }
    
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food).")
    }
}


class LittleLemon {
    var deliveryDriver: Driver?
    
    func deliverFood (_ food: String, to destination: String){
        if let deliveryDriver = deliveryDriver {
            deliveryDriver.driveToDestination(destination, with: food)
        } else {
            print("No delivery driver")
        }
    }
}

let bob = DeliveryDriver(name: "Bob")

let littleLemon = LittleLemon()
//To be able to instanciate LittleLemon with a driver you need to create an init

littleLemon.deliverFood("Super Spaguetti", to: "1 Spaguetti Lane")

littleLemon.deliveryDriver = bob

littleLemon.deliverFood("Super Spaguetti", to: "1 Spaguetti Lane")




//Error handling exercise

enum CalculatorError: Error {
    case divisionByZero
}

class Calculator {
    
    func divide (x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        return x/y
    }
}

let calculator = Calculator()

do{
    let succesfulResult = try calculator.divide(x: 10, y: 4)
    print(succesfulResult)
    let invalidResult = try calculator.divide(x: 10, y: 0)
} catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed")
    
}


//var convertedPrices = [Int]()
//print(convertedPrices)



//Map, filter, reduce exercise
struct Order {
    let price: Int
    let location: String
}
 
func totalRevenueOf(orders: [Order],  location: String) -> Int {
    let ordersAtLocation = orders.filter { $0.location == location }
    print(ordersAtLocation)
    let orderPrices = ordersAtLocation.map { $0.price }
    print(orderPrices)
    return orderPrices.reduce(0) { $0 + $1 }
}
 
let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]
 
let result = totalRevenueOf(orders: orders, location: "New York")
print(result)
