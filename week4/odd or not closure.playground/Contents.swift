
// Closure

let oddIdentifierClosure = { (val: Int) -> (Bool) in
  if val % 2 == 1 {
    return true
  } else {
    return false
  }
}
oddIdentifierClosure(9)





//------------------------------------------------------------

// .filter
var numbers = Array(1...9)
let oddNumbers = numbers.filter ({ $0 % 2 == 1})
oddNumbers

// Function
func isOdd(val: Int) -> Bool {
  return val % 2 != 0
}
//testing:
isOdd(val: 2)
isOdd(val: 5)


