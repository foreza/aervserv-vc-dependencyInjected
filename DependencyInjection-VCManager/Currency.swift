//
//  Currency.swift
//  DependencyInjection-VCManager
//
//  Created by Jason C on 5/22/18.
//  Copyright © 2018 Jason C. All rights reserved.
//

import Foundation

// Each wallet will implement its own currency protocol.
protocol Currency {
    
    var currencyName : String {get set}
    var shortName : String {get set}
    var currencyDescription : String {get set}
    var rewards: Array<String> {get set}
    
    var initialAmt: Int {get set}
    var ceilingAmt: Int {get set}
    var smallPresetIncrement: Int {get set}
    var mediumPresetIncrement: Int {get set}
    var largePresetIncrement: Int {get set}
    
    // Printable method
    func printInformation()
    
    // Get Methods
    func getName() -> String
    func getDescription() -> String
    func getRewards() -> Array<String>
    
    
}
