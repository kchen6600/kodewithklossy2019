//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var running = false
    var author : String
    var data = AviatrixData()
    var location = "St. Louis"
    var distanceTraveled = 0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    let maxFuel = 5000.0
    var fuelCost = 0.0
    
    init(author:String){
        self.author = author
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() -> Double{
        var cityFuelCost = data.fuelPrices[String(location)]!
        fuelCost += cityFuelCost
        return (Double)(cityFuelCost)
    }
    
    func flyTo(destination : String) {
        var miles = distanceTo(target : destination)
        distanceTraveled += miles
        fuelLevel -= Double(miles) / milesPerGallon
        milesPerGallon = 0.55 - (fuelLevel) * (0.00005)
        location = destination
    }
    
    func distanceTo(target : String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
