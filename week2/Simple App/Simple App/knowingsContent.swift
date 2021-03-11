import UIKit

let red = UIColor(rgb: 0xFF0000)
let orange = UIColor(rgb: 0xFFA500)
let yellow = UIColor(rgb: 0xFFFF00)
let green = UIColor(rgb: 0x008000)
let blue = UIColor(rgb: 0x000ff)
let indigo = UIColor(rgb: 0x4B0082)
let violet = UIColor(rgb: 0xEE82EE)

let colorS: [UIColor] = [red, orange, yellow, green, blue, indigo, violet]

let sevenConditions = [red: "(RED)Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
                        orange: "(Orange)Contrary to popular belief, Lorem Ipsum is not simply random text.",
                        yellow: "(Yellow)Richard McClintock, a Latin professor at Hampden-Sydney College in ",
                        green:"(Green)Looked up one of the more obscure Latin words, consectetur ",
                        blue: "(Blue)From a Lorem Ipsum passage, and going through the cites of the word. ",
                        indigo: "(Ingigo)This book is a treatise on the theory of ethics, very popular during the. ",
                        violet: "(Viloet)The first line of Lorem Ipsum, Lorem ipsum dolor sit amet. "]

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

