import SwiftUI
import MapKit

struct MapView: WKInterfaceObjectRepresentable {
    var coordinate: CLLocationCoordinate2D
    func makeWKInterfaceObject(context: Context) -> WKInterfaceMap {
            WKInterfaceMap()
    }
    func updateWKInterfaceObject(_ map: WKInterfaceMap, context: Context) {
            let location = CLLocationCoordinate2D(
                latitude: coordinate.latitude,
                longitude: coordinate.longitude
            )

            let span = MKCoordinateSpan(
                latitudeDelta: 0.1,
                longitudeDelta: 0.1
            )
            let region = MKCoordinateRegion(center: location, span: span)

            map.removeAllAnnotations()
            map.setVisibleMapRect(MKMapRect(origin: MKMapPoint(location), size: MKMapSize(width: 0.1, height: 0.1)))
            map.addAnnotation(location, with: .red)
            map.setRegion(region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D())
    }
}

