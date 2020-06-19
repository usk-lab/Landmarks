//
//  CircleImage.swift
//  Landmarks
//
//  Created by hasegawa-yusuke on 2020/06/17.
//  Copyright © 2020 usk2000. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
    
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
