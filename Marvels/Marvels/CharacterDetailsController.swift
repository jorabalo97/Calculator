//
//  CharacterDetailsController.swift
//  Marvels
//
//  Created by Jorge Abalo Dieste on 16/11/23.
//

import Foundation
import UIKit

class CharacterDetailsController: UIViewController {
    
    var selectedCharacter: Character?
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = " Detalles del personaje"
        
        view.addSubview(nameLabel)
        view.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                                               
       descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor,constant: 16),
       descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
       descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                                               
        ])
            
            if let character = selectedCharacter {
                nameLabel.text = character.name
                descriptionLabel.text = character.description
            }
    }
            }
