//
//  TransferFundResponse.swift
//  BankApp
//
//  Created by Jongmo You on 25.08.23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import Foundation


struct TransferFundResponse: Decodable {
    let success: Bool
    let error: String?
}
