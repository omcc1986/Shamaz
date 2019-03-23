//
//  ViewController.swift
//  test
//
//  Created by ollie on 13/03/2019.
//  Copyright © 2019 Oliver McConnie. All rights reserved.
//

    import UIKit

    class ViewController: UIViewController {

    let textpast = ["Where were you last sunday morning?", "What was the last film you watched?", "Have you travelled to another city in the past two weeks?", "Have you had any strange dreams lately?", "What was the last youtube video you watched?", "What was the last thing you bourgh online?", "What was the most exciting thing you did last week?", "What did you have for breakfast this morning?", "Have you been leasoning to any music in paticular lately?"]
        @IBOutlet weak var labels: UILabel!
// The UILabel initally displays the title of the game "Shamaz" the game begins on clicking on 'the past' or 'the future' button.

// Below are the questions for 'the past' and 'the future' buttons to play the Shamaz game
    
    let textPast = ["Where were you last sunday morning?",
                    "What was the last film you watched?",
                    "Have you travelled to another city in the past two weeks?",
                    "Have you had any strange dreams lately?",
                    "What was the last youtube video you watched?",
                    "What was the last thing you bourgh online?",
                    "What was the most exciting thing you did last week?",
                    "What did you have for breakfast this morning?",
                    "Have you been leasoning to any music in paticular lately?"]
    
    let textFuture = [ "Any hopes for the week ahead?",
                       "What are you looking forward too in the coming weeks?",
                       "Will you visit another city or town next week, if so where?",
                       "Any plan to eat out anywhere?",
                       "what will you be doing this coming weekend?",
                       "When is your next Holiday?"]
        
        
       
 // IBAction function for the past button randomly selects a question from the let textpast grouping above.
    @IBAction func past() {
        labels.text = textPast[Int.random(int: 0...textPast.count - 1)]
    }
        
// IBAction function for the future button randomly selects a question from the let textfuture grouping above.
    @IBAction func future() {
        labels.text = textFuture[Int.random(int: 0...textFuture.count - 1)]
    }
        
// IBAction function for the next player button generates a randon number from 1-10
    @IBAction func nextplayer() {
        labels.text = String(Int.random(in: 1...10))
    }
    
        @IBAction func inst() {
// This button gives the players the instructions for the game
        
       labels.text = "players Shamaz is a party game, players can choose 'The future' or 'The Past' to prompt a question to share with the group. The next player button can be used to  generating a number from 1 to 10. In this case, the players should form a circle and starting from the active player, count off to identify the nominated person."
        }
}
