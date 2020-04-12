import UIKit


struct User: Codable {
    var first_name: String
    var last_name: String
    var country: String
    
}

let path = Bundle.main.path(forResource: "datos", ofType: "json")
let jsonData = NSData(contentsOfFile: path!)
let user = try! JSONDecoder().decode(User.self, from: jsonData! as Data)

print(user.first_name)



////https://itunes.apple.com/search




