//
//  DataRow.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct DataRow: View {
    var dataRowLosses: PersonnelLosses
    var body: some View {
        Text(dataRowLosses.date)
    }
}

struct DataRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DataRow(dataRowLosses: personnelLosses[0])
            DataRow(dataRowLosses: personnelLosses[1])
            
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
