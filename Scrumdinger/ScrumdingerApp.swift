//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ray on 2022/4/2.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
