//
//  PersonalDataList.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 11.07.2022.
//

import SwiftUI

struct PersonalDataList: View {
    var body: some View {
        VStack{
            List(personnelLosses, id: \.day?.intValue){
                data in NavigationLink {
                    PerssonalLossesDetail(perssonel: data)
                } label: { PerssonelDataRow(dataPersonalLosses: data)
                }
            }
        }
        .navigationTitle("Perssonel Losses")
    }
}

struct PersonalDataList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            PersonalDataList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        NavigationView {
            PersonalDataList()
        }
    }
}
