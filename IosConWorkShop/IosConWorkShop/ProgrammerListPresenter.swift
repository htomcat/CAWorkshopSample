//
//  ProgrammerListPresenter.swift
//  IosConWorkShop
//
//  Created by 浜田　智史 on 2018/03/23.
//  Copyright © 2018年 htomcat. All rights reserved.
//

import Foundation

class ProgrammerListPresenter {
    var programmerResponses: [ProgrammerResponse] = []
    let useCase: ShowProgrammerListUseCase
    
    init(useCase: ShowProgrammerListUseCase) {
        self.useCase = useCase
    }
    var numberOfRows: Int {
        return programmerResponses.count
    }
    func viewReady() {
        useCase.showProgrammer()
    }
    
    func configure(cell: ProgrammerCellView, forRow row: Int) {
        let programmer = programmerResponses[row]
        cell.display(name: programmer.fullName)        
        cell.display(date: programmer.date.relativeDesctiption())
        cell.display(favourite: programmer.favaurite)
    }
}

extension ProgrammerListPresenter: ProgrammerPresentation {
    func present(programmers: [ProgrammerResponse]) {
    }
}
