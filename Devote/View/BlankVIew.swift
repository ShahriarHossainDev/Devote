//
//  BlankVIew.swift
//  Devote
//
//  Created by Shishir_Mac on 9/8/22.
//

import SwiftUI

struct BlankVIew: View {
    var backgroundColor: Color
    var backgroundOpacity: Double
    
    var body: some View {
        VStack {
            Spacer()
        } // VStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(backgroundOpacity)
        .edgesIgnoringSafeArea(.all)
        .blendMode(.overlay)
    }
}

struct BlankVIew_Previews: PreviewProvider {
    static var previews: some View {
        BlankVIew(backgroundColor: Color.black, backgroundOpacity: 0.3)
            .background(BackgroundImageView())
            .background(backgroundGradient.ignoresSafeArea(.all))
    }
}
