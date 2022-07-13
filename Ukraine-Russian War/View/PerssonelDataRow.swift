//
//  PerssonelDataRow.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 11.07.2022.
//

import SwiftUI

struct PerssonelDataRow: View {
    var dataPersonalLosses: PerssonalLosses
    var body: some View {
        HStack{
            Text(" \(dataPersonalLosses.date?.stringValue ?? "0")")
            Spacer()
            Text("Day \(dataPersonalLosses.day?.intValue ?? 0)")
        }
    }
}
    


struct PerssonelDataRow_Previews: PreviewProvider {
    static var previews: some View {
        PerssonelDataRow(dataPersonalLosses: personnelLosses[0])
        PerssonelDataRow(dataPersonalLosses: personnelLosses[1])
    }
}
