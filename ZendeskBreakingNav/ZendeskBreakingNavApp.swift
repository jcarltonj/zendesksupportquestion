//
//  ZendeskBreakingNavApp.swift
//  ZendeskBreakingNav
//
//  Created by Carlton Jester on 8/9/22.
//

import SwiftUI
import ZendeskSDKMessaging
import ZendeskSDK

@main
struct ZendeskBreakingNavApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    Zendesk.initialize(withChannelKey: <#Add channel key here#>,
                                       messagingFactory: DefaultMessagingFactory()) { result in
                        if case let .failure(error) = result {
                           print("error")
                        }
                    }
                }
        }
    }
}
