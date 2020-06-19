//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Yusuke Hasegawa on 2020/06/19.
//  Copyright © 2020 usk2000. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow.init(landmark: .init(id: 123,
                                         name: "Turtle Rock",
                                         imageName: "turtlerock",
                                         coordinates: .init(latitude: 34.011286, longitude: -116.166868),
                                         state: "California",
                                         park: "Joshua Tree National Park",
                                         category: .featured))
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
