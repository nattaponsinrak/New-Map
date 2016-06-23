//
//  ViewController.swift
//  New NEU
//
//  Created by iMac15 on 6/23/2559 BE.
//  Copyright © 2559 masterUNG. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var myMapView: MKMapView!
    
        override func viewDidLoad() {
        super.viewDidLoad()

        var myLat:CLLocationDegrees = 16.422701
        var myLng:CLLocationDegrees = 102.815245
        
        var latDelta:CLLocationDegrees = 0.01
        var lngDelta:CLLocationDegrees = 0.01
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lngDelta)
        var neuLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLng)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(neuLocation, theSpan)
        
        
        self.myMapView.setRegion(theRegion, animated : true)
        
            var neuAnotation = MKPointAnnotation
            neuAnotation.Coordinate = neuLocation
            neuAnotation.title = "มหาลัยภาค จังหวัดขอนแก่น"
            neuAnotation.subtitle = "จังหวัดขอนแก่น"
        
        self.myMapView.addAnnotation(neuAnotation)
        
    }  /// view didload ค้นหาพิกัด Map by GoogleView

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

