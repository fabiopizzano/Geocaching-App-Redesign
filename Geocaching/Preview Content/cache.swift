//
//  CacheListView.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 11/12/21.
//

import Foundation
import SwiftUI


struct Cache: Identifiable {
    
    let id = UUID()
    let title: String
    let info: String
    let iconDistance: Image
    let distance: String
    let iconDifficulty: Image
    let difficulty: String
    let iconSize: Image
    let size: String
    
}

struct CacheList {
    
    static let closestFive = [
    
        Cache(title: "San Domenico Maggiore",
                     info: "GC7C6JK • Traditional",
                     iconDistance: Image("CachePin"),
                     distance: "0,1 km",
                     iconDifficulty: Image("Easy"),
                     difficulty: "Easy",
                     iconSize: Image("Micro"),
                     size: "Micro"),
        
        Cache(title: "Chiesa di Santa Chiara",
                     info: "GC7C6JK • Traditional",
                     iconDistance: Image("CachePin"),
                     distance: "0,3 km",
                     iconDifficulty: Image("Easy"),
                     difficulty: "Easy",
                     iconSize: Image("Micro"),
                     size: "Micro"),
        
        Cache(title: "Quattro Palazzi",
                     info: "GC7C6JK • Traditional",
                     iconDistance: Image("CachePin"),
                     distance: "1,0 km",
                     iconDifficulty: Image("Easy"),
                     difficulty: "Easy",
                     iconSize: Image("Micro"),
                     size: "Micro")

    ]
    
    
    
}

