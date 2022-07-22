//
//  PerssonalLossesDetail.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 11.07.2022.
//

import SwiftUI

struct PerssonalLossesDetail: View {
    var perssonel: PerssonalLosses
    var body: some View {
        List{
            Text("Perssonel losses: \(perssonel.personnel?.intValue ?? 0)")
            Text("Prisoner of War: \(perssonel.POW?.intValue ?? 0 )")
        }.navigationBarTitle("Losses on: \(perssonel.date?.stringValue ?? "0")", displayMode: .inline)
    }
}

struct PerssonalLossesDetail_Previews: PreviewProvider {
    static var previews: some View {
        PerssonalLossesDetail(perssonel: personnelLosses[0])
    }
}
