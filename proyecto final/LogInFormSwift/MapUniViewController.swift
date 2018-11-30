//
//  MapUniViewController.swift
//  LogInFormSwift
//
//  Created by Usuario invitado on 11/30/18.
//  Copyright © 2018 Eng Tian Xi. All rights reserved.
//

import UIKit
import MapKit

class MapUniViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapvie: MKMapView!
    private let locationManage = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.mapvie.delegate = self
        
        locationManage.delegate = self
        locationManage.requestWhenInUseAuthorization()
        
        locationManage.desiredAccuracy = kCLLocationAccuracyBest
        locationManage.distanceFilter = kCLDistanceFilterNone
        locationManage.startUpdatingLocation()
        
        self.mapvie.showsUserLocation = true
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(19.326017, -99.182061)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        mapvie.setRegion(region, animated: true)
        
        let Anexo = MKPointAnnotation()
        
        Anexo.coordinate = location
        Anexo.title = "Anexo"
        Anexo.subtitle = "Es diferente al principal!"
        mapvie.addAnnotation(Anexo)
        
        
        let span2:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location2:CLLocationCoordinate2D = CLLocationCoordinate2DMake(19.331452, -99.183963)
        let region2:MKCoordinateRegion = MKCoordinateRegionMake(location2, span2)
        mapvie.setRegion(region2, animated: true)
        
        let Principal = MKPointAnnotation()
        
        Principal.coordinate = location2
        Principal.title = "Conjunto Principal"
        Principal.subtitle = "No es el anexo!"
        mapvie.addAnnotation(Principal)
        
        
    }
    

}
