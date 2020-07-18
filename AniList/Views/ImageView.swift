//
//  ImageView.swift
//  AniList
//
//  Created by Kirtan Patel on 7/14/20.
//

import SwiftUI

struct ImageView: View {
    
    @ObservedObject var imageLoader: ImageFromURL
    
    init(url: String?) {
        imageLoader = ImageFromURL(url: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        } else {
            ProgressView("Loading")
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(url: "https://s4.anilist.co/file/anilistcdn/media/anime/banner/1-T3PJUjFJyRwg.jpg")
    }
}

// Thanks to SchwiftyUI
// From : https://www.youtube.com/watch?v=volfJt7mupo - Loading and Caching Images in SwiftUI (Ongoing)
class ImageFromURL: ObservableObject {
    @Published var image: UIImage?
    var urlString: String?
    
    init(url: String?) {
        urlString = url
        loadImage()
    }
    
    func loadImage() {
        loadImageFromUrl()
    }
    
    func loadImageFromUrl(){
        
        guard let urlString = urlString else {
            return
        }
        
        let url = URL(string: urlString)!
        let task = URLSession.shared.dataTask(with: url, completionHandler: getImageFromResponse(data:response:error:))
        task.resume()
    }
    
    func getImageFromResponse(data: Data?, response: URLResponse?, error: Error?) {
        guard error == nil else {
            print(error ?? "error")
            return
        }
        
        guard let data = data else {
            return
        }
        
        DispatchQueue.main.async {
            guard let loadedImage = UIImage(data: data) else {
                return
            }
            
            self.image = loadedImage
        }
    }
}
