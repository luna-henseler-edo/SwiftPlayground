let day = "Monday"
print(day)
print ("Today is \(day). Rise and shine!")

let dailyTemperature = 75
print("The temperature on \(day) is \(dailyTemperature)ºF")

var temperature = 70
temperature = 80
print("The temperature on \(day) evening is \(temperature)ºF")

let weeklyTemperature = 75
temperature = weeklyTemperature
print("The average temperature this week is \(temperature)ºF")

let levelScore = 10
var gameScore = 5
gameScore += levelScore
print("The game's score is \(gameScore)")

var levelBonusSCore = 5.0
gameScore += Int(levelBonusSCore)

var var1 = "Ho"
var var2 = "la"
var var3 = var1 + var2
print(var3)

let quote = "Hello World"
quote.hasPrefix("H")
quote.hasSuffix("ld")

print(var1.lowercased())
print(var2.uppercased())

var letterCount = quote.count
print(letterCount)

let mlString = """
Hola
World   Mundillo
Pequeñito
"""
print(mlString)

var h = "6"
var min = "30"
var perd = "PM"

var timeConst = h + ":" + min + " " + perd
print(timeConst)

var hour = 5
var minutes = 56
var period = "AM"

var time = String(hour) + ":" + String(minutes) + " " + period
print(time)

time = "\(hour):\(minutes) \(period)"
print(time)

var value = 6^10
print(value)

var xor:Bool = (6^10 == 16)
print(xor)


//Work with conditionals exercise

var freeApp = true
if (freeApp == true){
    print( "You are using the free version.")
}

let morningTemperature = 70
let eveningTemperature = 80
if (morningTemperature < eveningTemperature){
    print("Morning's report is: \(morningTemperature)")
} else {
    print("Evening's report is: \(eveningTemperature)")
}

let temperatureDegre = "Fahrenheit"

switch temperatureDegre {
case "Celsius" : print("App configured for Europe")
case "Fahrenheit" : print("App configured for US")
default : print("Unknown configuration")
}

let numberPlate = "WW87GP"
for character in numberPlate {
  print("character is = \(character)")
}

//Conditions and loops exercise
let levels = 10
let freeLevels = 4
let bonusLevel = 3

for level in 1...levels {
    if (level == bonusLevel){
        print("Level \(level) is a bonus level.")
        continue
    }
    print("Play level \(level)")
    if (level <= freeLevels){
        print("You have played \(level) free levels.")
    } else {
        print ("The rest \(levels-freeLevels) levels are paid.")
        break
    }
}

//Warning but works
var a:Int? = 1
var b:Int! = 1
print(a)    //Optional(1)
print(b)    //Optional(1)
let bprint = b
print("Print \(bprint)")

//Warning but works
var a2:Int? = 1
var b2:Int! = a
print(a2)       //Optional(1)
print(b2)       //Optional(1)

//Warning but works
var b3:Int! = 1
var a3:Int? = b3
print(a3)       //Optional(1)
print(b3)       //Optional(1)

//Warning but works
var a4:Int?
var b4:Int! = a4
print(a4)       //nil
print(b4)       //nil

//Error nil exception
/*var a5 = nil
print(a5)*/

//Error and stop
/*var a5:Int?
let b5:Int = a5
print(b5)
print(a5)*/


//Optionals exercise
var password = "1234"
let passcode = Int(password)

print(passcode)

password = "HelloWorld"
if let code = Int(password){
    print(code)
} else {
    print("Invalid passcode")
}

let accessCode:Int
if let code = Int(password){
    accessCode = code
} else {
    accessCode = 1111
}
print(accessCode)

let firstPassword = "Hello"
let secondPassword = "world"
if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword){
    print("The passcode is \(firstPasscode)\(secondPasscode)")
} else {
    print("Invalid passcode")
}

let firstAccessCode:Int
let secondAccessCode:Int

if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword){
    firstAccessCode = firstPasscode
    secondAccessCode = secondPasscode
} else {
    firstAccessCode = 1111
    secondAccessCode = 2222
}
print("\(firstAccessCode) \(secondAccessCode)")



        
