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
    }

    @IBAction func enter(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SwipeMatching", bundle: nil)
        //let nextViewController = storyboard.instantiateInitialViewController() as! SwipeMatchingViewController
        let nextViewController = storyboard.instantiateInitialViewController() as! UITabBarController
        nextViewController.modalPresentationStyle = .fullScreen
        self.present(nextViewController, animated: true, completion: nil)
    }
    
}

