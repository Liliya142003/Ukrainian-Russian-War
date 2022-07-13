//
//  EquipmentButton.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 11.07.2022.
//

import SwiftUI

struct EquipmentButton: View {
    @State private var showList = false
    @State private var showPersonalList = false
    var body: some View {
        NavigationView {
            VStack {
                Button(action: { showList = true }) {
                    Text("Equipment")
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                       // .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.all,20)
                        .foregroundColor(.blue)
                        .background(LinearGradient(gradient: Gradient(colors: [.green, .green]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
                NavigationLink("", destination:  DataList(), isActive: $showList)
                
                Button(action: { showPersonalList = true }) {
                    Text("Perssonal")
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        //.frame(minWidth: 0, maxWidth: .infinity)
                        .padding(.all,20)
                        .foregroundColor(.blue)
                        .background(LinearGradient(gradient: Gradient(colors: [.green, .green]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
                NavigationLink("", destination:  PersonalDataList(), isActive: $showPersonalList)
            }
        }
    }
}
struct EquipmentButton_Previews: PreviewProvider{
    static var previews: some View{
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "Ipad Pro (11-inch) (3rd generation)"], id: \.self) { deviceName in
         DataList()
               .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
     }
        NavigationView{
            EquipmentButton()
        }
    }
}
