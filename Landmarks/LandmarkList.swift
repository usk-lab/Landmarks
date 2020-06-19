//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Yusuke Hasegawa on 2020/06/19.
//  Copyright © 2020 usk2000. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    var landmarks: [Landmark]
    
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList.init(landmarks: [
            .init(id: 123,
                  name: "Turtle Rock",
                  imageName: "turtlerock",
                  coordinates: .init(latitude: 34.011286, longitude: -116.166868),
                  state: "California",
                  park: "Joshua Tree National Park",
                  category: .featured)
        ])
    }
}
