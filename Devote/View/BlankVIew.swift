//
//  BlankVIew.swift
//  Devote
//
//  Created by Shishir_Mac on 9/8/22.
//

import SwiftUI

struct BlankVIew: View {
    var body: some View {
        VStack {
            Spacer()
        } // VStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .opacity(0.5)
        .edgesIgnoringSafeArea(.all)
    }
}

struct BlankVIew_Previews: PreviewProvider {
    static var previews: some View {
        BlankVIew()
    }
}
