//
//  ContentView.swift
//  ZendeskBreakingNav
//
//  Created by Carlton Jester on 8/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var presented: Bool = false
    var body: some View {
        NavigationView {
            NavigationLink("Demo", isActive: $presented) {
                ZendeskContainer(isPresented: $presented)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
