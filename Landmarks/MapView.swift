//
//  MapView.swift
//  Landmarks
//
//  Created by hasegawa-yusuke on 2020/06/17.
//  Copyright © 2020 usk2000. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: .init(latitude: 34.011286, longitude: -116.166868))
    }
}
