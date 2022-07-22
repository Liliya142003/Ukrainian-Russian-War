//
//  DataRow.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct EquipmentDataRow: View {
    var dataRowLosses: EquipmentLosses
    var body: some View {
        HStack{
            Text(" \(dataRowLosses.date?.stringValue ?? "0")")
            Spacer()
            Text("Day \(dataRowLosses.day?.intValue ?? 0)")
        }
    }
}

struct DataRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            EquipmentDataRow(dataRowLosses: equipmentLosses[0] )
            EquipmentDataRow(dataRowLosses: equipmentLosses[1])
            
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
