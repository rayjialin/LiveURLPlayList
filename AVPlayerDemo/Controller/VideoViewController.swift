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

    var urlString: String?
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let urlString = urlString else {return}
        if let url = NSURL(string: urlString){
            playerView = AVPlayer(url: url as URL)
            playerViewController.player = playerView
            self.present(playerViewController,animated: true){
                self.playerViewController.player?.play()
            }
        }

    }
}
