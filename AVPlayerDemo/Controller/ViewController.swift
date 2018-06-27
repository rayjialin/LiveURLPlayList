//
//  ViewController.swift
//  AVPlayerDemo
//
//  Created by ruijia lin on 6/27/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return urlList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "liveURLCell", for: indexPath) as? LiveURLCell else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "liveURLCell", for: indexPath)
            return cell
        }
        
        cell.videoImageView.image = #imageLiteral(resourceName: "videoPlaceholder")
        cell.videoDescription.text = urlList[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width / 1.5, height: view.frame.size.width / 1.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let urlLink = urlList[indexPath.row]
        performSegue(withIdentifier: "sendUrlLink", sender: urlLink)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendUrlLink"{
            let selectedUrlLink = sender as? String
            let videoContentVC = segue.destination as! VideoViewController
            videoContentVC.urlString = selectedUrlLink
        }
    }
    
    
    
}
