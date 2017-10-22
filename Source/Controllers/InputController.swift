//
//  InputController.swift
//  Venga
//
//  Created by David Richards on 4/29/17.
//  Copyright © 2017 David Richards. All rights reserved.
//

import UIKit

open class InputController: UIViewController {

    override open func viewDidLoad() {
        super.viewDidLoad()

        // dismiss keyboard on tap
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tap)
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func dismissView() {
        self.dismiss(animated: true, completion: nil)
    }

}
