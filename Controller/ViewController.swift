//
//  ViewController.swift
//  DestiniApp
//
//  Created by Getu Gebre on 2/26/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var questionText = Story()
    var answerOptions = AnswerOptions()
    @IBOutlet weak var labelText: UILabel!
    
    
    @IBOutlet var buttonOutlet: [UIButton]!
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            
        } else if sender.tag == 1 {
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelText.text = questionText.story[0]
        buttonOutlet[0].setTitle(answerOptions.answerOptions[0][0], for: .normal)
        buttonOutlet[1].setTitle(answerOptions.answerOptions[0][1], for: .normal)
    }
    
    func updateUI() {
        
    }
    
    func answer (){
        
    }
    
    

}

