//
//  PermissionManagerProtocol.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 21.09.2021.
//

import Foundation
import Combine

protocol PermissionManagerProtocol {
    
    func requestPermission(completion: @escaping VoidBlock)
    
    func getPermissionRequestViewData(with pozitifCompletion: @escaping VoidBlock, with negativeCompletion: @escaping VoidBlock) -> PermissionRequestViewData
    
}
