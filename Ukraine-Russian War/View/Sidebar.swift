//
//  firstScreen.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 21.07.2022.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView{
            Group{
                TitleImage(image: Image("image1"))
                List{
                    NavigationLink(" Equipment Losses of russia", destination: EquipmentDataList())
                    NavigationLink(" Personnel Losses of russia", destination: PersonnelDataList())
                }
            }.listStyle(SidebarListStyle())
            EquipmentDataList()
        } .navigationTitle("Ukr-Russ War")
    }
}
struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
