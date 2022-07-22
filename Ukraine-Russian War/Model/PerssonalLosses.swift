//
//  PerssonalLosses.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 11.07.2022.
//

import Foundation
struct PerssonalLosses:  Codable {
    
    var date: AnyCodableValue?
    var day:AnyCodableValue?
    var personnel : AnyCodableValue?
    var POW: AnyCodableValue?
    
    enum CodingKeys: String, CodingKey{
        case date
        case day
        case personnel
        case POW
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decodeIfPresent(AnyCodableValue.self, forKey: .date)
        self.day = try container.decodeIfPresent(AnyCodableValue.self, forKey: .day)
        self.personnel = try container.decodeIfPresent(AnyCodableValue.self, forKey: .personnel)
        self.POW = try container.decodeIfPresent(AnyCodableValue.self, forKey: .POW)
    }
    
    init(){
        self.date = .string("")
        self.day = .integer(0)
        self.personnel = .integer(0)
        self.POW = .integer(0)
        
    }
}



