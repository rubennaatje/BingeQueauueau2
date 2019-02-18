//
//  Series.swift
//  BingeQueauueau
//
//  Created by Ruben Soerdien on 18/02/2019.
//  Copyright © 2019 Ruben Soerdien. All rights reserved.
//
import UIKit

class Series {
    var title: String
    var description: String
    var seasons: Int = 0
    var image: UIImage?
    
    init(title:String,description:String,seasons:Int,image:UIImage?){
        self.title = title
        self.image = image
        self.seasons = seasons
        self.description = description
    }
}
