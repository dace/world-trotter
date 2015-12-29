//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Dace Willmott on 12/29/15.
//  Copyright © 2015 Big Nerd Ranch. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

  var mapView: MKMapView!
  
  override func loadView() {
    mapView = MKMapView()
    view = mapView
  }
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("MapViewController loaded its view")
  }
  
}
