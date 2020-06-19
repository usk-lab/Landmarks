//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by hasegawa-yusuke on 2020/06/17.
//  Copyright © 2020 usk2000. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
             MapView()
                 .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
             VStack(alignment: .leading) {
                 Text("Turtle Rock")
                     .font(.title)
                 HStack(alignment: .top) {
                     Text("Joshua Tree National Park")
                         .font(.subheadline)
                     Spacer()
                     Text("California")
                         .font(.subheadline)
                 }
             }
             .padding()
            
            Spacer()

         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
