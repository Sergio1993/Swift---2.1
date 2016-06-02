//
//  ViewController.swift
//  Clase11-UINavigationController
//
//  Created by Sergio Pita on 19/12/15.
//  Copyright © 2015 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = UIColor.yellowColor()
        
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .ScaleAspectFit
        
        let image = UIImage(named: "Apple_Swift_Logo")
        imageView.image = image
        
        navigationItem.titleView = imageView

    }


}

