//
//  MainMenuViewController.swift
//  Space Adventure
//
//  Created by Foundation-005 on 26/06/24.
//

import UIKit
import AVFoundation

class MainMenuViewController: UIViewController {

    @IBOutlet weak var muteButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    var backgroundNumber = 1
    var isMute = false
    
    // cek music player nya tadi di mana buatnya?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBackground(_ sender: Any) {
        if backgroundNumber == 1 {
            backgroundImageView.image = UIImage(named: "BGmainmenu2")
            backgroundNumber = 2
        } else {
            backgroundImageView.image = UIImage(named: "BGmainmenu1")
            backgroundNumber = 1
        }
    }
    
    @IBAction func changeMuteStatus(_ sender: Any) {
        if !isMute{
            muteButton.setImage(UIImage(systemName: "speaker.slash.circle.fill"), for: .normal)
            isMute = true
            appDelegate.music?.stop()
        } else { muteButton.setImage(UIImage(systemName: "speaker.circle.fill"), for: .normal)
            isMute = false
            appDelegate.music?.play()
        }
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
