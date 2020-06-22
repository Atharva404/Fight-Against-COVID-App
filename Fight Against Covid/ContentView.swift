//
//  ContentView.swift
//  Fight Against Covid
//
//  Created by Charan Vengatesh on 6/21/20.
//  Copyright © 2020 Charan Vengatesh. All rights reserved.
//

import SwiftUI
import UserNotifications


struct ContentView: View {
    @State private var selection = 0
    
 
    var body: some View {
        

        TabView(selection: $selection){
            Facts()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }
                .tag(0)
//            Text("Second View")
//            .font(.title)
//            .tabItem {
//                VStack {
//                    Image(systemName: "chart.bar.fill")
//                    Text("Statistics")
//                }
//            }
//            .tag(1)
            Notification()
            .tabItem {
                VStack {
                    Image(systemName: "bell.fill")
                    Text("Notification")
                }
            }
            .tag(2)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      Group {
         ContentView()
            .environment(\.colorScheme, .light)

         ContentView()
            .environment(\.colorScheme, .dark)
      }
   }
}
#endif
