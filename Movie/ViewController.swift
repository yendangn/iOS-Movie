//
//  ViewController.swift
//  Movie
//
//  Created by Yen Dang on 3/2/18.
//  Copyright © 2018 Yen Dang. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imgDemp: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = "https://static.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg"
        loadImage(url)
        
       //self.tabBarController.
        
        navigationItem.title = "Movie List"
        
    
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        let backBtn = UIButton(type : .system)
        backBtn.setTitle("Back", for: .normal)
        backBtn.setTitleColor(UIColor(hexString: "#E1E1E1"), for: .normal)
        //backBtn.frame = CGRect(x : 0, y : 0, width: 34, height:34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backBtn)
        
        
        let nextBtn = UIButton(type : .system)
        nextBtn.setTitle("Next", for: .normal)
        nextBtn.setTitleColor(.red, for: .normal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: nextBtn)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
       
    }


    func loadImage(_ url : String) {
        let url = URL(string : url)
        imgDemp.kf.setImage(with: url)
    }
}

