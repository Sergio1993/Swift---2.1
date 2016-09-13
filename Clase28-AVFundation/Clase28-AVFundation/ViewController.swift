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
    Reproducir un video desde internet FUNCIONA ---> OK
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? AVPlayerViewController{
            if let url = NSURL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"){
                destination.player = AVPlayer(URL: url)
                destination.player?.play()
            }
        }
    }

    /*
    ==================TAREA 1 ================
    Reproducir video desde el proyecto FUNCIONA ---> OK
    */
    /*
    var moviePlayer : AVPlayerViewController!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let destination = segue.destinationViewController as? AVPlayerViewController{
            let path = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("Pato donald", ofType: "mp4")!)
                destination.player = AVPlayer(URL: path)
                destination.player?.play()
                
        }
    }
    */
    /*
    ==================TAREA 2 ================
    Reproducir audio desde internet FUNCIONA ---> NO
    */
    
    var audioPlayer : AVAudioPlayer?
    

    @IBAction func playAudioInternet(sender: AnyObject) {
        
        //let url = "https://www.dropbox.com/s/sm4ofy9c41ghctc/Living%20on%20my%20own.mp3"
        let path = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("https://www.dropbox.com/s/sm4ofy9c41ghctc/Living%20on%20my%20own", ofType: "mp3")!)
        //Declaration
        var hitSoundPlayer: AVAudioPlayer?
        
        //Added into the didMoveToView(view: SKView) Function
        do {
            hitSoundPlayer = try AVAudioPlayer(contentsOfURL: path)
            hitSoundPlayer!.prepareToPlay()
        } catch _ {
            hitSoundPlayer = nil
        }
        
        //When you want to play it
        hitSoundPlayer!.play()
        
    }
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully
        flag: Bool) {
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer,
        error: NSError?) {
    }
    
    func audioPlayerBeginInterruption(player: AVAudioPlayer) {
    }
    
    func audioPlayerEndInterruption(player: AVAudioPlayer) {
    }
    
    func wav(filename:NSString) -> AVAudioPlayer {
        let url = NSBundle.mainBundle().URLForResource(filename as String, withExtension: "mp3")
        let player = try!  AVAudioPlayer(contentsOfURL: url!)
        player.prepareToPlay()
        player.volume = 0.2
        return player
    }

    /*
    ==================TAREA 3 ================
    Reproducir audio desde el proyecto FUNCIONA ---> OK
    */
    /*
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
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully
        flag: Bool) {
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer,
        error: NSError?) {
    }
    
    func audioPlayerBeginInterruption(player: AVAudioPlayer) {
    }
    
    func audioPlayerEndInterruption(player: AVAudioPlayer) {
    }
    
    */
    
    /*
    Crea una aplicación que reproduzca un array de archivos de audio, alojados en el proyecto. FUNCIONA ---> OK
    */

    /*
    var audioPlayer : AVAudioPlayer?
    
    var canciones: [String] = ["arkasia-back_as_one_original_mix", "stefano_gambarelli_feat_pochill-land_on_mars_v2"]
    var counter = 0
    
    @IBAction func playArrayProject(sender: AnyObject) {
        
        music()
        
        
    }
    
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer, successfully
        flag: Bool) {
            
        print("Called")
        print("counter\(counter)Canciones\(canciones.count)")
        if (counter == canciones.count-1){
                player.stop()
        }
            
        if flag {
            counter++
        }
            
        if ((counter + 1) == canciones.count) {
            counter = 0
        }
            
        
            
        music()
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer,
        error: NSError?) {
    }
    
    func audioPlayerBeginInterruption(player: AVAudioPlayer) {
    }
    
    func audioPlayerEndInterruption(player: AVAudioPlayer) {
    }
    
    func music(){
        
        let path = NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("\(canciones[counter])", ofType: "mp3")!)
        var error : NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: path)
        }catch let error1 as NSError{
            error = error1
            audioPlayer = nil
        }

        audioPlayer!.delegate = self
        if error == nil {
            audioPlayer!.delegate = self
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        }

    }*/

}




