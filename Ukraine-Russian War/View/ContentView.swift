//
//  ContentView.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            TitleImage(image: Image("image1"))
            DataList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
