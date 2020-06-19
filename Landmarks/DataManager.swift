//
//  DataManager.swift
//  Landmarks
//
//  Created by Yusuke Hasegawa on 2020/06/19.
//  Copyright © 2020 usk2000. All rights reserved.
//

import Foundation

class DataManager {
    
    static let shared: DataManager = .init()
    
    var landmarks: [Landmark] = []
    
    init() {
        loadData()
    }
    
}

private extension DataManager {
    
    func loadData() {
        debugPrint("loadData")
        let url = Bundle.main.url(forResource: "landmarkData", withExtension: "json")!
        let data = try! Data.init(contentsOf: url)
        landmarks = try! JSONDecoder().decode([Landmark].self, from: data)
        debugPrint("count : \(landmarks.count)")
    }
    
}
