enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumerGame {

 var targetNumber = 10

 func guess (number : Int)  throws {
        guard number == targetNumber  else {
            print(number)
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number : \(targetNumber)")
    }
}


let test = GuessNumerGame()
    do {
        try test.guess(number: 20)
    } catch let error {
        print("\(error)")
    }
