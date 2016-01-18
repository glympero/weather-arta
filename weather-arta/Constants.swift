//
//  Constants.swift
//  weather-arta
//
//  Created by Γιώργος Λυμπερόπουλος on 18/01/16.
//  Copyright © 2016 glympe. All rights reserved.
//

import Foundation

let URL_BASE = "http://api.openweathermap.org/data/2.5/"

let URL_5_DAY_3_HOUR_FORECASE_ARTA = "forecast?id=264559&units=metric&appid=d3a5d1f2a7b2455ffee06f88c6178940"

let URL_CURRENT_WEATHER_ARTA = "weather?q=arta,greece&units=metric&appid=d3a5d1f2a7b2455ffee06f88c6178940"

let URL_16_DAY_DAILY_FORECAST = "forecast/daily?id=264559&units=metric&appid=d3a5d1f2a7b2455ffee06f88c6178940"

let CURRENT_UV = "http://api.owm.io/air/1.0/uvi/current?lat=20.99&lon=39.16&appid=d3a5d1f2a7b2455ffee06f88c6178940"

typealias DownloadCompleted = () -> ()
