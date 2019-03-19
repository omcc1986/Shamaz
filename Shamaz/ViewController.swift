//
//  ViewController.swift
//  test
//
//  Created by ollie on 13/03/2019.
//  Copyright © 2019 Oliver McConnie. All rights reserved.
//

    import UIKit

    class ViewController: UIViewController {

        
// Below are the questions for 'the past' and 'the future' buttons to play the Shamaz game
    
    let textpast = ["Where were you last sunday morning?", "What was the last film you watched?", "Have you travelled to another city in the past two weeks?", "Have you had any strange dreams lately?", "What was the last youtube video you watched?", "What was the last thing you bourgh online?", "What was the most exciting thing you did last week?", "What did you have for breakfast this morning?", "Have you been leasoning to any music in paticular lately?"]
    
    let textfuture = [ "Any hopes for the week ahead?", "Will you visit another city or town next week, if so where?", "When is your next Holiday?", "What are you looking forward too in the coming weeks?", "Any plan to eat out anywhere?", "what will you be doing this coming weekend?"]
    
        
// the Next player button generates a randon number from 1-10, this allows the players to count around to the next player.
    let textnextplayer = ["1","2","3","4","5","6","7","8","9","10"]
    
    
    @IBOutlet weak var Labels: UILabel!
// The UILabel initally displays the title of the game "Shamaz" the game begins on clicking on 'the past' or 'the future' button.
    
    @IBAction func past() {
// IBAction function for the past button randomly selects a question from the let textpast grouping above.
        
        let randomTextpastIndex =
            Int(arc4random_uniform(UInt32(textpast.count)))
        let randomTextpast = textpast[randomTextpastIndex]
   
        Labels.text = randomTextpast
        
    }
    
    @IBAction func future() {
// IBAction function for the future button randomly selects a question from the let textfuture grouping above.
        
        let randomTextfutureIndex = Int(arc4random_uniform(UInt32(textfuture.count)))
        let randomTextfuture = textfuture[randomTextfutureIndex]
        
        Labels.text = randomTextfuture
        
    
    }
    
    @IBAction func nextplayer() {
// IBAction function for the next player button generates a randon number from 1-10
    
        let randomTextnextplayerIndex = Int(arc4random_uniform(UInt32(textnextplayer.count)))
        let randomTextnextplayer = textnextplayer[randomTextnextplayerIndex]
        
        Labels.text = randomTextnextplayer
        
    }
    
        @IBAction func inst() {
// This button gives the players the instructions for the game
        
       Labels.text = "players Shamaz is a party game, players can choose 'The future' or 'The Past' to prompt a question to share with the group. The next player button can be used to  generating a number from 1 to 10. In this case, the players should form a circle and starting from the active player, count off to identify the nominated person."
            
            
            
        }
}
