//Structures
struct Recipe {
    let name: String
    var ingredients: Set<String>
    var steps: [String]

    func printDescription() {
        print("Recipe: \(name)")
        print("Ingredients: \(ingredients)")
        for (index, step) in steps.enumerated() {
            print("\(index + 1). \(step).")
        }
    }
}

let chocolateCookieRecipe = Recipe(
    name: "Chocolate Cookie",
    ingredients: [
        "Cocoa powder",
        "Chocolate chip",
        "Flour"
    ],
    steps: [
        "First action",
        "Second action",
        "Third action"
    ]
)

chocolateCookieRecipe.printDescription()


//Struct exercise
struct TableReservation {
    var name: String
    let tableNumber: Int
    mutating func updateBooking(updatedName: String){
        self.name = updatedName
    }
}

var johnBooking = TableReservation(name: "John", tableNumber: 1)
print(johnBooking)
johnBooking.updateBooking(updatedName: "Maria")
print(johnBooking)


//Classes exercise
class LocalFile {
    let name: String
    let fileExtension: String
    var fullFileName : String {
        return name + fileExtension
    }
    
    init (name: String, fileExtension: String) {
        self.name = name
        self.fileExtension = fileExtension
    }
}

let file = LocalFile (name: "image", fileExtension: ".png")
print(file.fullFileName)
