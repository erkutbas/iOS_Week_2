//
//  CameraPermissionProtocol.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 21.09.2021.
//

import Foundation

protocol CameraPermissionProtocol: PermissionManagerProtocol {
    
    func checkPermission() -> Bool

}
