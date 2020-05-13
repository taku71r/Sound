//
//  ViewController.swift
//  Sound
//
//  Created by 清水拓郎 on 2020/05/13.
//  Copyright © 2020 清水拓郎. All rights reserved.
//

import UIKit
import AVFoundation





class ViewController: UIViewController {
    
    //ドラムを表示する箱を作る
    @IBOutlet var drumButton: UIButton!
    
    
    //ドラムのサウンドファイルを読み込んでプレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムがタップされた時に呼ばれる
    @IBAction func touchDownDrumbutton() {
        // ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"),for: .normal)
        
        // ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        // ドラムの音を再生する
        drumSoundPlayer.play()
    }
        
    //ドラムボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpDrumButton(){
        drumButton.setImage(UIImage(named: "drumImage"),for: .normal)
    }
        
        


}

