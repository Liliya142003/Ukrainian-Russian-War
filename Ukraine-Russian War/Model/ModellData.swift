//
//  ModelData.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import Foundation
var equipmentLosses:[EquipmentLosses] = load("russia_losses_equipment.json")
var personnelLosses:[PerssonalLosses] = load("russia_losses_personnel.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
        
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
