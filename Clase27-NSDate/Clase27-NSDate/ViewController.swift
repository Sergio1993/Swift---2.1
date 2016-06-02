//
//  ViewController.swift
//  Clase27-NSDate
//
//  Created by Sergio Pita on 22/5/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var dataPicker: UIDatePicker!
    
    //let date = NSDate()
    
    
    func dataPickerChange(dataPicker: UIDatePicker) {
        
        /*
        Tarea 0
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        let strDate = dateFormatter.stringFromDate(dataPicker.date)
        fecha.text = strDate
        */
        
        /*Tarea 1
        let dateFormatter: NSDate = dataPicker.date
        
        let calendario = NSCalendar.currentCalendar()
        let dia = calendario.component(NSCalendarUnit.Day, fromDate: dateFormatter)
        let mes = calendario.component(NSCalendarUnit.Month, fromDate: dateFormatter)
        let anio = calendario.component(NSCalendarUnit.Year, fromDate: dateFormatter)
        let hora = calendario.component(NSCalendarUnit.Hour, fromDate: dateFormatter)
        let minuto = calendario.component(NSCalendarUnit.Minute, fromDate: dateFormatter)
        
        fecha.text = "\(dia)/\(mes)/\(anio) - \(hora):\(minuto)"
        
        */
        
        /*Tarea 2*/
        let fromDateFormatter = NSDateFormatter()
        fromDateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        let startTime = fromDateFormatter.stringFromDate(dataPicker.date)
        self.fecha.text = startTime
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataPicker.addTarget(self, action: Selector("dataPickerChange:"), forControlEvents: UIControlEvents.ValueChanged)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

