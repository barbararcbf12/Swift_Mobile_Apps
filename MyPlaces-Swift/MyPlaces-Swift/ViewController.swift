//
//  ViewController.swift
//  MyPlaces-Swift
//
//  Created by Bárbara Ferreira on 30/03/2018.
//  Copyright © 2018 Barbara Ferreira. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var lat: UILabel!
    @IBOutlet weak var long: UILabel!
    @IBOutlet weak var speed: UILabel!
    
    @IBOutlet weak var map: MKMapView!
    var locationManager = CLLocationManager() //obj to manage location
    
    //GPS Permission control
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status != .authorizedWhenInUse {
            let alertController = UIAlertController( title: "GPS permission", message: "GPS location is necessary, please enable it!", preferredStyle: .alert )
        
            let actionSettings = UIAlertAction(title: "Setting", style: .default, handler: { ( actionSettings ) in
                if let config = NSURL(string: UIApplicationOpenSettingsURLString){
                    UIApplication.shared.open( config as URL )
                }
            })
            
            let actionCancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            
            alertController.addAction( actionSettings )
            alertController.addAction( actionCancel )
            
            present( alertController, animated:  true, completion: nil )
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self //the own class will manage the obj "locationManager"
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //precision
        locationManager.requestWhenInUseAuthorization() //asking user for permission to use his/hers gps location
        locationManager.startUpdatingLocation() //to follow user's location
        
        /*//Setting pin point details
        let note = MKPointAnnotation()
        note.coordinate = location
        note.title = "Copacabana beach"
        note.subtitle = "The most famous beach in the world!"
        
        map.addAnnotation( note )*/
    }
    
    //Retrieve user location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation: CLLocation = locations.last!
        
        /*//Copacabana beach lat-long
         let lat: CLLocationDegrees = -22.972883
         let long: CLLocationDegrees = -43.185406*/
        
        //Setting map exhibition
        let latitude: CLLocationDegrees = userLocation.coordinate.latitude
        let longitude: CLLocationDegrees = userLocation.coordinate.longitude
        
        //Setting map's initial zoom span
        let deltaLat: CLLocationDegrees = 0.01
        let deltaLong: CLLocationDegrees = 0.01
        
        //Setting region
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake( latitude, longitude )
        let areaView: MKCoordinateSpan = MKCoordinateSpanMake( deltaLat, deltaLong )
        let region: MKCoordinateRegion = MKCoordinateRegionMake( location, areaView )
        
        //Showing region on map
        map.setRegion( region, animated: true )
        
        //address.text = userLocation.coordinate.latitude
        lat.text = String(latitude)
        long.text = String(longitude)
        speed.text = String(userLocation.speed)
        
        //Retrieving address
        CLGeocoder().reverseGeocodeLocation( userLocation ) { ( locationDetails, erro ) in
            
            if erro == nil {
                
                if let localData = locationDetails?.first {
                    //print(localData)
                    
                    var thoroughfare = ""
                    if localData.thoroughfare != nil {
                        thoroughfare = localData.thoroughfare!
                    }
                    var subThoroughfare = ""
                    if localData.subThoroughfare != nil {
                        subThoroughfare = localData.subThoroughfare!
                    }
                    var locality = ""
                    if localData.locality != nil {
                        locality = localData.locality!
                    }
                    var subLocality = ""
                    if localData.subLocality != nil {
                        subLocality = localData.subLocality!
                    }
                    var postalCode = ""
                    if localData.postalCode != nil {
                        postalCode = localData.postalCode!
                    }
                    var country = ""
                    if localData.country != nil {
                        country = localData.country!
                    }
                    var administrativeArea = ""
                    if localData.administrativeArea != nil {
                        administrativeArea = localData.administrativeArea!
                    }
                    var subAdministrativeArea = ""
                    if localData.subAdministrativeArea != nil {
                        subAdministrativeArea = localData.subAdministrativeArea!
                    }
                    
                    var addressLocation = thoroughfare + ", " + subThoroughfare + " - " + subLocality + "ZIP: " + postalCode + " - " + locality + " - " + subAdministrativeArea + " - " + administrativeArea + " - " + country
                    
                    self.address.text = addressLocation
                    
                    //print(addressLocation)
                }
                
            } else { print("-") }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

