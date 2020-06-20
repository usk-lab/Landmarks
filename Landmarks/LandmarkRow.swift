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
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow.init(landmark: .sample(favorite: true))
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
