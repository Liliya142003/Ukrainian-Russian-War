//
//  PersonalDataList.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 11.07.2022.
//

import SwiftUI

struct PersonnelDataList: View {
    var body: some View {
        VStack{
            List(personnelLosses, id: \.day?.intValue){
                data in NavigationLink {
                    PersonnelLossesDetail(perssonel: data)
                } label: { PersonnelDataRow(dataPersonalLosses: data)
                }
            }
        }
        .navigationTitle("Personnel Losses")
    }
}

struct PersonnelDataList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            PersonnelDataList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        NavigationView {
            PersonnelDataList()
        }
    }
}
