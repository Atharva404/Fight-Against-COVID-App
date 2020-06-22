//
//  Facts.swift
//  Fight Against Covid
//
//  Created by Charan Vengatesh on 6/21/20.
//  Copyright © 2020 Charan Vengatesh. All rights reserved.
//

import SwiftUI

struct Facts: View {
    
    let fact1 = ["Coronavirus, Covid-19, is caused by the spread of one person to another person","There is over 2 million currently in United States","Virus ranges from mild symptoms to severe illness"]
    let fact2 = ["Stay 6 feet apart (two arm lengths)","Try to maintains distance by staying indoors","Instead of going to the store, order home delivery"]
    let fact3 = ["Order Online for Groceries", "Try to do fun activities at home", "Instead of going to the store, order home delivery"]
    let fact4 = ["Everyone, children and adults, is at risk", "Be caution due to parents may have medical conditions"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header:
                    Text("What is Covid-19")) {
                        ForEach(0 ..< fact1.count) {
                            Text(self.fact1[$0])
                        }
                    }
                Section(header:
                    Text("How to prevent the spread of Covid-19")) {
                        ForEach(0 ..< fact2.count) {
                            Text(self.fact2[$0])
                        }
                    }
                Section(header:
                Text("Practice social distancing")) {
                    ForEach(0 ..< fact3.count) {
                        Text(self.fact3[$0])
                    }
                }
                Section(header:
                Text("Know The risk of Covid-19")) {
                    ForEach(0 ..< fact4.count) {
                        Text(self.fact4[$0])
                    }
                }
                
                
            } .navigationBarTitle("Home")
        }
           
    }
}

