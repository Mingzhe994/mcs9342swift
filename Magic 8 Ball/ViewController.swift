//
//  ViewController.swift
//  Magic 8 Ball iii
//
//  Created by Stuart on 8/03/2016.
//  Copyright © 2016 Stuart. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
   
    @IBOutlet weak var backGround: UIImageView!
    
    @IBOutlet weak var circle: UIImageView!
    
    @IBOutlet weak var smallUIview: UIView!
    
    @IBOutlet weak var questionField: UITextField!
    
    @IBOutlet weak var answerLable: UILabel!
    
    var questionResponseArray = [QuestionResponseModel]()
    
    @IBAction func shakeButtonPress(sender: AnyObject) {
        //changeText(self)
        
        
    }
    
    var count = 0
    let extraR = ["God father","good"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questionField.delegate=self
       
        print("Name: Mingzhe")
        
        let age:Double = 28
        print("Age: ", String(format: "%0.2f", age))
        
        let name = "Mingzhe"
        
        print("Name: ", name)
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
        
        
        if let loadedQuestions = NSKeyedUnarchiver.unarchiveObjectWithFile(QuestionResponseModel.ArchiveURL.path!) as? [QuestionResponseModel] {
            questionResponseArray = loadedQuestions
        }

    }

        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(questionField: UITextField) -> Bool {
        questionField.resignFirstResponder()
        changeText(questionField.text!)
        return false
    }
    
    func couterForResponsers() -> Int{
         count += 1
        return count
    }
    
    func changeText(sender: AnyObject){
        let tmpGame = EightBallModel()
        let posImage = arc4random() % UInt32((tmpGame.responseArray?.count)!)
        let pos = couterForResponsers()
        
        let imageString = ["circle1","circle2","circle3","circle4","circle5","circle6"]
        if answerLable.alpha == 0{
            answerLable.alpha = 1
        }
        
        let labAnswer = tmpGame.responseArray![pos % (tmpGame.responseArray?.count)!]
        
        answerLable.text = labAnswer
        
        
        
        circle.image = UIImage(named: imageString[Int(posImage)])
        
        questionResponseArray.append(QuestionResponseModel(question: sender as! String, answer: labAnswer))
        UIView.animateWithDuration(1, animations: {self.answerLable.alpha = 0})
        
        
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(questionResponseArray, toFile: QuestionResponseModel.ArchiveURL.path!)
        if(isSuccessfulSave) {
            print("Successful save")
        }
    }
    
    //override func viewDidAppear(animated: Bool){
    //    UIView.animateWithDuration(1, animations: {self.answerLable.alpha = 0})
    //}
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let nav = segue.destinationViewController as! UINavigationController
        let addEventViewController = nav.topViewController as! HistoryViewController
        addEventViewController.questionArray = questionResponseArray
        
    }
}

