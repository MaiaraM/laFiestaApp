//
//  QRCode.swift
//  laFiesta
//
//  Created by Caroline Andreoni Barcat Intaschi on 05/05/21.
//

import SwiftUI

struct QRCode: View {
    var eventSelected: EventModel = eventsData[3]
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
            Color.black
            
            Image("festa-das-cores")
                .resizable()
                .frame(width: 400, height: 400, alignment: .top)
                .ignoresSafeArea()
            
           
            Image("COVER")
                .resizable()
                .frame(width: 400, height: 400, alignment: .top)
                .ignoresSafeArea()
            VStack{
                ZStack(alignment: .trailing) {
                    Color.clear
                    Text(verbatim: eventSelected.name)
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .lineLimit(1)
                        .padding(.top, 40.0)
                }
                .frame(height: 100)
                .padding(.leading, 100.0)
                .padding(.trailing, 16.0)
                
                Spacer()
                
                Image("QRCode")
                    .resizable()
                    .frame(width: 275, height: 275, alignment: .center)
                    .padding(.bottom)
                Text("Take a screenshot and save this image to colect points at the party! ")
                    .foregroundColor(.white)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50.0)
                Spacer()
            }
            
        
            
        }.ignoresSafeArea(.all)
        
    }
}

struct QRCode_Previews: PreviewProvider {
    static var previews: some View {
        QRCode()
    }
}
