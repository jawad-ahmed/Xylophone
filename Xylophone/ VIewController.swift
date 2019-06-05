//
//  ViewController.swift
//  Xylophone
//
//  Created by Jawad Ahmed on 02/06/2019.
//  Copyright © 2019 Jawad Ahmed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
}

