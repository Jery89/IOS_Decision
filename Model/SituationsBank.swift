//
//  SituationsBank.swift
//  Decyzja
//
//  Created by Jerzy Pilarczyk on 01.10.2018.
//  Copyright © 2018 Jerzy Pilarczyk. All rights reserved.
//

import Foundation

class Situation
{
    var situationNumber = Int()
    var question1 = String()
    var question2 = String()
    var question3 = String()
    var question4 = String()
    var answers = String()

    init (ans:String, que1:String, que2:String, que3:String, que4:String, situationNo:Int)
    {
        answers = ans
        question1 = que1
        question2 = que2
        question3 = que3
        question4 = que4
        situationNumber = situationNo
        
    }

}

