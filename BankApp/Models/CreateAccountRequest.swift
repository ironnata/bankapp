//
//  CreateAccountRequest.swift
//  BankApp
//
//  Created by Jongmo You on 23.08.23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

struct CreateAccountRequest: Codable {
    
    let name: String
    let accountType: String
    let balance: Double
    
}
