//
//  audioViewController.swift
//  Final_App_Igbo
//
//  Created by Cuza Onyeagba on 4/25/17.
//  Copyright © 2017 Cuza Onyeagba. All rights reserved.
//

import UIKit
// note that AVFoundation  is imported below
import AVFoundation

class audioViewController: UIViewController, AVAudioPlayerDelegate {
    // jukebox variable tied to AVAudioPlayer
    var jukeBox: AVAudioPlayer?
    
    var currentSong = 0
    @IBAction func next(_ sender: Any) {
        currentSong+=1
        chooseSong()
    }
    @IBAction func prev(_ sender: Any) {
        currentSong-=1
        chooseSong()
    }
    //imageOutlet
    @IBOutlet weak var show: UIImageView!
    //textField
    @IBOutlet weak var describePic: UILabel!
    //action for button to stop audio
    @IBAction func play(_ sender: Any) {
        if let player = jukeBox {
            player.play()
        }
    }
    @IBAction func pause(_ sender: Any) {
        if let player = jukeBox {
            player.stop()
        }
    }
    //volumeControl
    @IBOutlet weak var volume: UISlider!
    @IBAction func volumeControl(_ sender: Any) {
        if jukeBox != nil {
            jukeBox?.volume = volume.value
        }
    }
    
    
    func chooseSong(){
        if(currentSong == playSong.count){
            currentSong=0
        }
        if(currentSong < 0)
            {currentSong=playSong.count-1}
        
        let displayPic = UIImage(named: songImgs[currentSong])
        show.image=displayPic
        describePic.text=songDescriptions[currentSong]
        
        playMe(theSong: playSong[currentSong])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseSong()
        
         let currentPic = UIImage(named: songImgs [currentSong])
         show.image = currentPic
        
        let currentText = songDescriptions[currentSong] 
        describePic.text = currentText
        
    }
    
/*
    //outlet for slider value to pass to determine when to start song
    @IBOutlet weak var slydeData: UISlider!
   */
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // this function does all of the work for loading audio
    func playMe(theSong: String) {
        // the 'let url' line below sets the path; theSong is the name of the audio file minus the suffix.
        //This line will trigger an error if you misspell the name of an audio file!
        let url = URL.init(fileURLWithPath: Bundle.main.path(forResource: theSong, ofType: "mp3")!)
        // the "do" instructions set everything up to play
        do {
            try jukeBox = AVAudioPlayer(contentsOf: url)
            jukeBox?.delegate = self
            jukeBox?.prepareToPlay()
        } catch let error as NSError {
            print("audioPlayer error \(error.localizedDescription)")
        }
        
        // this line tells the jukebox to play!
        if let player = jukeBox {
            player.play()
        }
        
    }

}
