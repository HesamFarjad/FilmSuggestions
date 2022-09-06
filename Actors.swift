//
//  Actors.swift
//  Movie
//
//  Created by Hesam Farjad on 24/08/22.
//

import Foundation

struct Actors {
    
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var born: String
    
    init(title: String, imageName: String, born: String) {
        self.title = title
        self.imageName = imageName
        self.born = born
    }
    
}
