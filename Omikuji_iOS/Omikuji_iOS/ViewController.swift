//
//  ViewController.swift
//  Omikuji_iOS
//
//  Created by Kentaro Miura on 2017/02/09.
//  Copyright © 2017年 Kentaro Miura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fortuneLabel: UILabel!
    
    @IBAction func getFortune(_ sender: Any) {

        //おみくじ（乱数を発生させる）
        let resutls = ["大吉","中吉","小吉","吉","末吉","凶","大凶"]
        let random = arc4random_uniform(UInt32(resutls.count))
        self.fortuneLabel.text = resutls[Int(random)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* レイアウトセット */

        // 枠線色
        fortuneLabel.layer.borderColor = UIColor.green.cgColor
        // 枠線太さ
        //fortuneLabel.layer.borderWidth = 0.5
        // 枠線角度
        //fortuneLabel.layer.cornerRadius = 50
        // 枠線外を削る
        fortuneLabel.layer.masksToBounds = true
        // 枠線角度 : を丸にする
        fortuneLabel.layer.cornerRadius = fortuneLabel.bounds.width / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

