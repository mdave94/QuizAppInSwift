//
//  QuestionViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    //Buttons outlets for change the UI
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
   
    var quizBrain = QuizBrain()
    
   
    
    override func viewDidLoad() {
        
        
            
        super.viewDidLoad()
        
        //refreshing the UI
        updateUI()
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        
       
        
        //true or false button title
        let userAnswer = sender.currentTitle!
       
        
        
        if quizBrain.checkAnswer(userAnswer) {
           
            sender.backgroundColor = UIColor.green
            
        }else {
            
            trueButton.backgroundColor = UIColor.clear
            sender.backgroundColor = UIColor.red
            self.performSegue(withIdentifier:"goToAnswer",sender: sender)
        }
        
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
         


        
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToAnswer" {
            let destinationVC = segue.destination as! CorrectAnswerViewController
            
            destinationVC.goodAnswer = quizBrain.getAnswer()
            
        }
        
        
    }
    
    
   //couse of timer.scheduledtimer func I need an Objective C annotation
   @objc func updateUI()   {
    scoreLabel.text = "Score: \(quizBrain.getScore())"
         questionLabel.text = quizBrain.getQuestionText()
        //questionLabel.text = quizBrain.getAnswer()
         trueButton.backgroundColor = UIColor.clear
         falseButton.backgroundColor = UIColor.clear
         
        
        progressBar.progress = quizBrain.getProgress()
    
    
    }
    
    
}

