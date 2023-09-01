//
//  CreateAccountResponse.swift
//  BankApp
//
//  Created by Jongmo You on 23.08.23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation

struct CreateAccountResponse: Decodable {
    let success: Bool
    let error: String?
}
