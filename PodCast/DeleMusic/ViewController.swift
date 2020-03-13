//
//  ViewController.swift
//  DeleMusic
//
//  Created by Eduardo Quintero on 29/02/20.
//  Copyright © 2020 new. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var portada: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    
    var status = "none"
    let player : AVPlayer = {
        
        let avPlayer = AVPlayer()
        avPlayer.automaticallyWaitsToMinimizeStalling = false
        return avPlayer
        
    }()
    
     var urlPodcast = "https://edge2.pod.npr.org/anon.npr-podcasts/podcast/npr/fa/2020/02/20200229_fa_fawpod-ae09ae06-d2da-434a-b93e-f94f2b70843e.mp3/20200229_fa_fawpod-ae09ae06-d2da-434a-b93e-f94f2b70843e.mp3_322a88feeb3c294a62411ab0018439f3_49379578.mp3?awCollectionId=381444908&awEpisodeId=810361242&orgId=1&d=3069&p=381444908&story=810361242&t=podcast&e=810361242&size=49001459&ft=pod&f=381444908&hash_redirect=1&x-total-bytes=49379578&x-ais-classified=download&listeningSessionID=0CD_382_59__4e4b5cffc8c3c5410bcce6103ebec86e26b65c44"
    
     var  urlImage = "https://media.npr.org/assets/img/2018/08/03/npr_freshair_podcasttile_sq-bb34139df91f7a48120ddce9865817ea11baaf32.jpg?s=1400"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadImage()
        playButton.setImage(UIImage(named: "play"), for: .normal)
    }
    
    
    func loadImage(){
        guard let url = URL(string: urlImage) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataImage = data else {return}
            DispatchQueue.main.async {
                self.portada.image = UIImage(data: data!)
            }
        }.resume()
       
    }

    @IBAction func playEpisode(_ sender: UIButton) {
        
        
        
        if status == "none"{
            guard let url = URL(string: urlPodcast)else {return}
            
            let playerItem = AVPlayerItem(url: url)
            player.replaceCurrentItem(with: playerItem)
            player.play()
            status = "play"
            playButton.setImage(UIImage(named: "pause"), for: .normal)
            
        }else if status == "play"{
            
            
            if player.timeControlStatus == .playing{
                player.pause()
                playButton.setImage(UIImage(named: "play"), for: .normal)
                
                
            }else{
                player.play()
                playButton.setImage(UIImage(named: "pause"), for: .normal)
            }
            
        }
        
        
        
        
          
        
    }
    
}

