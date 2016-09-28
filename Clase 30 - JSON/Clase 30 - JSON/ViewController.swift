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
        var error: NSError?
        let requestURL: NSURL = NSURL(string: "https://www.dropbox.com/s/c7mhkk85o0vlv3e/document.json")!
        
        if let url = NSURL(string: "https://www.dropbox.com/s/c7mhkk85o0vlv3e/document.json") {
            
            if let jsonData : NSData = NSData(contentsOfURL: url){
                
                if let jsonDict = try! NSJSONSerialization.JSONObjectWithData(jsonData, options: []) as? NSDictionary {
                    for (key, value) in jsonDict {
                        print("KEY \(key) VALUE \(value)")
                    }
                }
            }
        }
    
                /*
                do{
                    let jsonData : NSData = NSData(contentsOfURL: requestURL)!
                    let json = try NSJSONSerialization.JSONObjectWithData(jsonData, options:.AllowFragments)
                    
                    if let stations = json["stations"] as? [[String: AnyObject]] {
                        
                        for station in stations {
                            
                            if let name = station["stationName"] as? String {
                                
                                if let year = station["buildYear"] as? String {
                                    print(name,year)
                                }
                                
                            }
                        }
                        
                    }
                    
                }catch {
                    print("Error with Json: \(error)")
                }
         */
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

