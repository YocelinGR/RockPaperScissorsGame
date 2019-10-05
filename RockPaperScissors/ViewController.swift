//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Apple Device 21 on 10/5/19.
//  Copyright © 2019 YocelinGREsmerivero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Robot: UILabel!
    @IBOutlet weak var GameTitle: UILabel!
    @IBOutlet weak var RockButton: UIButton!
    @IBOutlet weak var PaperButton: UIButton!
    @IBOutlet weak var ScissorsButton: UIButton!
    @IBOutlet weak var PlayAgainTitle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        // Do any additional setup after loading the view, typically from a nib.
       PlayAgainTitle.isHidden = true
    }

    @IBAction func Rock(_ sender: UIButton) {
        let randomEmoji = randomSign();
        let emojiString = whatEmiji(emoji: randomEmoji)
        let userEmoji = Sign.piedra
        let gameState = userEmoji.resolverJuego(computerSign: randomEmoji)
        if(gameState == .perder){
            view.backgroundColor = UIColor.red
            Robot.text = emojiString
            GameTitle.isHidden = true
            PaperButton.isHidden = true
            ScissorsButton.isHidden = true
            PlayAgainTitle.isHidden = false
        }
        if(gameState == .ganar){
            view.backgroundColor = UIColor.green
            Robot.text = emojiString
            GameTitle.isHidden = true
            PaperButton.isHidden = true
            ScissorsButton.isHidden = true
            PlayAgainTitle.isHidden = false
        }
        if(gameState == .empatar){
            view.backgroundColor = UIColor.yellow
            Robot.text = emojiString
            GameTitle.isHidden = true
            PaperButton.isHidden = true
            ScissorsButton.isHidden = true
            PlayAgainTitle.isHidden = false
        }
    }
    
    @IBAction func Paper(_ sender: UIButton) {
        let randomEmoji = randomSign();
        let emojiString = whatEmiji(emoji: randomEmoji)
        let userEmoji = Sign.papel
        let gameState = userEmoji.resolverJuego(computerSign: randomEmoji)
        if(gameState == .perder){
            view.backgroundColor = UIColor.red
            Robot.text = emojiString
            GameTitle.isHidden = true
            RockButton.isHidden = true
            ScissorsButton.isHidden = true
            PlayAgainTitle.isHidden = false
        }
        if(gameState == .ganar){
            view.backgroundColor = UIColor.green
            Robot.text = emojiString
            GameTitle.isHidden = true
            RockButton.isHidden = true
            ScissorsButton.isHidden = true
            PlayAgainTitle.isHidden = false
        }
        if(gameState == .empatar){
            view.backgroundColor = UIColor.yellow
            Robot.text = emojiString
            GameTitle.isHidden = true
            RockButton.isHidden = true
            ScissorsButton.isHidden = true
            PlayAgainTitle.isHidden = false
        }
    }
    
    @IBAction func Scissors(_ sender: UIButton) {
        let randomEmoji = randomSign();
        let emojiString = whatEmiji(emoji: randomEmoji)
        let userEmoji = Sign.tijeras
        let gameState = userEmoji.resolverJuego(computerSign: randomEmoji)
        if(gameState == .perder){
            view.backgroundColor = UIColor.red
            Robot.text = emojiString
            GameTitle.isHidden = true
            RockButton.isHidden = true
            PaperButton.isHidden = true
            PlayAgainTitle.isHidden = false
            
        }
        if(gameState == .ganar){
            view.backgroundColor = UIColor.green
            Robot.text = emojiString
            GameTitle.isHidden = true
            RockButton.isHidden = true
            PaperButton.isHidden = true
            PlayAgainTitle.isHidden = false
            
        }
        if(gameState == .empatar){
            view.backgroundColor = UIColor.yellow
            Robot.text = emojiString
            GameTitle.isHidden = true
            RockButton.isHidden = true
            PaperButton.isHidden = true
            PlayAgainTitle.isHidden = false
        }
    }
    func whatEmiji(emoji: Sign) -> String {
        var emojiReturn = ""
        if(emoji == .piedra){
            emojiReturn = "👊"
        }
        if(emoji == .tijeras){
            emojiReturn = "✌️"
        }
        if(emoji == .papel){
            emojiReturn = "👋"
        }
        return emojiReturn
    }
    
    @IBAction func playAgainClicked(_ sender: UIButton) {
        view.backgroundColor = UIColor.white
        Robot.text = "🤖"
        GameTitle.isHidden = false
        RockButton.isHidden = false
        PaperButton.isHidden = false
        ScissorsButton.isHidden = false
        PlayAgainTitle.isHidden = true
    }
}

