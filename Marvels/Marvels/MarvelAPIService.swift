//
//  MarvelAPIService.swift
//  Marvels
//
//  Created by Jorge Abalo Dieste on 16/11/23.
//

import Foundation
import CommonCrypto

struct Character {
    let name: String
    let description: String
    let movies: [String]?
    let comics: [String]?
}


class MarvelAPIService {
    
    private let publicKey = "4da961812496c30cf73ed692b494f315"
    private let privateKey = "d7fc2827797d7e47f6417dca83b3beeb4c5607ee"
    
    
    private let baseURL = "hrrps://gateway.marvel.com/v1/public/characters"
    
    func getCharacters( completion: @escaping ([Character]?)-> Void) {
        guard let url = URL(string: "\(baseURL)?apikey=\(publicKey)&hash=\(getHash())&ts=\(getTimeStamp())")else{
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data,response,error in if let error = error {
            print (" Error en la solicitud HTTP: \(error)")
            completion(nil)
            return
        }
            
            
            if let data = data, let json = try? JSONSerialization.jsonObject(with: data, options: [] ) as? [String: Any] {
                
                
                let characters: [Character] = parseCharactersFromJSON(json)
                completion(characters)
            }else{
                completion(nil)
            }
        }.resume()
    }
    
    private func getHash() -> String {
        let timeStamp = getTimeStamp()
        return "\(timeStamp)\(privateKey)\(publicKey)".md5()
    }
    
    
    private func getTimeStamp() ->String {
        return String(Int(Date().timeIntervalSince1970))
        
        
    }
}

extension String {
    func md5() -> String {
        let data = Data(self.utf8)
        let hash = data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) -> [UInt8] in
            var hash = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
            CC_MD5(bytes.baseAddress, CC_LONG(data.count), &hash)
            return hash
        }
        return hash.map { String(format: "%02hhx" , $0) }.joined()
        
    }
}

func parseCharactersFromJSON(_ json: [String: Any]) -> [Character] {
    
    
    var characters: [Character] = []
    
    if let data = json["data"] as? [String: Any], let results = data["results"] as? [[String: Any]] {
        for result in results {
            if let name = result["name"] as? String,
               let description = result ["description"] as? String,
               let movies = result ["movies"] as? [String]?? ,
               let comics = result["comics"] as? [String]??  {
                
                let character = Character(name: name, description: description, movies: movies!!, comics: comics!!)
                characters.append(character)
                
            }
        }
    }
    return characters
    
}

