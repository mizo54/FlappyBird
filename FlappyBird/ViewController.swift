//
//  ViewController.swift
//  FlappyBird
//
//  Created by 溝越啓介 on 2018/12/13.
//  Copyright © 2018 Keisuke Mizogoshi. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型を変換する
        let skView = self.view as! SKView
        
        // FPSを表示する
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成する（SKScene -> GameSceneへ変更）
        let scene = GameScene(size:skView.frame.size)
        
        // ビューにシーンを表示する
        skView.presentScene(scene)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ステータスバーを消す --- ここから ---
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }

}

