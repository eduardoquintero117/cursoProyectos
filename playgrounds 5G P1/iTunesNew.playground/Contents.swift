import UIKit
import PlaygroundSupport

struct ResultSearch: Codable {
    var resultCount: Int
    var results:[Track]
}

struct Track:Codable{
    var artistName: String
    
    
}

let url = URL(string: "https://itunes.apple.com/search?term=maluma")
//let url = URL(string: "https://www.unam.mx")


let jsonDecoder = JSONDecoder()

let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
    
//    if let data = data, let string = String(bytes: data, encoding: .utf8) {
//    //print(data as? NSData)
//        print(string)
//    }
    
    if let data = data, let tracks = try? jsonDecoder.decode(ResultSearch.self, from: data) {
    //print(data as? NSData)
        print(tracks.resultCount)
        
        for track in tracks.results {
            print(track.artistName)
            
        }
    }
    if error != nil {
        print(error?.localizedDescription)
        
    }
}

task.resume()
PlaygroundPage.current.needsIndefiniteExecution = true
