//
//  DataList.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct EquipmentDataList: View {
    
    var body: some View {
        
        
        VStack{
            // TitleImage(image: Image("image1"))
            List(equipmentLosses, id: \.day?.intValue){
                
                data in NavigationLink {
                    
                    
                    EquipmentLossesDetail(equipment: data)
                    
                    
                } label: { EquipmentDataRow(dataRowLosses: data)
                }
            }
        }
        .navigationTitle("Equipment Losses")
        
        
    }
}



struct DataList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "Ipad Pro (11-inch) (3rd generation)"], id: \.self) { deviceName in
            EquipmentDataList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        NavigationView{
            EquipmentDataList()
        }
        
    }
}

