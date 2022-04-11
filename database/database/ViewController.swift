//
//  ViewController.swift
//  database
//
//  Created by Cumulations Technologies on 24/02/22.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {
    @IBOutlet weak var label: UILabel!
    var loc:CLLocationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loc.delegate=self
        loc.desiredAccuracy = kCLLocationAccuracyBest
        loc.requestWhenInUseAuthorization()
        loc.startUpdatingLocation()
    }
func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    label.text = "\(locations.first?.coordinate.longitude)"
    }


}

