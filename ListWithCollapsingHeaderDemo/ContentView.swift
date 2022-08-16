//
//  ContentView.swift
//  ListWithCollapsingHeaderDemo
//
//  Created by Maksym Fedoriaka on 15.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Scroll View") {
                    ScrollViewDemo()
                }
                NavigationLink("List View") {
                    ListDemo()
                }
            }
            .navigationTitle("Demo")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HeaderView: View {
    let text: String
    let backgroundColor: Color

    var body: some View {
        Text(self.text)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(self.backgroundColor)
    }
}

struct ScrollViewDemo: View {
    var body: some View {
        ScrollViewWithCollapsingHeader(
            header: HeaderView(text: "Scroll View Demo", backgroundColor: .green),
            headerBackgroundColor: .green
        ) {
            LazyVStack(spacing: 0) {
                ForEach(1..<5000) {
                    Text("\($0)")
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                }
            }
        }
    }
}

struct ListDemo: View {
    var body: some View {
        ListWithCollapsingHeader(
            header: HeaderView(text: "List View Demo", backgroundColor: .yellow),
            headerBackgroundColor: .yellow,
            style: .grouped
        ) {
            Section(header: EmptyHeaderFooterView()) {
                ForEach(1..<5000) {
                    Text("\($0)")
                }
            }
        }
    }
}
