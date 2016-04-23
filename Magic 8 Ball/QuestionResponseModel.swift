//
//  QuestionResponseModel.swift
//  Magic 8 Ball
//
//  Created by Stuart on 5/04/2016.
//  Copyright © 2016 Stuart. All rights reserved.
//

import Foundation

class QuestionResponseModel:NSObject, NSCoding{
    
    var question: String
    var answer: String
    
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("questions.plist")
    
    // Memberwise initializer
    init(question: String, answer: String){
        self.question = question
        self.answer = answer
        
    }
    
    // MARK: NSCoding
    
    required convenience init?(coder decoder: NSCoder) {
        guard let question = decoder.decodeObjectForKey("question") as? String,
            let answer = decoder.decodeObjectForKey("answer") as? String
            else { return nil }

        self.init(
            question: question,
            answer: answer
        )
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encodeObject(self.question, forKey: "question")
        coder.encodeObject(self.answer, forKey: "answer")
        
    }
}

