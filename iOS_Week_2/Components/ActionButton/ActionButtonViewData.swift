//
//  ActionButtonViewData.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 21.09.2021.
//

import Foundation


class ActionButtonViewData {
    
    private(set) var title: String
    private(set) var type: ActionButtonType
    private(set) var actionListener: VoidBlock?
    
    init(title: String, type: ActionButtonType) {
        self.title = title
        self.type = type
    }
    
    func setActionListener(by value: @escaping VoidBlock) -> Self {
        actionListener = value
        return self
    }
    
}
