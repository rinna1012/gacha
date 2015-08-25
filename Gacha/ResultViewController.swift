//
//  ResultViewController.swift
//  Gacha
//
//  Created by 松島凛奈 on 2015/08/25.
//  Copyright (c) 2015年 Rinna Matsushima. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
   // @IBOutlet var haikeiImageView: UIImageView!
 //   @IBOutlet var monsterImageView: UIImageView!
    @IBOutlet var haikeiImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    var monsterArray: [UIImage]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var number = Int(rand() % 9 + 1)
        
        monsterArray = [UIImage(named: "monster001.png")!,
            UIImage(named: "monster002.png")!,
            UIImage(named: "monster003.png")!,
            UIImage(named: "monster004.png")!,
            UIImage(named: "monster005.png")!,
            UIImage(named: "monster006.png")!,
            UIImage(named: "monster007.png")!,
            UIImage(named: "monster008.png")!,
            UIImage(named: "monster009.png")!,
            UIImage(named: "monster010.png")!,
        ]
        
        monsterImageView.image = monsterArray[number]
   
        if number == 9 {
            
            haikeiImageView.image = UIImage (named: "bg_gold");
            
        }
        else if number == 8 || number == 7 {
            
            haikeiImageView.image = UIImage (named: "bg_red");
            
        }
        else if number <= 6 {
            
            haikeiImageView.image = UIImage (named: "bg_blue");
            
        }


    }
    
    override func viewDidAppear(animated: Bool) {
        
        var animation = CABasicAnimation(keyPath: "transform")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}


















