//
//  TrackerlyApp.swift
//  Trackerly
//
//  Created by Choon-Weng Chan on 6/27/23.
//

import SwiftUI
@main
struct CalendarSwiftUIApp: App {
  var body: some Scene {
    WindowGroup {
      let dateHolder = DateHolder()
        calendar()
            .environmentObject(dateHolder)
    }
  }
}
