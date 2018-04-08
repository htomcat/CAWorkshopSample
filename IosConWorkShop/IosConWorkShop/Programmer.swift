//
//  Programmer.swift
//  IosConWorkShop
//
//  Created by 浜田　智史 on 2018/03/22.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

struct Programmer {
    let firstName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    let emacs: Int
    let caffeine: Int
    let rating: Int
    let interviewDate: Date
    let favourite: Bool
}
