//
//  ActorCellCollectionViewCell.swift
//  Movie
//
//  Created by Hesam Farjad on 24/08/22.
//

import UIKit

class ActorCell: UICollectionViewCell {
    @IBOutlet weak var actorImage: UIImageView!
    @IBOutlet weak var actorTitle: UILabel!
    @IBOutlet weak var actorBorn: UILabel!
    
    func updateViews (actors: Actors) {
        actorImage.image = UIImage(named: actors.imageName)
        actorTitle.text = actors.title
        actorBorn.text = actors.born
        
    }
    
}
