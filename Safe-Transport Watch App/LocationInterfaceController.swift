import WatchKit
import SwiftUI

struct LocationInterfaceControllerView: View {
    @State private var locationText = "Location not available"

    var body: some View {
        VStack {
            Text("Location Information")
                .font(.title)
                .padding()

            Text(locationText)
                .font(.body)
                .padding()
        }
        .onAppear {
            // You can update locationText based on the user's location or other data.
            // For now, we use a default message.
            locationText = "Latitude: 37.7749, Longitude: -122.4194" // Default coordinates
        }
    }
}

//@main
struct LocationInterfaceControllerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationInterfaceControllerView()
            }
        }
    }
}
