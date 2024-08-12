//
//  BasketballActivityApp.swift
//  BasketballActivity
//
//  Created by Mohammad Blur on 8/12/24.
//

import SwiftUI

@main
struct BasketballActivityApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
