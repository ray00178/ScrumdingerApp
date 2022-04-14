//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Ray on 2022/4/11.
//

import SwiftUI

struct ThemePicker: View {
    
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) {
                ThemeView(theme: $0)
                    .tag($0)
            }
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        // You can use the constant(_:) type method to create a binding to a hard-coded, immutable value. Constant bindings are useful in previews or when prototyping your app’s UI.
        ThemePicker(selection: .constant(.periwinkle))
    }
}
