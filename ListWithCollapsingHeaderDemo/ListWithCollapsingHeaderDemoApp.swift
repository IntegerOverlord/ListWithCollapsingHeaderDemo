//
//  ListWithCollapsingHeaderDemoApp.swift
//  ListWithCollapsingHeaderDemo
//
//  Created by Maksym Fedoriaka on 15.08.2022.
//

import SwiftUI

@main
struct ListWithCollapsingHeaderDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    UITableView.appearance().backgroundColor = .clear
                }
        }
    }
}
