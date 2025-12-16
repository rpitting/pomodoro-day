//
//  Item.swift
//  pomodoro-day
//  
//  Created by Reiner Pittinger on 16.12.25
//  Copyright © 2025 ___ORGANIZATIONNAME___. All rights reserved.
    

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
