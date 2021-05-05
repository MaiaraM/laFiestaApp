//
//  ContentView.swift
//  laFiesta
//
//  Created by Maiara Martins on 29/04/21.
//

import SwiftUI

struct BaseView: View {
    @State var selectedView = 2
   
    
    init() {
        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.3882352941, green: 0.3882352941, blue: 0.4, alpha: 1)
    }
    
    var body: some View {
       
            TabView(selection: $selectedView) {
                ZStack {
                    Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).edgesIgnoringSafeArea(.all)
                    HomeView()
                }
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(1)
                
                ZStack {
                    Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).edgesIgnoringSafeArea(.all)
                    ExploreEventsView()
                }
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
                .tag(2)
                
                ZStack {
                    Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).edgesIgnoringSafeArea(.all)
                }
                .tabItem {
                    Label("Score", systemImage: "star.leadinghalf.fill")
                }
                .tag(3)
                
                ZStack {
                    Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).edgesIgnoringSafeArea(.all)
                }
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(4)
            }.accentColor(Color(#colorLiteral(red: 0.2980392157, green: 0.8156862745, blue: 0.8, alpha: 1)))
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
            .previewDevice("iPhone 12 Pro")
    }
}
