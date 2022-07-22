//
//  Image.swift
//  Ukraine-Russian War
//
//  Created by Лілія on 05.07.2022.
//

import SwiftUI

struct TitleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
struct TitleImage_Previews: PreviewProvider {
    static var previews: some View {
        TitleImage(image: Image("image1"))
    }
}
