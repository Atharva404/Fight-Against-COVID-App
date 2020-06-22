//
//  Notifications.swift
//  Fight Against Covid
//
//  Created by Charan Vengatesh on 6/21/20.
//  Copyright © 2020 Charan Vengatesh. All rights reserved.
//

import SwiftUI

struct Notifications: View {
    @State private var showGreeting = false

    var body: some View {
        List{
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("Wash Your Hands Notification")
            }.padding()

            if showGreeting {
                Text("Hello World!")
            }
        }
            VStack {
                Toggle(isOn: $showGreeting) {
                    Text("Wear A Mask Notification")
                }.padding()

                if showGreeting {
                    Text("Hello World!")
                }
            }
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
