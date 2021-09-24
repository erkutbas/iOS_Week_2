//
//  ActionComponentData.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 22.09.2021.
//

import Foundation

class ActionComponentData {
    private(set) var negativeButton: ActionButtonViewData
    private(set) var positifButton: ActionButtonViewData
    
    init(positifButton: ActionButtonViewData, negativeButton: ActionButtonViewData) {
        self.positifButton = positifButton
        self.negativeButton = negativeButton
    }
}
