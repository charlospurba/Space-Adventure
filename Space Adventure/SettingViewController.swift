//
//  SettingViewController.swift
//  Space Adventure
//
//  Created by Foundation-005 on 26/06/24.
//

import UIKit
import AVFoundation

class SettingViewController: UIViewController {
    
    var playerVideo: AVPlayer?
    var isPause = false
    

    @IBOutlet weak var pausePlayButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo()

        // Do any additional setup after loading the view.
    }
    
    func playVideo(){
        guard let videoLocation = Bundle.main.path(forResource: "vid", ofType:"mp4") else {return
        }
        
        playerVideo = AVPlayer(url: URL(filePath: videoLocation))
        let videoView = AVPlayerLayer(player: playerVideo)
        videoView.frame = CGRect(x: 130, y: -50, width: 500, height: 500)
        view.layer.addSublayer(videoView)
        playerVideo?.play()
        
    }
    
    @IBAction func playPause(_ sender: Any) {
        if !isPause {
            pausePlayButton.setTitle("Play", for: .normal)
            isPause = true
            playerVideo?.pause()
        } else {
            pausePlayButton.setTitle("Pause", for: .normal)
            isPause = false
            playerVideo?.play()
        }
    }
    
    @IBAction func backHome(_ sender: Any) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
