//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Ray on 2022/4/11.
//

import SwiftUI

struct ThemeView: View {
    
    let theme: Theme
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4.0)
                .fill(theme.mainColor)
            Label(theme.name, systemImage: "paintpalette")
                .padding(4.0)
        }
        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .bubblegum)
    }
}
