//
//  ActorsVC.swift
//  Movie
//
//  Created by Hesam Farjad on 24/08/22.
//

import UIKit

class ActorsVC: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate {
    
    @IBOutlet weak var actorsCollection: UICollectionView!
    
    private(set) public var actors = [Actors]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        actorsCollection.delegate = self
        actorsCollection.dataSource = self
    }
    
    func initActors (category: Category) {
        actors = DataService.instance.getActors(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorCell", for: indexPath) as? ActorCell {
            let actor = actors[indexPath.row]
            cell.updateViews(actors: actor)
            return cell
        }
        
        return ActorCell()
    }
    
    


}
