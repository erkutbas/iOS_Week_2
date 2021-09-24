//
//  BaseViewController.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 24.09.2021.
//

import UIKit

class BaseViewController<V>: UIViewController {
    
    var viewModel: V!
    
    convenience init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        prepareViewControllerSetup()
    }
    
    func prepareViewControllerSetup() {
        // override please
        view.backgroundColor = .white
    }
    
}
