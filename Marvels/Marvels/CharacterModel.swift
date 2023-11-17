//
//  CharacterModel.swift
//  Marvels
//
//  Created by Jorge Abalo Dieste on 15/11/23.
//

import Foundation

class CharacterModel{
   var name: String
   var description: String
   var movies: [String]?
   var comics: [String]?
    
    init (name: String, description: String, movies: [String], comics: [String]){
        self.name = name
        self.description = description
        self.movies = movies
        self.comics = comics
        
    }
}
