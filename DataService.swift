//
//  DataService.swift
//  Movie
//
//  Created by Hesam Farjad on 24/08/22.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    
    private let categories = [
        Category(title: "THE GREEN MILE", imageName: "The Green Mile.png"),
        Category(title: "THE SHAWSHANK", imageName: "The Shawshank.png"),
        Category(title: "THE FINDING NEVERLAND", imageName: "The Finding Neverland.png"),
        Category(title: "THE INCEPTION", imageName: "The Inception.png"),
        Category(title: "THE DEADPOOL", imageName: "The Deadpool.png"),
        Category(title: "THE DARK SHADOWS", imageName: "The Darkshadows.png")
    ]
    
    
    
    
    private let greenMile = [
        Actors(title: "Michael Clarke", imageName: "Michael Clarke.PNG", born: "December 10, 1957"),
        Actors(title: "Tom Hanks", imageName: "Tom Hanks.PNG", born: "July 9, 1956"),
        Actors(title: "David Morse", imageName: "David Morse.PNG", born: "October 11, 1953"),
        Actors(title: "Sam Rockwell", imageName: "Sam Rockwell.PNG", born: "November 5, 1968"),
        Actors(title: "Bonnie Hunt", imageName: "Bonnie Hunt.PNG", born: "September 29, 1961")
    ]
    
    private let shawshank = [
        Actors(title: "Morgan Freeman", imageName: "Morgan Freeman.PNG", born: "June 1, 1937"),
        Actors(title: "Tim Robbins", imageName: "Tim Robbins.PNG", born: "October 16, 1958"),
        Actors(title: "Bob Gunton", imageName: "Bob Gunton.PNG", born: "November 15, 1945"),
        Actors(title: "Clancy Brown", imageName: "Clancy Brown.PNG", born: "January 5, 1959"),
        Actors(title: "William Sadler", imageName: "William Sadler.PNG", born: "April 13, 1950")
    ]
    
    private let findingNeverLand = [
        Actors(title: "Johnny Depp", imageName: "Johnny Depp.PNG", born: "June 9, 1963"),
        Actors(title: "Kate winslet", imageName: "Kate winslet.PNG", born: "October 5, 1975"),
        Actors(title: "Freddie Highmore", imageName: "Freddie Highmore.PNG", born: "February 14, 1992"),
        Actors(title: "Dustin Hoffman", imageName: "Dustin Hoffman.PNG", born: "August 8, 1937"),
        Actors(title: "Julie Christie", imageName: "Julie Christie.PNG", born: "April 14, 1940")
    ]
    
    private let inception = [
        Actors(title: "Leonardo DiCaprio", imageName: "Leonardo DiCaprio.PNG", born: "November 11, 1974"),
        Actors(title: "Joseph Gordon", imageName: "Joseph Gordon.PNG", born: "February 17, 1981"),
        Actors(title: "Cillian Murphy", imageName: "Cillian Murphy.PNG", born: "May 25, 1976"),
        Actors(title: "Tom Hardy", imageName: "Tom Hardy.PNG", born: "September 15, 1977"),
        Actors(title: "Marion Cotillard", imageName: "Marion Cotillard.PNG", born: "September 30, 1975")
    ]
    
    private let deadPoll = [
        Actors(title: "Ryan Reynolds", imageName: "Ryan Reynolds.PNG", born: "October 23, 1976"),
        Actors(title: "Morena Baccarin", imageName: "Morena Baccarin.PNG", born: "June 2, 1979"),
        Actors(title: "T.J. Miller", imageName: "T.J. Miller.PNG", born: "June 4, 1981"),
        Actors(title: "Brianna Hildebrand", imageName: "Brianna Hildebrand.PNG", born: "August 14, 1996"),
        Actors(title: "Gina Carano", imageName: "Gina Carano.PNG", born: "April 16, 1982")
    ]
    
    private let darkShadows = [
        Actors(title: "Johnny Depp", imageName: "Johnny Depp.PNG", born: "June 9, 1963"),
        Actors(title: "Helena Bonham", imageName: "Helena Bonham.PNG", born: "May 26, 1966"),
        Actors(title: "Michelle Pfeiffer", imageName: "Michelle Pfeiffer.PNG", born: "April 29, 1958"),
        Actors(title: "Jonathan Frid", imageName: "Jonathan Frid.PNG", born: "December 2, 1924"),
        Actors(title: "Bella Heathcote", imageName: "Bella Heathcote.PNG", born: "May 27, 1987")
    ]
    
    
   
    
    
    
    func getCategories () -> [Category] {
        return categories
    }
    
    
    
    func getActors (forCategoryTitle title: String) -> [Actors] {
        
        switch title {
        case "THE GREEN MILE":
            return getGreenMile()
        case "THE SHAWSHANK":
            return getShawshank()
        case "THE FINDING NEVERLAND":
            return getFindingNeverLand()
        case "THE INCEPTION":
            return getInception()
        case "THE DEADPOOL":
            return getDeadpool()
        case "THE DARK SHADOWS":
            return getDarkShadows()
            
            
        default:
            return getGreenMile()
            
            
        }
    }
    
    func getGreenMile () -> [Actors] {
        return greenMile
    }
    
    func getShawshank () -> [Actors] {
        return shawshank
    }
    
    func getFindingNeverLand () -> [Actors] {
        return findingNeverLand
    }
    
    func getInception () -> [Actors] {
        return inception
    }
    
    func getDeadpool () -> [Actors] {
        return deadPoll
    }
    
    func getDarkShadows () -> [Actors] {
        return darkShadows
    }
    
    
}
