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

let players : [Int] = [1,6,94,83,6];

for i in players{
    print(i);
}
