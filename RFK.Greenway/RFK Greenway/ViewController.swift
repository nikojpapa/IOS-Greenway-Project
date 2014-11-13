//
//  ViewController.swift
//  RFK Greenway
//
//  Created by Natalie Schulz on 10/28/14.
//  Copyright (c) 2014 GAI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menu: UIView!
    
    @IBOutlet weak var slideshow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        menu.hidden = true;
        
        // Load images
        var imageNames = NSMutableArray();
        imageNames[0] = "image1"
        imageNames[1] = "image2"
        imageNames[2] = "image3"
        imageNames[3] = "image4"
        imageNames[4] = "image5"
        imageNames[5] = "image6"
        imageNames[6] = "image7"
        imageNames[7] = "image8"
        
        var images = NSMutableArray();
        for (var index = 0; index < imageNames.count; index++)
        {
            var imageName:String = imageNames[index] as String;
            images.addObject(UIImage(named: imageName));
        }
        
        // Normal Animation
        slideshow.animationImages = images;
        slideshow.animationDuration = 20;
        slideshow.startAnimating();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showmenu(sender: AnyObject)
    {
        menu.hidden = false
    }

}