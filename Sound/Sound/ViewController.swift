//
//  ViewController.swift
//  Sound
//
//  Created by home on 2018/03/09.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // アラーム音の音源ファイルを指定
    let alarmSound = Bundle.main.bundleURL.appendingPathComponent("ClockAlarm.mp3")
    // アラーム音用のプレイヤーインスタンスを作成
    var alarmPlayer = AVAudioPlayer()
    
    @IBAction func Sound(_ sender: Any) {
    // アラーム音用のプレイヤーに、音源ファイル名を指定
    do {
    alarmPlayer = try AVAudioPlayer(contentsOf: alarmSound, fileTypeHint: nil)
    alarmPlayer.play()
    } catch {
    print("アラーム音でエラーが発生しました！")
    }
}
}
