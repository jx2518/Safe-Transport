import SwiftUI
import CoreLocation

struct ContentView: View {
    @StateObject private var locationManagerDelegate = LocationManagerDelegate()
    let locationManager = CLLocationManager()

    var body: some View {
        VStack {
            Text(locationManagerDelegate.locationText)
                .font(.title)
                .padding()
        }
        .onAppear {
            locationManager.delegate = locationManagerDelegate
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
