//
//  ShowProgrammerListUseCase.swift
//  IosConWorkShop
//
//  Created by 浜田　智史 on 2018/03/23.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

// Interactor
class ShowProgrammerListUseCase {
    
    let entityGateway: EntityGateway
    //let presenter: ProgrammerPresentation
    var presenter: ProgrammerPresentation?
    init(entityGateway: EntityGateway) {
        self.entityGateway = entityGateway
        //self.presenter = presenter
    }
    func showProgrammer() {
        // 1. Fetch programmer data
        let programmers = entityGateway.fetchProgrammers()
        
        // 2. Processs programmer data
        
        let programmerResponse = programmers.map {
            ProgrammerResponse(programmer: $0)
        }
        
        // 3. Present
        presenter?.present(programmers: programmerResponse)
    }
}
