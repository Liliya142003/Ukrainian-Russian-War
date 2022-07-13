//
//  EquipmentLossesDetail.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct EquipmentLossesDetail: View {
    
    
    var equipment: EquipmentLosses
    
   
    
    var body: some View {
        VStack{
            TitleImage(image: Image("image1"))
                .offset(x: 0, y: -120)
            VStack{
                Text("Losses on: \(equipment.date?.stringValue ?? "0")")
                
                    .font(.title)
                    .fontWeight(.bold)
                //.multilineTextAlignment(.center)
                
                
                Group{
                   
                    Text("Armored Personnel Carrier: \(equipment.APC?.intValue ?? 0 )")
                    Text("Multiple Rocket Launcher: \(equipment.MRL?.intValue ?? 0)")
                    Text("Aircraft: \(equipment.aircraft?.intValue ?? 0 )")
                    Text("Anti-aircraft warfare:\(equipment.anti_aircraft_warfare?.intValue ?? 0)")
                    Text("Drone:\(equipment.drone?.intValue ?? 0 )")
                   
                }.padding(.leading, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Group{
                    Text("Field Artillery:\(equipment.fieldArtillery?.intValue ?? 0)")
                    Text("Fuel Tank:\(equipment.fuel_tank?.intValue ?? 0)")
                    
                    Text("Helicopter:\(equipment.helicopter?.intValue ?? 0)")
                    Text("Military Auto:\(equipment.military_auto?.intValue ?? 0) ")
                    Text("Naval Ship:\(equipment.naval_ship?.intValue ?? 0 )")
                    Text("Tank:\(equipment.tank?.intValue  ?? 0)")
                    Text("Mobile SRBM System:\(equipment.mobile_SRBM_system?.intValue ?? 0)")
                    Text("Special equipment \(equipment.special_equipment?.intValue ?? 0)")
                }.padding(.leading, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
               
            }
            
        }
        
        
    }
  
        
    }




struct EquipmentLossesDetail_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentLossesDetail( equipment: equipmentLosses[0])
    }
}
