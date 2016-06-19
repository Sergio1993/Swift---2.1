//
//  ViewController.swift
//  Clase28-AVFundation
//
//  Created by Sergio Pita on 15/6/16.
//  Copyright © 2016 Sergio Pita. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate
{

    /*
    
    ==================TAREA 0 ================
    Reproducir un video desde internet
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? AVPlayerViewController{
            if let url = NSURL(string: "https://www.dropbox.com/s/d2kdqp7ifi124o3/15474.mp4?dl=0"){
                destination.player = AVPlayer(URL: url)
            }
        }
    }
    */
    /*
    ==================TAREA 1 ================
    Reproducir video desde el proyecto
    */
    var moviePlayer : AVPlayerViewController!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? AVPlayerViewController{
            let path = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("Pato donald", ofType: "mp4")!)
                destination.player = AVPlayer(URL: path)
            
        }
    }
    
    
    
    /*
    ==================TAREA 2 ================
    Reproducir audio desde internet
    
    */
    
    var audioPlayer : AVAudioPlayer?
    

    @IBAction func playAudioInternet(sender: AnyObject) {
        
        if let player = audioPlayer {
            player.play()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "https://www.dropbox.com/s/sm4ofy9c41ghctc/Living%20on%20my%20own.mp3?dl=0")
        
        var error:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: url!)
        }catch let error1 as NSError{
            error = error1
            audioPlayer = nil
        }
        
        
        if let err = error {
            print("audioPlayer error \(err.localizedDescription)")
        } else {
            audioPlayer?.delegate = self
            audioPlayer?.prepareToPlay()
        }
        
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully
        flag: Bool) {
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!,
        error: NSError!) {
    }
    
    func audioPlayerBeginInterruption(player: AVAudioPlayer!) {
    }
    
    func audioPlayerEndInterruption(player: AVAudioPlayer!) {
    }
    
    /*
    ==================TAREA 3 ================
    Reproducir audio desde el proyecto

    var audioPlayer : AVAudioPlayer?
    
    @IBAction func playAudioProject(sender: AnyObject) {
        
        if let player = audioPlayer {
            player.play()
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("Living on my own", ofType: "mp3")!)
        
        var error:NSError?
        do {
             audioPlayer = try AVAudioPlayer(contentsOfURL: path)
        }catch let error1 as NSError{
            error = error1
            audioPlayer = nil
        }

        
        if let err = error {
            print("audioPlayer error \(err.localizedDescription)")
        } else {
            audioPlayer?.delegate = self
            audioPlayer?.prepareToPlay()
        }
       
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully
        flag: Bool) {
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!,
        error: NSError!) {
    }
    
    func audioPlayerBeginInterruption(player: AVAudioPlayer!) {
    }
    
    func audioPlayerEndInterruption(player: AVAudioPlayer!) {
    }
    
    */

}

