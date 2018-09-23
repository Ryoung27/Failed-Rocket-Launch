import UIKit

struct RocketConfiguration {
    let name: String = "Athena 9 Heavy"
    let numberOfFirstStageCores: Int = 3
    let numberOfSecondStageCores: Int = 1
    let numberOfStageReuseLandingLegs: Int? = nil
    
}

let athena9Heavy = RocketConfiguration()

struct RocketStageConfiguration {
    let liquidOxygenMass: Double
    let nominalBurnTime: Int
    let propellantMass: Double
    init(propellantMass: Double, liquidOxygenMass: Double) {
        self.propellantMass = propellantMass
        self.liquidOxygenMass = liquidOxygenMass
        self.nominalBurnTime = 180
    }
}

struct Weather {
    let temperatureCelsius: Double
    let windSpeedKilometersPerHouse: Double
    
    init(temperatureFahrenheit: Double = 72, windSpeedMilesPerHour: Double = 5) {
        self.temperatureCelsius = (temperatureFahrenheit - 32) / 1.8
        self.windSpeedKilometersPerHour = windSpeedMilesPerHour * 1.609344
    }
}

let stageOneConfiguration = RocketStageConfiguration(propellantMass: 119.1,
                                                     liquidOxygenMass: 276.0, nominalBurnTime: 180)

let currentWeather = Weather()
currentWeather.temperatureCelsius
currentWeather.windSpeedKilometersPerHour
