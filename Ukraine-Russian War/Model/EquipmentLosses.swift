//
//  Technical losses.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import Foundation
import SwiftUI

struct EquipmentLosses:  Codable {
    var date: AnyCodableValue?
    var day:AnyCodableValue?
    var aircraft:AnyCodableValue?
    var helicopter:AnyCodableValue?
    var tank: AnyCodableValue?
    var APC: AnyCodableValue?
    var fieldArtillery: AnyCodableValue?
    var MRL:AnyCodableValue?
    var military_auto:AnyCodableValue?
    var fuel_tank: AnyCodableValue?
    var drone: AnyCodableValue?
    var naval_ship: AnyCodableValue?
    var anti_aircraft_warfare: AnyCodableValue?
    var special_equipment: AnyCodableValue?
    var mobile_SRBM_system:AnyCodableValue?
    
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
    
    init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(AnyCodableValue.self, forKey: .date)
        self.day = try container.decodeIfPresent(AnyCodableValue.self, forKey: .day)
        self.aircraft = try container.decodeIfPresent(AnyCodableValue.self, forKey: .aircraft)
        self.tank = try container.decodeIfPresent(AnyCodableValue.self, forKey: .tank)
        self.APC = try container.decodeIfPresent(AnyCodableValue.self, forKey: .APC)
        self.fieldArtillery = try container.decodeIfPresent(AnyCodableValue.self, forKey: .fieldArtillery)
        self.MRL = try container.decodeIfPresent(AnyCodableValue.self, forKey: .MRL)
        self.drone = try container.decodeIfPresent(AnyCodableValue.self, forKey: .drone)
        self.naval_ship = try container.decodeIfPresent(AnyCodableValue.self, forKey: .naval_ship)
        self.anti_aircraft_warfare = try container.decodeIfPresent(AnyCodableValue.self, forKey: .anti_aircraft_warfare)
        self.special_equipment = try container.decodeIfPresent(AnyCodableValue.self, forKey: .special_equipment)
        self.military_auto = try container.decodeIfPresent(AnyCodableValue.self, forKey: .military_auto)
            self.military_auto = try container.decodeIfPresent(AnyCodableValue.self, forKey: .military_auto)
            self.fuel_tank = try container.decodeIfPresent(AnyCodableValue.self, forKey: .fuel_tank)
            self.mobile_SRBM_system = try container.decodeIfPresent(AnyCodableValue.self, forKey: .mobile_SRBM_system)
        }
        
    init(){
        self.date = .string("")
        self.day = .integer(0)
        self.aircraft = .integer(0)
        self.tank = .integer(0)
        self.APC = .integer(0)
        self.fieldArtillery = .integer(0)
        self.MRL = .integer(0)
        self.drone = .integer(0)
        self.naval_ship = .integer(0)
        self.anti_aircraft_warfare = .integer(0)
        self.special_equipment = .integer(0)
        self.military_auto = .integer(0)
            self.military_auto = .string("0")
            self.fuel_tank = .integer(0)
            self.mobile_SRBM_system = .string("0")
        }
    }
   
    

