//
//  ProgrammersRepo.swift
//  IosConWorkShop
//
//  Created by 浜田　智史 on 2018/03/23.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

class ProgrammersRepo {
    var programmers: [Programmer]
    
    init() {
        let Tomofumi = Programmer(firstName: "Tomofumi",
                                    lastName: "Hamada",
                                    emacs: 7,
                                    caffeine: 100,
                                    rating: 10000,
                                    interviewDate: Date(),
                                    favourite: true)
        let James = Programmer(firstName: "James",
                               lastName: "Smith",
                               emacs: 3,
                               caffeine: 300,
                               rating: 20000,
                               interviewDate: Date(),
                               favourite: false)
        
        programmers = [Tomofumi, James]
    }
}
extension ProgrammersRepo: EntityGateway {
    func fetchProgrammers() -> [Programmer] {
        return programmers
    }
}
