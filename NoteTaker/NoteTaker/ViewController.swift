//
//  ViewController.swift
//  NoteTaker
//
//  Created by Büşra Gezer on 13.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var birthdayInput: UITextField!
    @IBOutlet weak var nameOutput: UILabel!
    @IBOutlet weak var birthdayOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // Casting - as? vs. as!
       
        if let newName = storedName as? String {
            nameOutput.text = "Name: \(newName)"
        }
        if let newBirthday = storedBirthday as? String {
            birthdayOutput.text = "Birthday: \(newBirthday)"
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameInput.text!, forKey: "name")
        UserDefaults.standard.set(birthdayInput.text!, forKey: "birthday")
        
        nameOutput.text = "name: \(nameInput.text!)"
        birthdayOutput.text = "birthday: \(birthdayInput.text!)"
        
    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // "" vs. nil
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameOutput.text = "Name: "
        }
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayOutput.text = "Birthday: "
        }
        
    }
    
    
}

