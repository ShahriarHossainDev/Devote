//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Shishir_Mac on 7/8/22.
//

import Foundation
import UIKit
import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
