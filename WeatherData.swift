//

import Foundation

// MARK: - Welcome
struct WeatherData: Codable, Equatable {
    let name: String
    let main: Main
    let weather: [Weather]

    public init(name: String, main: Main, weather: [Weather]) {
        self.name = name
        self.main = main
        self.weather = weather
    }
    
    struct Main: Codable, Equatable {
        let temp: Double

        public init(temp: Double) {
            self.temp = temp
        }
       
    }
    
    struct Weather: Codable, Equatable {
        let id: Int
        let description: String
        
        public init(description: String, id: Int) {
            self.id = id
            self.description = description
        }
    }
    
}
