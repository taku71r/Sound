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
    
    //ピアノを表示する箱を作る
    @IBOutlet var pianoButton: UIButton!
    
    //ギターを表示する箱を作る
    @IBOutlet var guitarButton: UIButton!
    
    //ドラムのサウンドファイルを読み込んでプレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    //ピアノのサウンドファイルを読み込んでプレイヤーを作る
       let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    //ピアノのサウンドファイルを読み込んでプレイヤーを作る
        let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
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
    
    //ピアノがタップされた時に呼ばれる
    @IBAction func touchDownPianobutton() {
        // ドラムが鳴っている画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"),for: .normal)
        
        // ドラムの音を巻き戻す
        pianoSoundPlayer.currentTime = 0
        
        // ドラムの音を再生する
        pianoSoundPlayer.play()
    }
    
    //ピアノボタンの上でタッチが終わる時に呼ばれる
    @IBAction func touchUpPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoImage"),for: .normal)
        
    }
    
    //ギターがタップされた時に呼ばれる
    @IBAction func touchDownguitarbutton() {
        // ドラムが鳴っている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"),for: .normal)
           
        // ギターの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
           
        // ギターの音を再生する
        guitarSoundPlayer.play()
       }
       
       //ピアノボタンの上でタッチが終わる時に呼ばれる
       @IBAction func touchUpGuitarButton(){
           guitarButton.setImage(UIImage(named: "guitarImage"),for: .normal)
           
       }


}

