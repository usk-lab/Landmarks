//
//  UserData.swift
//  Landmarks
//
//  Created by Yusuke Hasegawa on 2020/06/20.
//  Copyright © 2020 usk2000. All rights reserved.
//

import Foundation
import Combine

final class UserData: ObservableObject  {
    @Published var showFavoritesOnly: Bool = false
    @Published var landmarks: [Landmark] = []
    
    convenience init(landmarks: [Landmark]) {
        self.init()
        self.landmarks = landmarks
    }
    
}
