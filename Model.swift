//
//  Model.swift
//  SpotifyClone
//
//  Created by Preston Blake on 6/11/20.
//  Copyright © 2020 Preston. All rights reserved.
//

import Foundation

class content {
    var imageVieww: String?
    var title: String?
    var subtitle: String?
    
    init(imageView:String?,title:String?,subtitle:String?) {
        self.imageVieww = imageView
        self.title = title
        self.subtitle = subtitle
    }
    
}
