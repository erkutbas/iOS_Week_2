//
//  PermissionImages.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 21.09.2021.
//

import UIKit

enum PermissionImages: String, GenericValueProtocol {
    
    typealias Value = UIImage
    
    var value: UIImage {
        return UIImage(imageLiteralResourceName: rawValue)
    }
    
    case notif = "notif_"
    case camera = "camera_"
}
