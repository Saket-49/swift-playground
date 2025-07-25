import UIKit

func add(x: Int, y:Int)-> Int{
    return x+y
}

let o:Int = add(x:2,y:3);
print(o);

// <-- Functions --> \\

let highScore = 234;
if highScore > 500 {
    print("You got high score!");
}
else if highScore > 250 {
    print("you are average");
}
else{
    print("you need improvement")
}


// <-- If-Else --> \\

let players : [Int] = [1,6,94,83,6];


// <-- Arrays --> \\

for i in players{
    print(i);
}

// <-- For Loop Syntax --> \\

var randomInts : [Int] = [];

for i in 0..<25{
    let randInt = Int.random(in: 0...100); //random is a method of Int class
    randomInts.append(randInt);
}
print(randomInts)


// <-- Loops & arrays --> \\


for i in 0..<25{
    print(i);
}


// <-- Syntax similar to python --> \\

enum Phone{
    case iPhone
    case Samsung
    case Pixel
}

// <-- Enums --> \\

func getOpinion(on phone: Phone){
    if(phone == .iPhone){
        print("opinion on iphone")
    }
    else if(phone == .Samsung){
        print("opinion on Samsung")
    }
    else if( phone == .Pixel){
        print("opinion on Pixel")
    }
    else{
        print("Invalid Argument")
    }
}

getOpinion(on: .Pixel)

// <-- Functions & Enums --> \\

enum Day: String{
    case monday = "nah after a weekend";
    case tuesday = "2sDay it is";
    case wednesday = "house uniform";
    case thursday = "thirsty day";
    case friday = "friday aa friday pc";
    case saturday = "finally 4th saturday";
    case sunday = "cheat day";
}

func getOpinion2(on day: Day){
    print(day.rawValue)
}

getOpinion2(on: .monday);

// <-- Enums with rawValues --> \\


enum Direction{
    case N
    case S
    case E
    case W
}

func getDirection(of input: Direction){
    switch input {
    case .N:
        print("it is north");
    default:
            print("wrong input")
    }
}

getDirection(of: .W)

// <-- Enum with Switch Case --> \\


func getRank(from rank:Int){
    switch rank {
    case ..<0 : // for handling the negative values
        print("the score cannot be negative");
    case 0..<100:
        print("you need improvement. Your score is between 0 to 99");
    case 100..<200:
        print("pretty average. Your score is between 100 to 199");
    case 200...500:
        print("rising star you are. Your score is between 200 to 500");
    case 500...:
        print("you are the best")
    default:
        print("Your score cannot be determined");
    }
}

getRank(from: 46732)


// <-- Switch Case Statements with operators --> \\


let valOne:Double = 34;
let valTwo: Double = 89;

let divisionOutcome: Double = valOne / valTwo; //here it is not necessary to define the type as Double due to type interference.

print(divisionOutcome)

//modulo give the remainder after performinh the division --> Symbol : %
// = --> assignment operator
// == --> comparison operator
// ! --> not of operator

// && --> logical AND operator
// || --> logical OR operator

var count = 0;
count+=1;

let name = "n3rddev"
let greeting = "hello"

print(greeting + " " + name)

let arr1 = [3,4,5];
let arr2 = [6,7];
print(arr1+arr2)
print(arr2+arr1)



// <-- Operators --> \\


var array: [Int] = []; // this can be left empty
array.sort();

if let last = array.last{
    print("the last member is \(last)") // \() this is called string interpolation (similar to f string in python);
}
else{print("the array is either empty or the function is empty")}

// <-- Method 1 (If Let) --> \\

let lastElement: Int = array.last ?? 0;
print("\(lastElement) is the last element in the array");


// <-- Method 2 (Nil Coalescing) --> \\

func handlingNull(array: [Int]){
    guard let lastElement = array.last else {
        return
    }
    print(lastElement)
}

handlingNull(array: array)

// <-- Method 3 (Guard Statement) --> \\



//let lastElementMethod4 = array.last!
//print(lastElementMethod4)

// <-- Method 4 (Force Unwrap) --> \\


// It is suggested to not use Method 4 (force unwrap) for handling null values so better use option 1 or option 3


// <--------------------------------------------------------------------------------------------------------------------------------> \\
// <--------------------------------------------------------------------------------------------------------------------------------> \\
// <--------------------------------------------------------------------------------------------------------------------------------> \\

class Developer {
    var name : String?;
    var Role: String?;
    var Experience: Int?;
    
    init(name:String, Role: String, Experience: Int){
        self.name = name;
        self.Role = Role;
        self.Experience = Experience;
    }
    
    init(){
        print("the constructor has no arguments but just a print statement to show that it has been executed")
        print("this is possible due to the question mark after the variable name")
    }
    
    func speakDetails(){
        print(self.name!)
        print(self.Experience!)
        print(self.Role!)
    }
}

let saket = Developer(name: "Saket", Role: "PolyMath", Experience: 5);

if let name = saket.name{
    print(name)
}else{
    print("There was some error in fetching the name")
}
print("\n")
saket.speakDetails()

// <-- Using the 4th method (force unwrap) because I am lazy --> \\

class IosDeveloper: Developer {
    var framework: String?
    
    init(name: String, Role: String, Experience: Int, framework: String){
        self.framework = framework
        super.init(name: name, Role: Role, Experience: Experience)
    }
    override func speakDetails() {
        super.speakDetails()
        print(self.framework!)
    }
}
print("\n")
let saket1 = IosDeveloper(name: "Saket", Role: "PolyMath", Experience: 5, framework: "SwiftUI")
saket1.speakDetails()

// <-- Inheritence --> \\

var n3rddev = saket1;
n3rddev.name = "n3rddev";

saket1.name  // here the output is "n3rddev"

// This signifies that " var = n3rddev " is a reference type that means any changes that occurs to the n3rddev variable will be reflected on the " let saket1 " variable

// <-- Understanding Reference Type --> \\

struct School {
    var name: String;
    var location: String;
    var classesTill: Int;
}

var Ryan = School(name:"Ryan International School", location: "Patiala", classesTill: 12);
print(Ryan.location)
print(Ryan.name)
print(Ryan.classesTill)

// <-- Structs --> \\

var GovtSchool = Ryan;
GovtSchool.location = "New Delhi";

print(GovtSchool.location)
print(Ryan.location)

// <-- Understanding Value type --> \\


extension String{
    func removeWhiteSpaves() -> String{
        return components(separatedBy: .whitespaces).joined();
    }
}
let alphabet = "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z";
print(alphabet.removeWhiteSpaves())

