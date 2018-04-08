//
//  ProgrammerCellView.swift
//  IosConWorkShop
//
//  Created by 浜田　智史 on 2018/03/23.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

protocol ProgrammerCellView {
    func display(name: String)
    func display(date: String)
    func display(favourite: Bool)
}
