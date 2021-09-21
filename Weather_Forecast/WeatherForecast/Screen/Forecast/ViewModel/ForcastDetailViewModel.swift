//
//  ForcastDetailViewModel.swift
//  WeatherForecast
//
//  Created by Shiva on 09/18/21.
//

import Foundation

class ForcastDetailViewModel {
    
    let temp : String
    let feelLike : String
    let weather : String
    let weatherDescription : String
    let city : String
    
    init(list : List, city: String) {
        //(K − 273.15) × 9/5 + 32
        self.temp = String(format: "%.0f", kelvinT0Fahrenheit(temp: list.main?.temp))
            //"\(kelvinT0Fahrenheit(temp: list.main?.temp))"
        self.feelLike = String(format: "Feels Like: %.0f", kelvinT0Fahrenheit(temp: list.main?.feels_like))
            //"Feels Like:
        //\(kelvinT0Fahrenheit(temp: list.main?.feels_like))"
        self.weather = list.weather?.first?.main ?? ""
        self.weatherDescription = list.weather?.first?.description ?? ""
        self.city = city
    }
    
}

func kelvinT0Fahrenheit(temp: Double?) -> Double {
    let tempe = (temp ?? 0) - 273.15
   return tempe * (9/5) + 32
}
