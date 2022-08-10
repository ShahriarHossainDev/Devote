//
//  CheckBoxStyle.swift
//  Devote
//
//  Created by Shishir_Mac on 9/8/22.
//

import SwiftUI

struct CheckBoxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack{
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .onTapGesture {
                    configuration.isOn.toggle()
                    feedback.notificationOccurred(.success)
                    
                    if configuration.isOn {
                        playSound(sound: "sound-rise", type: "mp3")
                    } else {
                        playSound(sound: "sound-tap", type: "mp3")
                    }
                }
            
            configuration.label
        }// HStack
    }
}

struct CheckBoxStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder", isOn: .constant(true))
            .padding()
            .previewLayout(.sizeThatFits)
            .toggleStyle(CheckBoxStyle())
    }
}
