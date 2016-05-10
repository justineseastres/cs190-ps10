//
//  ViewController.swift
//  Plist Opener
//
//  Created by Brian Hill on 5/2/16.
//

import UIKit

class TitleViewController: UIViewController {
    
    var plistTitle: String! = nil
    var plistError: String! = nil
    
    @IBOutlet weak var titleTextField: UITextField! = nil

    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        titleTextField.text = plistTitle
        //condition when there is an error
        if plistError != "" {
            errorLabel.text = plistError
            // hide if no error using "hidden" attribute
            errorLabel.hidden = false
        }
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
