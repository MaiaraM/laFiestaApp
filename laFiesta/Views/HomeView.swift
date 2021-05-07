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
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        UINavigationBar.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack(alignment: .leading){
                    Text("Events for you, Carolina")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("Campinas, SP")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .padding(.bottom)
                        ScrollView(.horizontal, showsIndicators: true){
                            HStack(spacing: 20){
                            ForEach(events, id: \.self) { event in
                                LocalCardView(localForCard: event)
                            }
                        }
                    }
                    
                    Text("Events you Liked")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    ZStack {
                        ScrollView(){
                            ForEach(events, id: \.self) { event in
                                EventCardView(eventForCard: event)
                            }
                        }
                        
                        
                    }
                }.padding()
                .navigationBarHidden(true)
            }
            
        }.colorScheme(.dark)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12 Pro")
    }
}
