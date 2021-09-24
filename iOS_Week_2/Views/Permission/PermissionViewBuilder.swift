//
//  PermissionViewBuilder.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 23.09.2021.
//

import Foundation
import UIKit

class PermissionViewBuilder {
    
    class func build(with type: PermissionType) -> UIViewController {
        let viewModel = PermissionViewModel(manager: PermissionManagerFactory.getManager(with: type))
        let viewController = PermissionViewController(viewModel: viewModel)
        return viewController
    }

}

