//
//  EquipmentLossesDetail.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct EquipmentLossesDetail: View {

    var perssonel: PersonnelLosses
    var equipment: EquipmentLosses? = nil
    var body: some View {
        VStack{
            Text("Losses on: \(perssonel.date)")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.trailing, 50)
            VStack{
            Text("Perssonel losses: \(perssonel.personnel )")
            Text("Prisoner of War: \(perssonel.POW )")
                Text("Armored Personnel Carrier: \(equipment?.APC ?? 0)")
                Text("Multiple Rocket Launcher: \(equipment?.MRL ?? 0)")
                Text("Aircraft: \(equipment?.aircraft ?? 0)")
            Text("Anti-aircraft warfare:\(equipment?.anti_aircraft_warfare ?? 0)")
            Text("Drone:\(equipment?.drone ?? 0)")
            Text("Field Artillery:\(equipment?.fieldArtillery ?? 0)")
            Text("Fuel Tank:\(equipment?.fuel_tank ?? 0)")
                VStack{
            Text("Helicopter:\(equipment?.helicopter ?? 0)")
            Text("Military Auto:\(equipment?.military_auto ?? 0)")
            Text("Naval Ship:\(equipment?.naval_ship ?? 0)")
            Text("Tank:\(equipment?.tank ?? 0)")
            Text("Mobile SRBM System:\(equipment?.mobile_SRBM_system ?? 0)")
                }
            }
            
        }
            
    }
}

struct EquipmentLossesDetail_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentLossesDetail(perssonel: personnelLosses[0], equipment: equipmentLosses[0])
    }
}
