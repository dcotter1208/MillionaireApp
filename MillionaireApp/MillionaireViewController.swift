//
//  ViewController.swift
//  MillionaireApp
//
//  Created by Donovan Cotter on 10/19/15.
//  Copyright © 2015 DonovanCotter. All rights reserved.
//

import UIKit

class MillionaireViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var gameLogo: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    var questionsModel = Question?()
    var round = Round?()
    var gameRound = GameRound?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        questionLabel.text = roundOne.questions[0].question
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = roundOne.questions[0].possibleAnswers[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let controller = self.storyboard!.instantiateViewControllerWithIdentifier("MillionaireViewController") as! MillionaireViewController
        
    }
}


