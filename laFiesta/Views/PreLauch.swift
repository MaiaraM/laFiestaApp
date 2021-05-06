//
//  PreLauch.swift
//  laFiesta
//
//  Created by Maiara Martins on 06/05/21.
//

import SwiftUI

struct PreLauch: View {
    @State private var showMainView = false
    @State private var isAnimating = false


    
    var body: some View {
        Group{
            if showMainView {
                BaseView()
            }else{
                TabView(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                    ZStack {
                        Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).edgesIgnoringSafeArea(.all)
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
                }.accentColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))).disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
        }.onAppear(perform: {
            showMainView = true
        }).animation(Animation.linear(duration: 2).delay(1))

      
    }
}

struct PreLauch_Previews: PreviewProvider {
    static var previews: some View {
        PreLauch()
    }
}
