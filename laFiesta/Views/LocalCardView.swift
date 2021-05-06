//
//  LocalCardView.swift
//  laFiesta
//
//  Created by Maiara Martins on 06/05/21.
//

import SwiftUI

struct LocalCardView: View {
    var localForCard: EventModel
    @State var saved : Bool = false
    
    init(localForCard:EventModel) {
        self.localForCard = localForCard
        self.saved = localForCard.saved
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing){
        VStack(alignment: .leading, spacing: 10){
            NavigationLink(destination: EventDetailView(eventSelected: localForCard)){
                Image(localForCard.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width:150,height: 100, alignment: .center)
                    .cornerRadius(22)
                
            }
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Text(localForCard.name)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                }
                .frame(height: 25, alignment: .center)
                
                HStack{
                    Text(localForCard.date)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                    
                    Circle()
                        .fill(Color(red: 76 / 255, green: 208 / 255, blue: 204 / 255))
                        .frame(width: 5, height: 5)
                    Text(verbatim: localForCard.local)
                        .foregroundColor(.white)
                        .font(.system(size: 13))
                }
                .frame(height: 25, alignment: .center)
            }
            
        }
            HStack{
                Button(action: {
                    self.saved = !self.saved
                }, label: {
                    Image(systemName: self.saved ? "heart.fill" : "heart")
                    .resizable()
                    .padding(10)
                    .scaledToFill()
                    .frame(width:40,height: 40, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 0.06796951864, green: 0.04477881282, blue: 0.0748642597, alpha: 0.6573518006)).cornerRadius(22))
                })
               
            }.padding(5)

        }
        .background(Color.black)
        .frame(width: 150)
    }
}

struct LocalCardView_Previews: PreviewProvider {
    static var previews: some View {
        LocalCardView(localForCard: eventsData[2])
    }
}
