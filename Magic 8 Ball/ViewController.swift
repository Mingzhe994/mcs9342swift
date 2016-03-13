//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Stuart on 8/03/2016.
//  Copyright © 2016 Stuart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Name: Mingzhe")
        
        let age:Double = 28
        print("Age: ", age)
        
        let name = "Mingzhe"
        
        print("Name: ", name)
    
        
        let extraR = ["God father","good"]
        let myGame = EightBallModel(extraResponseArray: extraR);
        
        /* 1.6*/
        print("Who gives you money?")
        print(myGame.responseArray![0])
        
        print("Who feeds you?")
        print(myGame.responseArray![1])
        
        print("Who protects you from the Mafia?")
        print(myGame.responseArray![2])
        
        let questions = ["hey, Who gives you money?","hey, Who feeds you?","hey, Who protects you from the Mafia?"]
        
        //1.7
        for (index,question) in questions.enumerate(){
            print(question)
            print(myGame.responseArray![index])
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

