struct Person: PoliceMan, ToolMan{
    var name : String
    func arrestCriminal() -> Void {
    }
    func fixComputer() -> Void {
    }
}

protocol PoliceMan{
    func arrestCriminal() -> Void
}

protocol ToolMan{
    func fixComputer() -> Void
}

struct Engineer: ToolMan{
    func fixComputer() -> Void {
    }
}

let person = Person(name: "Steven")
// unlike class struct provides a free init so no relative data to declare for Q6?
