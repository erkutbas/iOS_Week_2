//
//  PhotosPermisionProtocol.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 21.09.2021.
//

import Foundation
import PhotosUI
import Combine
import SwiftUI

protocol PhotosPermisionProtocol: PermissionManagerProtocol {
    
    func checkPhotosPermission() -> Bool
    
    func subscribePhotosStatusObject(completion: @escaping BooleanBlock) -> AnyCancellable
    
    func selectPhoto(completion: @escaping (Image) -> Void)
    
}
