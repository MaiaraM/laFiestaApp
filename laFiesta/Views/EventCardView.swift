//
//  EventCardView.swift
//  laFiesta
//
//  Created by Caroline Andreoni Barcat Intaschi on 04/05/21.
//

import SwiftUI

struct EventCardView: View {
    var eventForCard: EventModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            NavigationLink(destination: EventDetailView(eventSelected: eventForCard)){
                Image("festa-das-cores")
                    .resizable()
                    .frame(height: 150, alignment: .center)
                    .cornerRadius(22)
                
            }
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Text(eventForCard.date)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                    
                    Circle()
                        .fill(Color(red: 76 / 255, green: 208 / 255, blue: 204 / 255))
                        .frame(width: 5, height: 5)
                    
                    Text(eventForCard.name)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                }
                .frame(height: 25, alignment: .center)
                
                HStack{
                    Text(verbatim: eventForCard.local)
                        .foregroundColor(.white)
                        .font(.system(size: 13))
                }
                .frame(height: 25, alignment: .center)
            }
            
        }.background(Color.black)
        
    }
    
}


struct EventCardView_Previews: PreviewProvider {
    static var previews: some View {
        EventCardView(eventForCard: eventsData[3])
    }
}
