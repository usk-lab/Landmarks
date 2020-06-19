//
//  Landmark.swift
//  Landmarks
//
//  Created by Yusuke Hasegawa on 2020/06/19.
//  Copyright © 2020 usk2000. All rights reserved.
//
import SwiftUI
import CoreLocation

struct Landmark: Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category

    var locationCoordinate: CLLocationCoordinate2D {
        .init(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}


extension Landmark {
    var image: Image {
        return .init(imageName)
    }
}

extension Landmark {
    
    static var sample: Landmark {
        .init(id: 123,
              name: "Turtle Rock",
              imageName: "turtlerock",
              coordinates: .init(latitude: 34.011286, longitude: -116.166868),
              state: "California",
              park: "Joshua Tree National Park",
              category: .featured)
    }
    
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
