//
//  memeApp.swift
//  meme
//
//  Created by t2023-m0063 on 2023/08/09.
//

import SwiftUI

@main
struct memeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
