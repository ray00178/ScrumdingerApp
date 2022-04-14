//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Ray on 2022/4/6.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var scrum: DailyScrum
    
    @State private var data = DailyScrum.Data()
    @State private var isPresentingEditView: Bool = false
    
    var body: some View {
        List {
            Section {
                NavigationLink(destination: MeetingView(scrum: $scrum)) {
                    Label("Start meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)")
                        .padding(4.0)
                        .foregroundColor(scrum.theme.accentColor)
                        .background {
                            scrum.theme.mainColor
                        }
                        .cornerRadius(4.0)
                }
                .accessibilityElement(children: .combine)
            } header: {
                Text("Meeting Info")
            }
            Section {
                ForEach(scrum.attendees) { (attendee) in
                    Label(attendee.name, systemImage: "person")
                }
            } header: {
                Text("Attendees")
            }
        }
        .navigationTitle(scrum.title)
        .toolbar(content: {
            Button("Edit") {
                isPresentingEditView = true
                data = scrum.data
            }
        })
        .sheet(isPresented: $isPresentingEditView) {
            NavigationView {
                DetailEditView(data: $data)
                    .navigationTitle(scrum.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingEditView = false
                                scrum.update(from: data)
                            }
                        }
                    }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: .constant(DailyScrum.sampleData[0]))
        }
    }
}
