//
//  QAndA.swift
//  MillionaireApp
//
//  Created by Craig Carlson on 10/19/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var possibleAnswers = [String]()
    var correctAnswer: String
    
}


struct Round {
    var name = String()
    var questions = [Question]()
    
    func randomQuestion() -> Question {
        let unsignedArrayCount = UInt32(questions.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return questions[randomNumber]
    }
    
    func chooseAnswer(selectedRow: String) {
        if selectedRow == randomQuestion().correctAnswer {
            print("You chose the right answer")
        } else {
            print("You're wrong.")
        }
    }
    
}

struct GameRound {
    var rounds = [Round]()
}


//Mark: Instances of the structs...this is where our game questions are.


var gameRounds = GameRound(rounds: [roundOne, roundTwo, roundThree])

//Round One Questions
var roundOneQuestionOne = Question(question: "Who played Beetlejuice in the 1988 film “Beetlejuice”?", possibleAnswers: ["Michael Keaton", "Alec Baldwin", "Johnny Depp", "Jeffery Jones"], correctAnswer: "Michael Keaton")
var roundOneQuestionTwo = Question(question: "The Civil War started in what year?", possibleAnswers: ["1865", "1861", "1859", "1869"], correctAnswer: "1961")
var roundOneQuestionThree = Question(question: "Who was the 18th president of the United States of America?", possibleAnswers: ["Ulysses S. Grant", "Andrew Johnson", "Grover Cleveland", "William McKinley"], correctAnswer: "Ulysses S. Grant")
var roundOneQuestionFour = Question(question: "Who voiced the character of Buzz Lightyear in the Toy Story films?", possibleAnswers: ["Tom Hanks", "John Ratzenberger", "Tim Allen", "Don Rickles"], correctAnswer: "Tim Allen")
var roundOneQuestionFive = Question(question: "What is the approximate elevation of the city of Denver, CO?", possibleAnswers: ["6,340'", "14,780'", "3,920'", "5,280'"], correctAnswer: "5,280'")
var roundOneQuestionSix = Question(question: "What was the date of the D-Day invasion of Normandy?", possibleAnswers: ["May 11th, 1941", "June 1st, 1942", "June 6th, 1944", "July 4th, 1945"], correctAnswer: "June 6th, 1944")
var roundOneQuestionSeven = Question(question: "Which country was not part of the Axis Forces in WWII?", possibleAnswers: ["Germany", "Italy", "China", "Japan"], correctAnswer: "China")
var roundOneQuestionEight = Question(question: "What was the name of the theater where John Wilkes Booth shot Abraham Lincoln?", possibleAnswers: ["Sydney Opera House", "The Globe", "Carnegie Hall", "Ford Theater"], correctAnswer: "Ford Theater")
var roundOneQuestionNine = Question(question: "Which city does not have an NFL football team?", possibleAnswers: ["Detroit", "Las Vegas", "Houston", "Kansas City"], correctAnswer: "Las Vegas")

//Round Two Questions
var roundTwoQuestionOne = Question(question: "This tech mogul founded Broadcast.com and sold it to Yahoo in 1999", possibleAnswers: ["Mark Cuban", "Peter Thiel", "John McAfee", "Max Levchin"], correctAnswer: "Mark Cuban")
var roundTwoQuestionTwo = Question(question: "In which Indian Jones movies does Indiana Jones go on a quest for the holy grail?", possibleAnswers: ["Raiders of the Lost Ark", "The Last Crusade", "Temple of Doom", "Kingdom of the Crystal Skull"], correctAnswer: "The Last Crusade")
var roundTwoQuestionThree = Question(question: "The 2007 finance book “Grande Expectations” Chronicles what U.S. company’s stock prices?", possibleAnswers: ["Tim Horton's", "Starbucks", "Biggby Coffee", "Dunkin' Donuts"], correctAnswer: "Starbucks")
var roundTwoQuestionFour = Question(question: "Which ficticous person was not a character in the movie 'A Few Good Men'?", possibleAnswers: ["Capt. Jack Ross", "Lance Cpl. Harold W. Dawson", "Col. Nathan R. Jessup", "Seargeant Michael Horvath"], correctAnswer: "Sergeant Michael Horvath")
var roundTwoQuestionFive = Question(question: "Inside of a star, what element is formed after the fusion of two hydrogen molecules?", possibleAnswers: ["Helium", "Carbon", "Oxygen", "Nitrogen"], correctAnswer: "Helium")
var roundTwoQuestionSix = Question(question: "Who attempted the assassination of President Ronald Reagan in 1981?", possibleAnswers: ["John Wilkes Booth", "Mark David Chapman", "James Earl Ray", "John Hinkley, Jr."], correctAnswer: "John Hinkley, Jr.")
var roundTwoQuestionSeven = Question(question: "Which famous virologist discovered the first vaccine for polio in the 20th century?", possibleAnswers: ["Louie Pasteur", "Madame Curie", "Jonas Salk", "Philip Roth"], correctAnswer: "Jonas Salk")
var roundTwoQuestionEight = Question(question: "What is the name of the geographical feature on the southern point of Chile in South America where the Pacific and Atlantic Oceans meet?", possibleAnswers: ["Strait of Gibraltar", "The Bering Sea", "The Bay of Pigs", "Cape Horn"], correctAnswer: "Cape Horn")
var roundTwoQuestionNine = Question(question: "Which famous author coined ther term 'The Lost Generation' to describe the generation that came of age during the First World War", possibleAnswers: ["Ernest Hemingway", "Suzanne Collins", "Charles Dickens", "Ernest Borgnine"], correctAnswer: "Ernest Hemingway")

//Round Three Questions
var roundThreeQuestionOne = Question(question: "In a memorable scene from “Beverly Hills Cop,” what does Detective Axel Foley use to disable a car?", possibleAnswers: ["Potatoes", "Bananas", "Shoe Laces", "Towels"], correctAnswer: "Bananas")
var roundThreeQuestionTwo = Question(question: "After Russia, what is the largest country in the world by land area?", possibleAnswers: ["China", "Mexico", "Canada", "Brazil"], correctAnswer: "Canada")
var roundThreeQuestionThree = Question(question: "Which of these was not a member of the original cast of “Saturday Night Live”?", possibleAnswers: ["Bill Murray", "Dan Aykroyd", "Chevy Chase", "John Belushi"], correctAnswer: "Bill Murray")
var roundThreeQuestionFour = Question(question: "What kind of hamburger does Jules Winfield try in the film 'Pulp Fiction'?", possibleAnswers: ["In and Out Burger", "Big Kahuna Burger", "Jack in the Box Burger", "Royale Burger"], correctAnswer: "Big Kahuna Burger")
var roundThreeQuestionFive = Question(question: "Which particle theory did the LHC provide evidence for in 2012?", possibleAnswers: ["Neutrinos", "Higgs Boson", "Tachyons", "Antimatter"], correctAnswer: "Higgs Boson")
var roundThreeQuestionSix = Question(question: "How many men signed the Declaration of Independence in 1776?", possibleAnswers: ["47", "51", "56", "62"], correctAnswer: "56")
var roundThreeQuestionSeven = Question(question: "The Emmy Award-winning mini-series Band of Brothers was based on the book of the same name written by which famous author?", possibleAnswers: ["David McCullough", "Stephen Ambrose", "David Foster Wallace", "George Plimpton"], correctAnswer: "Stephen Ambrose")
var roundThreeQuestionEight = Question(question: "Which Academy Award-winning actor had one of his first major roles portraying the reclusive character Boo Radley in the film 'To Kill a Mockingbird", possibleAnswers: ["Robert Duvall", "Marlon Brando", "Al Pacino", "Martin Sheen"], correctAnswer: "Robert Duvall")



var roundOne = Round(name: "Round One", questions: [roundOneQuestionOne, roundOneQuestionTwo, roundOneQuestionThree, roundOneQuestionFour, roundOneQuestionFive, roundOneQuestionSix, roundOneQuestionSeven, roundOneQuestionEight, roundOneQuestionNine])
var roundTwo = Round(name: "Round Two", questions: [roundTwoQuestionOne, roundTwoQuestionTwo, roundTwoQuestionThree, roundTwoQuestionFour, roundTwoQuestionFive, roundTwoQuestionSix, roundTwoQuestionSeven, roundTwoQuestionEight, roundTwoQuestionNine])
var roundThree = Round(name: "Round Three", questions: [roundThreeQuestionOne, roundThreeQuestionTwo, roundThreeQuestionThree, roundThreeQuestionFour, roundThreeQuestionFive, roundThreeQuestionSix, roundThreeQuestionSeven, roundThreeQuestionEight])


