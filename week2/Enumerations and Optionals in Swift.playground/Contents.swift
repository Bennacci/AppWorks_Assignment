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
"Associated values are set when you create a new constant or variable based on one of the enumeration’s cases, and can be different each time you do so. On the other hand, Raw values are set to prepopulated values when you first define the enumeration in your code. The raw value for a particular enumeration case is always the same"


//2.
class Pet {
    var name: String
    init(name: String){
    self.name = name
    }
}

class People {
    var pet : Pet?
}


//unwrap with guard let
let anyPeople = People()
func checkIfHavePet(pet: Pet?) {
    guard let pet = pet else {
        print ("no pet peted")
        return
    }
        print("pets \(pet.name)")
}

checkIfHavePet(pet: anyPeople.pet)

anyPeople.pet = Pet(name: "LaLa cat")
checkIfHavePet(pet: anyPeople.pet)

//unwrap with if let
let anotherAnyPeople = People()

func kindPerson(pet:Pet?){
    if let pet = pet {
        print("pets \(pet.name)")
        return
    } else {
        print ("no pet peted")
    }
}

anotherAnyPeople.pet = Pet(name: "Sofy dog")
kindPerson(pet: anotherAnyPeople.pet)



