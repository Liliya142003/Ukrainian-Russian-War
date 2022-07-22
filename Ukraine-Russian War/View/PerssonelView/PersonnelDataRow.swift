//
//  PerssonelDataRow.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 11.07.2022.
//

import SwiftUI

struct PersonnelDataRow: View {
    var dataPersonalLosses: PerssonalLosses
    var body: some View {
        HStack{
            Text(" \(dataPersonalLosses.date?.stringValue ?? "0")")
            Spacer()
            Text("Day \(dataPersonalLosses.day?.intValue ?? 0)")
        }
    }
}

struct PersonnelDataRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonnelDataRow(dataPersonalLosses: personnelLosses[0])
        PersonnelDataRow(dataPersonalLosses: personnelLosses[1])
    }
}
