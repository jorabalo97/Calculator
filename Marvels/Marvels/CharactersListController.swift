//
//  CharactersListController.swift
//  Marvels
//
//  Created by Jorge Abalo Dieste on 15/11/23.
//
import UIKit
import Foundation

class CharactersListController: UIViewController , UITableViewDataSource, UITableViewDelegate {
   
    
    
    var characters: [Character] = []
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = " Personajes de Marvel"
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "characterCell")
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath)
        let character = characters[indexPath.row]
        cell.textLabel?.text = character.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let selectedCharacter = characters[indexPath.row]
        
        let detailsController = CharacterDetailsController()
        detailsController.selectedCharacter = selectedCharacter
        
        navigationController?.pushViewController(detailsController, animated: true)
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
