//
//  ViewController.swift
//  weather-arta
//
//  Created by Γιώργος Λυμπερόπουλος on 18/01/16.
//  Copyright © 2016 glympe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var weatherDetails: WeatherDetails = WeatherDetails()
    
    @IBOutlet weak var mainIcon: UIImageView!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//      weatherDetails =
        name.text = weatherDetails.name
        weatherDetails.downloadCurrentWeatherDetails { () -> () in
            self.mainIcon.image = UIImage(named: self.weatherDetails.iconnName)
            print(self.weatherDetails.iconnName)
            print(self.weatherDetails.humidity)
        }
        
    }

}

