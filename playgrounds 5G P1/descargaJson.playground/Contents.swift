import UIKit
import PlaygroundSupport


struct FormSearch: Codable {
    var photos:TrackImage
    var stat: String
}


struct TrackImage: Codable {
    var page: Int
    var pages: Int
    var perpage: Int
    var total: String
    var photo:[InfoPhoto]
}

struct InfoPhoto: Codable {
    var id : String
    var owner: String
    var secret: String
    var server: String
    var farm: Int
    var title: String
    var ispublic : Int
    var isfriend: Int
    var isfamily: Int
}
 
var photosView = [InfoPhoto]()
//Your key Flickr
var key = ""
// url
let url = URL(string: "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(key)&tags=mexico&format=json&nojsoncallback=1")

let jsonDecoder = JSONDecoder()
let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
//    ver el json en forma de texto
//    if let data = data, let string = String(bytes: data, encoding: .utf8) {
//    ////print(data as? NSData)
//    //print(string)
//    }
    
    if error != nil {
        print(error?.localizedDescription )
       }
    if let data = data, let tracks = try? jsonDecoder.decode(FormSearch.self, from: data) {
    
        print(tracks.photos.photo.count)

        // ver el contenido en tracks
        for track in tracks.photos.photo {
            print(track)
        }
        
        photosView = tracks.photos.photo

    }
    
    
//    //---formato para descargar imagenes
//
//    var temp = photosView[4]
//    var urlImage = "https://farm\(temp.farm).staticflickr.com/\(temp.server)/\(temp.id)_\(temp.secret)_b.jpg"
//         
//    print(urlImage)
//    //----
//    
    
}

task.resume()
PlaygroundPage.current.needsIndefiniteExecution = true
