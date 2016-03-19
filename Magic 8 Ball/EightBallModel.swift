//
//  EightBallModel.swift
//  Magic 8 Ball
//
//  Created by Stuart on 8/03/2016.
//  Copyright © 2016 Stuart. All rights reserved.
//

import Foundation

class EightBallModel:CustomStringConvertible,CustomDebugStringConvertible {
    static let initailRespenseArray = ["🐎","Mom","Dad","Cousin"]
    
    var responseArray :[String]?
    
    init(){
        responseArray = EightBallModel.initailRespenseArray
    }
    
    init(extraResponseArray:Array<String>){
        responseArray = EightBallModel.initailRespenseArray + extraResponseArray
    }
    
    var description :String{
        var 😃 = ""
        //Use a for loop to create a string based on the elements inside of response array
        for response in responseArray!{
            😃 += response
        }
        return 😃
    }
    
    var debugDescription:String{
        //Use a for loop to create a string based on the elements inside of response array 
        //Make sure the string starts with the word "Debug:"
        var str = "Debug: "
        //Use a for loop to create a string based on the elements inside of response array
        for response in responseArray!{
            str += response
        }
        return str
    }
}


