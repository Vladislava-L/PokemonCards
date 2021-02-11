//
//  PokeyTableViewCell.swift
//  PokemonCards
//
//  Created by l.vladislava on 11/02/2021.
//

import UIKit

class PokeyTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeyImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var subtypeLabel: UILabel!
    @IBOutlet weak var cardValueLabel: UILabel!
    @IBOutlet weak var superTypeLabel: UILabel!
    
    func setUI(with: Pokemon){
        nameLabel.text = "Name: " + with.name
        cardValueLabel.text = "Card Value " + with.number
        if let subtype = with.subtype{
            subtypeLabel.text = "Card: " + subtype
    }
        if let supertype = with.supertype {
            superTypeLabel.text = supertype
            if with.supertype == "Trainer" {
                contentView.backgroundColor = .systemGreen
            }else{
                contentView.backgroundColor = .orange
            }
        }
        
        ImageController.getImage(for: with.imageUrl ?? "", completion: { image in
            self.pokeyImageView.image = image
        })
    }

}
    

