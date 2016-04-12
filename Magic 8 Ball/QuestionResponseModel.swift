//
//  QuestionResponseModel.swift
//  Magic 8 Ball
//
//  Created by Stuart on 5/04/2016.
//  Copyright © 2016 Stuart. All rights reserved.
//

import Foundation

class QuestionResponseModel:NSObject, NSCoding{
    
    required init(coder decoder: NSCoder) {
        super.init()
    }
    
    var storeArray = [String:String]()
    
    func setArray(question: String, answer: String){
        storeArray.
    }
    
}
