//
//  MainViewBuilder.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 24.09.2021.
//

import Foundation
import UIKit

class MainViewBuilder {
    
    class func build() -> UIViewController {
        let viewModel = MainViewModel()
        let viewController = MainViewController(viewModel: viewModel)
        return viewController
    }

}
