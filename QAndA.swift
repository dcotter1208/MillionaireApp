//
//  QAndA.swift
//  MillionaireApp
//
//  Created by Craig Carlson on 10/19/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import Foundation

struct Question {
    var question = String()
    var possibleAnswers = [String]()
    var correctAnswer = String()
}

struct RoundOne {
    let questions = [questionOneRoundOne, questionTwoRoundOne]
    
    func chooseAnswer(selectedRow: String) {
        if selectedRow == randomQuestion().correctAnswer {
            print("You chose the right answer")
        } else {
            print("You're wrong.")
        }
    }
    
    func randomQuestion() -> Question {
        let unsignedArrayCount = UInt32(questions.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return questions[randomNumber]
    }
    
}



struct RoundTwo {
    let questions = [questionOneRoundTwo, questionTwoRoundTwo]
    
    func chooseAnswer(selectedRow: String) {
        if selectedRow == randomQuestion().correctAnswer {
            print("You chose the right answer")
        } else {
            print("You're wrong.")
        }
    }
    
    func randomQuestion() -> Question {
        let unsignedArrayCount = UInt32(questions.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return questions[randomNumber]
    }

}

struct RoundThree {
    let questions = [questionOneRoundThree, questionTwoRoundThree]
    
    func chooseAnswer(selectedRow: String) {
        if selectedRow == randomQuestion().correctAnswer {
            print("You chose the right answer")
        } else {
            print("You're wrong.")
        }
    }
    
    func randomQuestion() -> Question {
        let unsignedArrayCount = UInt32(questions.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return questions[randomNumber]
    }

}

var questionOneRoundOne = Question(question: "how old am i", possibleAnswers: ["1", "2", "3", "4"], correctAnswer: "2")
var questionTwoRoundOne = Question(question: "Do you stink?", possibleAnswers: ["yes", "no"], correctAnswer: "yes")

var questionOneRoundTwo = Question(question: "how old am i", possibleAnswers: ["1", "2", "3", "4"], correctAnswer: "2")
var questionTwoRoundTwo = Question(question: "Do you stink?", possibleAnswers: ["yes", "no"], correctAnswer: "yes")

var questionOneRoundThree = Question(question: "how old am i", possibleAnswers: ["1", "2", "3", "4"], correctAnswer: "2")
var questionTwoRoundThree = Question(question: "Do you stink?", possibleAnswers: ["yes", "no"], correctAnswer: "yes")






    






//func chooseAnswer(selectedRow: String) {
//    if selectedRow == roundOne.questions[0].correctAnswer {
//        print("You chose the right answer")
//    } else {
//        print("You're wrong.")
//    }
//}

