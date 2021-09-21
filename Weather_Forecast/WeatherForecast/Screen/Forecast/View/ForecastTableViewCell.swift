//
//  ForecastTableViewCell.swift
//  WeatherForecast
//
//  Created by Shiva on 09/18/21.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {
    @IBOutlet weak var labelWeather: UILabel!
    @IBOutlet weak var labeltemp: UILabel!
    
    var list: List?{
        didSet {
            guard let list = list else {return}
            if list.weather?.isEmpty == false {
                labelWeather.text = list.weather?.first?.main
            }
            labeltemp.text = String(format: "temp: %.0f", kelvinT0Fahrenheit(temp: list.main?.temp))
            //\(kelvinT0Fahrenheit(temp: list.main?.temp))"
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
