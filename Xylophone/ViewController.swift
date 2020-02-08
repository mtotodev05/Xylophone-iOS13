//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onCKeyPressed(_ sender: UIButton) {
        self.onPlayKeySound("C",sender)
    }
    
    @IBAction func onDKeyPressed(_ sender: UIButton) {
        self.onPlayKeySound("D",sender)
    }
    
    
    @IBAction func onEKeyPressed(_ sender: UIButton) {
        self.onPlayKeySound("E",sender)

    }
    
    @IBAction func onFKeyPressed(_ sender: UIButton) {
        self.onPlayKeySound("F",sender)

    }
    
    
    @IBAction func onGKeyPressed(_ sender: UIButton) {
        self.onPlayKeySound("G",sender)
    }
    
    
    @IBAction func onAKeyPressed(_ sender: UIButton) {
        self.onPlayKeySound("A",sender)

    }


    @IBAction func onBKeyPressed(_ sender: UIButton) {
        self.onPlayKeySound("B",sender)

    }
    ;
    private func onPlayKeySound(_ keyString: String = "C", _ actionSense: UIButton){
        actionSense.alpha = 0.3
        let keyUrl = Bundle.main.url(forResource: keyString, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: keyUrl!)
        audioPlayer.play()
        
        actionSense.alpha = 1
    }
}

