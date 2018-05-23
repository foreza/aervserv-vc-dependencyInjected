//
//  AerServCoin.swift
//  DependencyInjection-VCManager
//
//  Created by Jason C on 5/22/18.
//  Copyright © 2018 Jason C. All rights reserved.
//

import Foundation

class AerServCoin: Currency {
    
    var currencyName: String = "AerServ Coins"
    var shortName: String = "ASC"
    var currencyDescription: String = "Coins that you can use in the AerServ Market!"
    var rewards: Array<String> = ["AerCat", "AerDoge"]
    var smallPresetIncrement: Int = 5
    var mediumPresetIncrement: Int = 50
    var largePresetIncrement: Int = 100
    
    
    var initialAmt: Int = 10
    var ceilingAmt: Int = 1000
    
    func printInformation() {
        print("[VC] This is \(currencyName) - \(currencyDescription)")
    }
    
    func getName() -> String {
        return currencyName
    }
    
    func getDescription() -> String {
        return currencyDescription
    }
    
    func getRewards() -> Array<String> {
        return rewards
    }
    
    
}
