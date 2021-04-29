//
//  ContentView.swift
//  laFiesta
//
//  Created by Maiara Martins on 29/04/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedView = 1
    var primaryColor: Color  = Color(UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 1.00))
    var accentColor: Color  = Color(UIColor(red: 0.30, green: 0.82, blue: 0.80, alpha: 1.00))
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 1.00)
    }
    
    var body: some View {
            TabView(selection: $selectedView) {
                ZStack {
                    primaryColor.edgesIgnoringSafeArea(.all)
                }
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(1)
                
                ZStack {
                    primaryColor.edgesIgnoringSafeArea(.all)
                }
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
                .tag(2)
                
                ZStack {
                    primaryColor.edgesIgnoringSafeArea(.all)
                }
                .tabItem {
                    Label("Score", systemImage: "star.leadinghalf.fill")
                }
                .tag(3)
                
                ZStack {
                    primaryColor.edgesIgnoringSafeArea(.all)
                }
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(4)
            }.accentColor(accentColor)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
