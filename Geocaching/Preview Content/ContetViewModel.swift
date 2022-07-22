//
//  ContetViewModel.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 07/12/21.
//

import Foundation
import MapKit

// CACHE PINNATI
struct PlaceCache: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    
}

enum MapDetails {
    static let startingLocation = CLLocationCoordinate2DMake(40.84733, 14.25226)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
}

final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var region = MKCoordinateRegion(center: MapDetails.startingLocation,
                                               span: MapDetails.defaultSpan)
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
            
        } else {
            print ("(Alert!) Turn it on, please")
        }
    }

    private func checkLocationAuthorization(){
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            
            locationManager.requestWhenInUseAuthorization()
            
        case .restricted:
            print ("Your location is restricted likely due to parental control.")
            
        case .denied:
            print ("You denied it, go to settings to change it.")
            
        case .authorizedAlways, .authorizedWhenInUse:
            if let loc = locationManager.location{
                region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MapDetails.defaultSpan)
            }
            
        @unknown default:
            break
            
        }
        
        
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
    

    

    
}





