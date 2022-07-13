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
        VStack{
            TitleImage(image: Image("image1"))
                .offset(x: 0, y: -120)
            VStack{
                Text("Losses on: \(perssonel.date?.stringValue ?? "0")")
                
                    .font(.title)
                    .fontWeight(.bold)
                //.multilineTextAlignment(.center)
                
                
                Group{
                    Text("Perssonel losses: \(perssonel.personnel?.intValue ?? 0)")
                    Text("Prisoner of War: \(perssonel.POW?.intValue ?? 0 )")
                    
                   
                }.padding(.leading, 20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
               
               
            }
            
        }
        
        
    }
}

struct PerssonalLossesDetail_Previews: PreviewProvider {
    static var previews: some View {
        PerssonalLossesDetail(perssonel: personnelLosses[0])
    }
}
