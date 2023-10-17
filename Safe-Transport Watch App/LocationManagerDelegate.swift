import CoreLocation
import Combine

class LocationManagerDelegate: NSObject, CLLocationManagerDelegate, ObservableObject {
    @Published var locationText: String = "Location not available"

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            let latitude = location.coordinate.latitude
            let longitude = location.coordinate.longitude
            locationText = "Latitude: \(latitude), Longitude: \(longitude)"
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location update failed with error: \(error.localizedDescription)")
    }
}
