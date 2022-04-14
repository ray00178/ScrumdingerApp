//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ray on 2022/4/2.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    // Passing Data with Bindings
    // In this tutorial, you used @State to create a source of truth for a value type,
    // and you used @Binding to share write access to a state with other views.
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
