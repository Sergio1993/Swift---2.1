//
//  ViewController.swift
//  Clase 30 - JSON
//
//  Created by Sergio Pita on 28/9/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // URL https://www.dropbox.com/s/t6n1ry9cbczd46e/person.json
        
        if let url = URL(string: "https://www.dropbox.com/s/t6n1ry9cbczd46e/person.json") {
            if let jsonData: Data = try? Data(contentsOf: url){
                if let jsonDict = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? NSDictionary {
                    for (key, value) in jsonDict! {
                        print("KEY \(key) VALUE \(value)")
                    }
                }
            }
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

