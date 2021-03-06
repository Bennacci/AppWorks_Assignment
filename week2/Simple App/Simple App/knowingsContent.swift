import UIKit
//
//  struct SevenThings {
//    var middleRowText: String
//    var aColor: UIColor
//  }
////}
let textS = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
            "Contrary to popular belief, Lorem Ipsum is not simply random text.",
            "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
            " looked up one of the more obscure Latin words, consectetur ",
            " from a Lorem Ipsum passage, and going through the cites of the word ",
            " This book is a treatise on the theory of ethics, very popular during the. ",
            " The first line of Lorem Ipsum, Lorem ipsum dolor sit amet .. "]



//let findColor = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus." : ".red",
//                 "Contrary to popular belief, Lorem Ipsum is not simply random text." : ".orange",
//                 "Richard McClintock, a Latin professor at Hampden-Sydney College in " : ".yellow",
//                 " looked up one of the more obscure Latin words, consectetur " : ".green",
//                 " from a Lorem Ipsum passage, and going through the cites of the word " : ".blue",
//                 " This book is a treatise on the theory of ethics, very popular during the. ": ".indigo",
//                 " The first line of Lorem Ipsum, Lorem ipsum dolor sit amet .. ": ".violet"]

//var randomRed:CGFloat = CGFloat(arc4random_uniform(256))
//var randomGreen:CGFloat = CGFloat(arc4random_uniform(256))
//var randomBlue:CGFloat = CGFloat(arc4random_uniform(256))
//var myColor =  UIColor(red: randomRed/255, green: randomGreen/255, blue: randomBlue/255, alpha: 1.0)

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
//
//let red = "rgb: 0xFF0000"
//let okok = UIColor(rgb: 0xFFA500).cgColor
//let yellow = UIColor(rgb: 0xFFFF00).cgColor
//let green = UIColor(rgb: 0x008000).cgColor
//let blue = UIColor(rgb: 0x000ff).cgColor
//let indigo = UIColor(rgb: 0x4B0082).cgColor
//let violet = UIColor(rgb: 0xEE82EE).cgColor

let red = UIColor(rgb: 0xFF0000)
let okok = UIColor(rgb: 0xFFA500)
let yellow = UIColor(rgb: 0xFFFF00)
let green = UIColor(rgb: 0x008000)
let blue = UIColor(rgb: 0x000ff)
let indigo = UIColor(rgb: 0x4B0082)
let violet = UIColor(rgb: 0xEE82EE)
let colorS: [UIColor] = [red, okok, yellow, green, blue, indigo, violet]
