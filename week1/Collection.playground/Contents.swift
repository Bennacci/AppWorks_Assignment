//1.
var myFriends : [String] = []

//2.
myFriends += ["Ian", "Bomi", "Kevin"]

//3.
myFriends.append("Michael")

//4.
myFriends.swapAt(0, 3)

//5.
for _ in 0..<myFriends.count{
    print(myFriends)
}

//6.
let Ans6 = "No one's at index 5, because there's only 4 friends in myfriends array"

//7. use ".first" or index 0 shown as below
myFriends.first
myFriends[0]

//8. use ".last" or index (array.count-1) shown as below
myFriends.last
myFriends[myFriends.count-1]

//9.
var myCountryNumber : [String : Int]

//10.
myCountryNumber = [ "US" : 1, "GB" : 44, "JP" : 81]

//11.
myCountryNumber["GB"] = 0
// or myCountryNumber.updateValue(1, forKey: "GB")

//12.
let Ans12 = "use .isEmpty to check if its true or false, for example:"
myCountryNumber.isEmpty

//13.
let Ans13 = "use .removeValue(forKey: ''key''), for example:"
myCountryNumber.removeValue(forKey: "GB")
