//
//  Notification.swift
//  Fight Against Covid
//
//  Created by Charan Vengatesh on 6/21/20.
//  Copyright © 2020 Charan Vengatesh. All rights reserved.
//

import SwiftUI

struct Notification: View {
    @State private var showGreeting = false
    @State var interval: Double = 30;
    
    var body: some View {
        NavigationView{
        List{
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }
            
            Slider(value: $interval, in: 1.0...120, step: 1)
            
            Text("Every \(Int(interval)) minutes, you will receive a notification to wash your hands.")
            
            Button("Wash your hands notification") {
                let content = UNMutableNotificationContent()
                content.title = "Wash your hands!!"
                content.subtitle = "Just a quick reminder :)"
                content.sound = UNNotificationSound.default

                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: self.interval * 60, repeats: true)

                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                
                UNUserNotificationCenter.current().add(request)
            }.navigationBarTitle("Notifications")
        }
        }
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        Notification()
    }
}
