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
    var index : Int = 0
    @IBOutlet weak var labelText: UILabel!
    
    
    @IBOutlet var buttonOutlet: [UIButton]!
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            answerFirst ()
            updateUI()
            
        } else if sender.tag == 1 {
            answerSecond ()
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }
    
    func updateUI() {
        labelText.text = questionText.story[index]
        print(index)
        if index <= 2 {
            buttonOutlet[0].setTitle(answerOptions.answerOptions[index][0], for: .normal)
            buttonOutlet[1].setTitle(answerOptions.answerOptions[index][1], for: .normal)
        }
    }
    
    func answerFirst (){
        if index == 0 || index == 1 {
            index = 2
        } else if index == 2 {
            index = 5
        }
    }
    func answerSecond () {
        if index == 0 {
            index = 1
        } else if index == 1 {
            index = 3
        } else if index == 2 {
            index = 4
        }
    }
    
    

}

