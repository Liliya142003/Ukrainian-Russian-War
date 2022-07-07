//
//  DataList.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct DataList: View {
    var body: some View {
        NavigationView{
            
                
            List(personnelLosses, id: \.day ){
            date in NavigationLink{
               EquipmentLossesDetail(perssonel: date)
                
            } label: { DataRow(dataRowLosses: date)
            }
        }
        .navigationTitle("Date of Ukraine-Russian War")
            
        }
    }
}

struct DataList_Previews: PreviewProvider {
    static var previews: some View {
        DataList()
    }
}
