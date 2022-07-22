//
//  PerssonalLossesDetail.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 11.07.2022.
//

import SwiftUI

struct PersonnelLossesDetail: View {
    var perssonel: PerssonalLosses
    var body: some View {
        List{
            Text("Personnel losses: \(perssonel.personnel?.intValue ?? 0)")
            Text("Prisoner of War: \(perssonel.POW?.intValue ?? 0 )")
        }.navigationBarTitle("Losses on: \(perssonel.date?.stringValue ?? "0")", displayMode: .inline)
    }
}

struct PersonnelLossesDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonnelLossesDetail(perssonel: personnelLosses[0])
    }
}
