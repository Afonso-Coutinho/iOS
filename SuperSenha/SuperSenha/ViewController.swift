//
//  ViewController.swift
//  SuperSenha
//
//  Created by Afonso Coutinho on 04/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCaracteres: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCaracteres: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let passwordsViewController = segue.destination as! PasswordsViewController
        
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        
        if let numberOfCharacteres = Int(tfNumberOfCaracteres.text!) {
            passwordsViewController.numberOfCharacteres = numberOfCharacteres
        }
        
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useSpecialCharacteres = swSpecialCaracteres.isOn
        
        view.endEditing(true)
    }


}

