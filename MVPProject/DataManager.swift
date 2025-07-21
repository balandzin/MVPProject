//
//  DataManager.swift
//  MVPProject
//
//  Created by Антон Баландин on 5.06.25.
//

import Foundation

protocol DataManager {
    func getNumbers() -> [Int]
}

final class DataManagerImplementation: DataManager {
    func getNumbers() -> [Int] {
        return [1, 2, 3, 4, 5]
    }
}
