//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Afonso Coutinho on 04/09/22.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacteres:Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacteres: Bool!
    
    var passwordGenarator: PasswordGenarator!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de senhas: \(numberOfPasswords)"
        
        passwordGenarator = PasswordGenarator(numberOfCharacteres: numberOfCharacteres, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacteres: useSpecialCharacteres)
        
        
        genaratePasswords()
    }
    
    func genaratePasswords() {
                
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        
        tvPasswords.text = ""
        
        let passwords = passwordGenarator.genarate(total: numberOfPasswords)
        
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
        }
    }
    
    @IBAction func generate(_ sender: UIButton) {
        genaratePasswords()
    }
    
}
