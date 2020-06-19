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
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList.init(landmarks: [
            .sample
        ])
    }
}
