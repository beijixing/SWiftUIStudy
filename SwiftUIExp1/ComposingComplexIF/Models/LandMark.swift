//
//  LandMark.swift
//  SwiftUIExp1
//
//  Created by 郑光龙 on 2020/2/17.
//  Copyright © 2020 郑光龙. All rights reserved.
//

import SwiftUI
import CoreLocation

struct LandMark:Hashable, Codable, Identifiable{
    var id: Int //Identifiable 要求必须有id属性
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park :String
    var category: Category
    var isFavorite: Bool
    var isFeatured: Bool
    
    
    var locationCoordinate:CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
        
}

extension LandMark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
    
}

struct Coordinates: Hashable, Codable{
    var latitude: Double
    var longitude: Double
}
