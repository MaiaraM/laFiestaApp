//
//  Home.swift
//  laFiesta
//
//  Created by Maiara Martins on 04/05/21.
//

import Foundation
import SwiftUI


struct HomeView: View {
    var events:[EventModel]
    
    init() {
        events = eventsData;
     
    }
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Explore Events")
                .foregroundColor(.white)
                .font(.system(size: 34))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text("Start looking for events names and places")
                .foregroundColor(.white)
                .font(.system(size: 15))
                .padding(.bottom)
            
            ZStack(alignment: .top) {
                Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                List(events, id: \.id) { event in
                       EventCardView(eventForCard: event)
                   }
                    .font(.title)
                }


            NavigationView{
                 List(events, id: \.id) { event in
                        EventCardView(eventForCard: event)
                    }.listRowBackground(Color.red)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .background(Color.yellow)

                    
                }
        
        
           
            
            
        }.background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).edgesIgnoringSafeArea(.all))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12 Pro")
    }
}
