//
//  ViewController.swift
//  サンタさん
//
//  Created by 加藤大地 on 2017/12/27.
//  Copyright © 2017年 自分の名前. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
   var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let filePath = Bundle.main.path(forResource: "365日",ofType: "mp3")
            let musicPath = URL(fileURLWithPath: filePath!)
            audioPlayer = try AVAudioPlayer(contentsOf: musicPath)
        } catch {
            print("error")
        }
        audioPlayer.play()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

