//
//  CityListView.swift
//  Location
//
//  Created by Adam Garrett-Harris on 10/8/21.
//

import SwiftUI

struct CityListView: View {
    @ObservedObject var lm = LocationManager()

    var latitude: String  { return("\(lm.location?.latitude ?? 0)") }
    var longitude: String { return("\(lm.location?.longitude ?? 0)") }
    var placemark: String { return("\(lm.placemark?.description ?? "XXX")") }
    var status: String    { return("\(lm.status)") }

    var body: some View {
        VStack {
            Text("Latitude: \(self.latitude)")
            Text("Longitude: \(self.longitude)")
            Text("Placemark: \(self.placemark)")
            Text("Status: \(self.status)")
        }
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        CityListView()
    }
}
