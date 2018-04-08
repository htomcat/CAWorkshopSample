//
//  ProgrammerResponse.swift
//  IosConWorkShop
//
//  Created by 浜田　智史 on 2018/03/23.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

struct ProgrammerResponse {
    let fullName: String
    let date: Date
    let favaurite: Bool
}

extension ProgrammerResponse {
    init(programmer: Programmer) {
        fullName = programmer.fullName
        date = programmer.interviewDate
        favaurite = programmer.favourite
    }
}
