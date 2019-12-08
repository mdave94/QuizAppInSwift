//
//  CorrectAnswerViewController.swift
//  Quizzler-iOS13
//
//  Created by David on 2019. 12. 07..
//  Copyright © 2019. The App Brewery. All rights reserved.
//

import UIKit


class CorrectAnswerViewController: UIViewController{
    
    var goodAnswer:String?
    
    
    
    @IBOutlet weak var correctAnswerLabel: UILabel!
    
    override func viewDidLoad(){
        
   
         
        
        correctAnswerLabel.text = goodAnswer
        super.viewDidLoad()
        
        
    }
     
    @IBAction func returnToQuestions(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    
    }
    

    
    
    
    
}
