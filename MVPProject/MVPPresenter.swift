//
//  MVPPresenter.swift
//  MVPProject
//
//  Created by Антон Баландин on 5.06.25.
//

import Foundation

final class MVPPresenter: MVPViewOutput {
    
    weak var view: MVPViewInput!
    var dataManager: DataManager!
    
    func buttonDidTapped() {
        let numbers = dataManager.getNumbers()
        view.showNumbers(numbers)
    }
    
    
}
