//
//  ViewController.swift
//  MeshiMatching
//
//  Created by 阪井　洋樹 on 2020/09/01.
//  Copyright © 2020 阪井　洋樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.enterButton.layer.shadowColor = UIColor.yellow.cgColor
        self.enterButton.layer.cornerRadius = 8 //角丸
        self.enterButton.layer.shadowOpacity = 1 // 影の透明度。値が大きくなればなるほど透明になる
        self.enterButton.layer.shadowRadius = 4 // 影のぼかし。値が大きくなればなるほどフワフワする
        self.enterButton.layer.shadowOffset = CGSize(width:0, height: 0) // 影の方向。widthは正の値が右に影、負の値が左、heightは正の値が下、負の値が上
        
    }

    @IBAction func enter(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SwipeMatching", bundle: nil)
        //let nextViewController = storyboard.instantiateInitialViewController() as! SwipeMatchingViewController
        let nextViewController = storyboard.instantiateInitialViewController() as! UITabBarController
        nextViewController.modalPresentationStyle = .fullScreen
        self.present(nextViewController, animated: true, completion: nil)
    }
    
}

