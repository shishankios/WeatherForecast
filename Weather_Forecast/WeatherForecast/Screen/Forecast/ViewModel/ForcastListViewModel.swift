//
//  ForcastListViewModel.swift
//  WeatherForecast
//
//  Created by Shiva on 09/18/21.
//

import Foundation

class ForcastListViewModel {
    
    let list : [List]
    let city : String

    
    init(list : [List], city: String) {
        self.list = list
        self.city = city
    }
    
}
