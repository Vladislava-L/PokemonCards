//
//  Pokemon.swift
//  PokemonCards
//
//  Created by l.vladislava on 09/02/2021.
//

import Foundation


struct Pokemon: Decodable {
    
    let name: String
    var imageUrl: String?
//    let numberCard: String
    let number: String
    let subtype: String?
    let supertype: String?
    
    
    enum CodingKeys: String, CodingKey{
        case name, subtype, supertype
        case imageUrl
//        case numberCard = "number"
        case number
        
    }
}

struct Card: Decodable {
    let cards: [Pokemon]
}
