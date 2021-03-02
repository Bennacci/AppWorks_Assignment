//1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for number in lottoNumbers.count-3..<lottoNumbers.count{
    print(lottoNumbers[number])
}

////2.
//for i in 5...10{
//    print(i)
//}
//
//for i in (5...10).reversed() {
//    if i%2 == 0{
//        print(i)
//    }
//}
//
////3.while loop
//var x = 5
//while x <= 10 {
//    print(x)
//    x += 1
//}
//
//x = 10
//while x>5 {
//    if x%2 == 0{
//    print(x)
//    }
//    x -= 1
//}
//
////4.repeat-while loop
//x = 5
//repeat {
//    print(x)
//    x += 1
//}while x<=10
//
//x=10
//repeat {
//    if x%2 == 0{
//        print(x)
//    }
//    x -= 1
//} while x >= 5

// --------------------Redo 2,3,4 using Q1's lottoNumbers[]-----------------

//2.
for number in lottoNumbers.reversed(){
    print (number)
}

for number in lottoNumbers{
    if number%2 == 0{
        print (number)
    }
}

//3.
var x = lottoNumbers[i]
var i = 5
while i >= 0  {
    print (lottoNumbers[i])
    i -= 1
}

i = 0
while i < 6 {
    if lottoNumbers[i]%2 == 0{
        print(lottoNumbers[i])
    }
    i += 1
}

//4.
i = 5
repeat {
    print(lottoNumbers[i])
    i -= 1
} while i >= 0

i = 0
repeat{
    if lottoNumbers[i]%2 == 0{
    print(lottoNumbers[i])
    }
    i += 1
} while i < 6




//5.
let Ans5 = "While loops checks the conditions first then executes statements in the bracket. Repeat while executes the statements in the bracket then checks rather to stop repeating"

//6.
var isRaining: Bool?
if isRaining == true {
    print("It's raining, I don't want to work today.")
} else {
    print("Although it's sunny I still don't want to work today.")
}

//7.
var jobLevel: Int = 0
switch jobLevel{
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job.")
}
