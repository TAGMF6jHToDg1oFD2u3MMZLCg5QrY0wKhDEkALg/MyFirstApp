//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Mike Martin on 12/23/20.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.brown
    }
    @IBAction func showMessage(sender: UIButton)
    {
        let emojiDict: [String: String] = ["🤡": "Clown"]
        var meaning: String?
        
        // The sender is the button that is tapped by the user.
        // Here we store the sender in the selectedButton constant
        let selectedButton = sender
        
        // Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text
        {
            meaning = emojiDict[wordToLookup]
        }
        let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
}

