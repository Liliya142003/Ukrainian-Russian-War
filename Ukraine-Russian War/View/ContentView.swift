//
//  ContentView.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Sidebar()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "Ipad Pro (11-inch) (3rd generation)"], id: \.self) { deviceName in
            EquipmentDataList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
