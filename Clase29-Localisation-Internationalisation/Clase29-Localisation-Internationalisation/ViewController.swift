//
//  ViewController.swift
//  Clase29-Localisation-Internationalisation
//
//  Created by Sergio Pita on 14/7/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //NSLocalizedString("key", comment: "comment");
    
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var txtLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        populateValues()
        //image.image = UIImage(named: "txt_hola")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showAlert(sender: AnyObject) {
        
        let mensaje = NSLocalizedString("alerts", comment: "Would you like to continue learning how to use iOS alerts?")
        
        let alert = UIAlertController(title: "UIAlertController", message: mensaje, preferredStyle: UIAlertControllerStyle.Alert)
        
        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func populateValues() {
        let imageTranslate = NSLocalizedString("image", comment: "imagen traducida")
        txtLabel.text = NSLocalizedString("Hello world!!",comment:"Good Morning")
        numberLabel.text = numberFormatter.stringFromNumber(9999999.999)
        currencyLabel.text = currencyFormatter.stringFromNumber(5000)
        dateLabel.text = dateFormatter.stringFromDate(NSDate())
        image.image = UIImage(named: imageTranslate)
    }
    
    var numberFormatter: NSNumberFormatter {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .DecimalStyle
        return formatter
    }
    
    var currencyFormatter: NSNumberFormatter {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        return formatter
    }
    
    var dateFormatter: NSDateFormatter {
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .MediumStyle
        return formatter
    }


}

