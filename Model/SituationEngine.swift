//
//  SituationEngine.swift
//  Decyzja
//
//  Created by Jerzy Pilarczyk on 01.10.2018.
//  Copyright © 2018 Jerzy Pilarczyk. All rights reserved.
//

import Foundation

class Engine
{
    
    var situationTab = [Situation]()
    var eventModelarr = [[Int]]()
    var presentSitation = 0
    
    // baza danych dla view - biblioteka sytuacji
    init ()
    {
        situationTab.append(Situation(ans: "huston we have truble", que1: "1", que2: "2", que3: "3", que4: "4", situationNo: 0))
        situationTab.append(Situation(ans: "pressure status in shell was decreased", que1: "1", que2: "2", que3: "3", que4: "4", situationNo: 1))
        situationTab.append(Situation(ans: "", que1: "1", que2: "2", que3: "3", que4: "4", situationNo: 2))
        situationTab.append(Situation(ans: "4", que1: "1", que2: "2", que3: "3", que4: "4", situationNo: 3))
        situationTab.append(Situation(ans: "5", que1: "1", que2: "2", que3: "3", que4: "4", situationNo: 4))
        situationTab.append(Situation(ans: "hurra", que1: "1", que2: "2", que3: "3", que4: "4", situationNo: 5))
        
        // tablica zdarzen
        eventModelarr[0][0]=5
        eventModelarr[1][0]=5
        eventModelarr[2][0]=5
        eventModelarr[3][0]=5
        eventModelarr[0][1]=5
        eventModelarr[1][1]=5
        eventModelarr[2][1]=5
        eventModelarr[3][1]=5
        eventModelarr[0][2]=5
        eventModelarr[1][2]=5
        eventModelarr[2][2]=5
        eventModelarr[3][2]=5
        eventModelarr[0][3]=5
        eventModelarr[1][3]=5
        eventModelarr[2][3]=5
        eventModelarr[3][3]=5
        eventModelarr[0][4]=5
        eventModelarr[1][4]=5
        eventModelarr[2][4]=5
        eventModelarr[3][4]=5
        eventModelarr[0][5]=5
        eventModelarr[1][5]=5
        eventModelarr[2][5]=5
        eventModelarr[3][5]=5
        eventModelarr[0][5]=6
        eventModelarr[1][5]=6
        eventModelarr[2][5]=6
        eventModelarr[3][5]=6
    }
    
    // Model zachowania zapisany w tablicy: decyzja/obecnasytuacja = nowa sytuacja
    
    func eventEngine(presentSitu:Int, decysion:Int)->Int
    {
    
    return eventModelarr[decysion][presentSitu]
    
    }
    // zwracja dane o sytuacji
    func getSituation(sitNo:Int)->Situation{
        
        return situationTab[sitNo]
    }
    func setPresentsituation(sitNo:Int)
    {
        presentSitation=sitNo
    }
    func getPresentsituation()->Int
    {
        return presentSitation
    }
}

