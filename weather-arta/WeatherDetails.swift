//
//  WeatherDetails.swift
//  weather-arta
//
//  Created by Γιώργος Λυμπερόπουλος on 18/01/16.
//  Copyright © 2016 glympe. All rights reserved.
//

import Foundation
import Alamofire

class WeatherDetails {
    private var _townName: String!
    private var _currentTemp: String!
    private var _iconName: String!
    private var _humidity: String!
    
    
    var name: String {
        return _townName
    }
    
    var currentTemp: String {
        return _currentTemp
    }
    
    var iconnName: String {
        return _iconName
    }
    
    var humidity: String{
        return _humidity
    }
    
    init(){
        self._townName = "Arta"
    }
    
    func downloadCurrentWeatherDetails(completed: DownloadCompleted){
        let currentWeatherUrl = NSURL(string: "\(URL_BASE)\(URL_CURRENT_WEATHER_ARTA)")!
        Alamofire.request(.GET, currentWeatherUrl).responseJSON { response in
            let result = response.result
            
            print(result.value.debugDescription)
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let conditions = dict["main"] as? Dictionary<String, AnyObject>{
                    if let currentTemp = conditions["temp"] as? Int{
                        self._currentTemp = "\(currentTemp)"
                        print((self._currentTemp))
                    }
                }
                
                if let conditions = dict["main"] as? Dictionary<String, AnyObject>{
                    if let humidity = conditions["humidity"] as? Int{
                        self._humidity = "\(humidity)"
                        print((self._humidity))
                    }
                }
                
//                if let weather = dict["weather"] as? Dictionary<String, AnyObject>{
//                    if let weatherIcon = weather["icon"] as? String{
//                        self._iconName = "\(weatherIcon)"
//                        print(self._iconName)
//                    }
//                }
                
                if let types = dict["weather"] as? [Dictionary<String, AnyObject>] where types.count > 0 {
                    if let name = types[0]["icon"] as? String {
                        self._iconName = name
                        print(self._iconName)
                    }
                    completed()
                }

            }
        }
        
    
    
    }
    
}
