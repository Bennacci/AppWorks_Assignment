//1.
class Animal {
enum Gender {
    case male
    case female
    case umdefined
    }
func eat(){
    print ("I eat everything!")
    }
}

let animal = Animal()
animal.eat()


//2.
class Elephant: Animal {
    override func eat(){
        print("I eat grass")
    }
}

class Tiger: Animal {
    override func eat(){
        print("I eat meat")
    }
}
class Horse: Animal {
    override func eat(){
        print("I eat grass")
    }
}
let tiger = Tiger()
tiger.eat()
let elephant = Elephant()
let horse = Horse()


//3.
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger())

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse
zoo.weeklyHot.eat()

//4.
print("Classes have additional capabilities that structures don’t have: Inheritance enables one class to inherit the characteristics of another. Type casting enables you to check and interpret the type of a class instance at runtime. Deinitializers enable an instance of a class to free up any resources it has assigned.Reference counting allows more than one reference to a class instance.")

//5.
print("Instance methods are called on an instance and Type methods are called on an Type ")

//6.
print("Initialization is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that’s required before the new instance is ready for use.")
//7.
print("Every instance of a type has an implicit property called self, which is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods. However without the self prefix, Swift would assume that use of someParameter referred to the method parameter called someParameter.")

//8.
print("A value type is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function. Unlike value types, reference types are not copied when they’re assigned to a variable or constant, or when they’re passed to a function. Rather than a copy, a reference to the same existing instance is used.")
