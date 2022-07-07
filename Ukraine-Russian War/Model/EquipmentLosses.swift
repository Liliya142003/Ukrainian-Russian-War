//
//  Technical losses.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import Foundation
import SwiftUI
struct EquipmentLosses: Codable{
    
    
    var date: String
    var day: Int
    var aircraft: Int
    var helicopter: Int
    var tank: Int
    var APC: Int
    var fieldArtillery: Int
    var MRL: Int
    var military_auto:Int?
    var fuel_tank:Int?
    var drone: Int
    var naval_ship: Int
    var anti_aircraft_warfare: Int
    var special_equipment: Int
    var mobile_SRBM_system:Int?
    
    enum CodingKeys: String, CodingKey{
        case date
        case day
        case aircraft
        case helicopter
        case tank
        case APC
        case fieldArtillery = "field artillery"
        case MRL
        case military_auto = "military auto"
        case  fuel_tank = "fuel tank"
        case drone
        case naval_ship = "naval ship"
        case anti_aircraft_warfare = "anti-aircraft warfare"
        case special_equipment = "special equipment"
        case mobile_SRBM_system = "mobile SRBM system"
    }
    

   
    
}
