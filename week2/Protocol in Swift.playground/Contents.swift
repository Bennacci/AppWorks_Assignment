struct Person: PoliceMan, ToolMan{
    var name : String
    func arrestCriminal() -> Void {
    }
    func fixComputer() -> Void {
    }
    var toolMen: ToolMan
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

var person = Person(name: "Steven", toolMen: Engineer())
