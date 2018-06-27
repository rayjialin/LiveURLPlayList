//
//  VideoViewController.swift
//  AVPlayerDemo
//
//  Created by ruijia lin on 6/27/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let urlString = "http://b028.wpc.azureedge.net/80B028/Samples/a38e6323-95e9-4f1f-9b38-75eba91704e4/5f2ce531-d508-49fb-8152-647eba422aec.ism/Manifest(format=m3u8-aapl)"
        if let url = NSURL(string: urlString){
            playerView = AVPlayer(url: url as URL)
            playerViewController.player = playerView
            self.present(playerViewController,animated: true){
                self.playerViewController.player?.play()
            }
        }
    }
}
