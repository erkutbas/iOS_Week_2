//
//  ActionComponent.swift
//  iOS_Week_2
//
//  Created by Erkut Bas on 22.09.2021.
//

import UIKit

class ActionComponent: GenericBaseView<ActionComponentData> {

    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.clipsToBounds = true
        return view
    }()
    
    private lazy var mainStackView: UIStackView = {
        let temp = UIStackView(arrangedSubviews: [negativeButton, pozitiveButton])
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.isUserInteractionEnabled = true
        temp.alignment = .center
        temp.distribution = .fill
        temp.axis = .horizontal
        temp.spacing = 20
        return temp
    }()
    
    private lazy var negativeButton: ActionButtonView = {
        let temp = ActionButtonView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return temp
    }()
    
    private lazy var pozitiveButton: ActionButtonView = {
        let temp = ActionButtonView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.heightAnchor.constraint(equalToConstant: 40).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return temp
    }()
    
    override func addMajorFields() {
        super.addMajorFields()
        addComponents()
    }
    
    private func addComponents() {
        addSubview(containerView)
        containerView.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
        
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10)
        
        ])
    }

    override func loadDataToView() {
        super.loadDataToView()
        
        guard let data = returnData()  else { return }
        pozitiveButton.setData(data: data.positifButton)
        negativeButton.setData(data: data.negativeButton)
    }
    
}
