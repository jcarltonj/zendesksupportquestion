//
//  ZendeskContainer.swift
//  ZendeskBreakingNav
//
//  Created by Carlton Jester on 8/9/22.
//

import SwiftUI
import ZendeskSDKMessaging
import ZendeskSDK

struct ZendeskContainer: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        // Do not wrap the below view in a NavigationView
        VStack(alignment: .leading, spacing: .zero) {
            Button("Back") {
                isPresented = false
            }.padding(.top, 20)
                .foregroundColor(.red)
            MessagingView()
//                .edgesIgnoringSafeArea([.bottom, .top])
        }
//        .ignoresSafeArea(.container, edges: .top)
//            .navigationBarHidden(true)
        
    }
}

struct MessagingView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        
        guard let viewController = Zendesk.instance?.messaging?.messagingViewController() else { return UIViewController() }
        
        viewController.navigationController?.setNavigationBarHidden(true, animated: false)
        // Return a UINavigationController containing our UIViewController
        return viewController
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        return
    }
    
}
