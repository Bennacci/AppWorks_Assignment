//1.
enum Gasoline : String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPrice(gasolineType: String) -> String {
        if gasolineType.elementsEqual("oil92"){
            return "25NTD"
        }else if gasolineType.elementsEqual("oil95") {
            return "27NTD"
        }else if gasolineType.elementsEqual("oil98") {
            return "30NTD"
        }else if gasolineType.elementsEqual("diesel") {
            return "20NTD"
        } else {
            return "Not Included"
        }
    }
}

//MARK: -getPrice Method
var someGasolineType = Gasoline.oil92
someGasolineType.getPrice(gasolineType: "oil92")

//MARK: -rawValue establishing
Gasoline.oil92.rawValue

//MARK: -enum associate value
print("Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so. On the other hand, Raw values are set to prepopulated values when you first define the enumeration in your code. The raw value for a particular enumeration case is always the same")


//2.
class Pet {
    var name: String
    init(name: String){
    self.name = name
    }
}


class People {
    var pet : Pet? = nil
    init(have pet: Pet){
    self.pet = pet
    }
}

let anyPeople = People(have: Pet(name: "anyName"))


guard let anyPeoplespet = anyPeople.pet {
    print(String(anyPeoplespet))
} else{
    print("No Pet")
}


let somePeople = People(have: Pet(name: "somePet"))

if let somePeoplespet = somePeople.pet {
    print(String(anyPeoplespet))
} else{
    print("No Pet")
}

//guard let somePeoplepet = somePeople.pet else {
//    "No Pet"
//}

//
//if let somePeoplepet = somePeople.pet {}
//
//
//
//
//if  somePeople.pet != nil {
//    let peopleInstance = somePeople.pet
//}
