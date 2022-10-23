//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Afonso Coutinho on 04/09/22.
//

import Foundation

class PasswordGenarator {
    
    var numberOfCharacteres: Int
    var useLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacteres: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharacters = "!0#$% &*()_-+=~/IC': ;?/<>.,"
    private let numbers = "0123456789"
    
    init(numberOfCharacteres: Int, useLetters: Bool, useNumbers: Bool, useCapitalLetters: Bool, useSpecialCharacteres: Bool) {
        
        var numChar = min(numberOfCharacteres, 16)
        numChar = max(numChar, 1)
        
        self.numberOfCharacteres = numChar
        self.useLetters = useLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialCharacteres = useSpecialCharacteres
    }
    
    func genarate (total: Int) -> [String] {
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters {
            universe += letters
        }
        
        if useNumbers {
            universe += numbers
        }
        
        if useCapitalLetters {
            universe += letters.uppercased()
        }
        
        if useSpecialCharacteres {
            universe += specialCharacters
        }
        
        let universeArray = Array(universe)
        
        while passwords.count < total {
            var password = ""
            
            for _ in 1 ... numberOfCharacteres {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        
        return passwords
    }
    
}
