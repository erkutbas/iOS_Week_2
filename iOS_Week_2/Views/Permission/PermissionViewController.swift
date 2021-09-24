//
//  PermissionViewController.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 21.09.2021.
//

import UIKit

class PermissionViewController: UIViewController {
    
    private var viewModel: PermissionViewModel!
    private var permissionRequestView: PermissionRequestView!
    
    convenience init(viewModel: PermissionViewModel) {
        self.init()
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        
        dismissViewControllerListener()
        addPermissionRequestView()
        
    }
    
    private func addPermissionRequestView() {
        permissionRequestView = PermissionRequestView(data: viewModel.getPermissionRequestViewData())
        permissionRequestView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(permissionRequestView)
        
        NSLayoutConstraint.activate([
        
            permissionRequestView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            permissionRequestView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            permissionRequestView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        
    }
    
    private func dismissViewControllerListener() {
        viewModel.subscribeRequestPermissionDismissed { [weak self] in
            DispatchQueue.main.async {
                self?.dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
