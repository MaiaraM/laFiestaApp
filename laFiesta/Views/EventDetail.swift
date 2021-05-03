//
//  EventDetail.swift
//  laFiesta
//
//  Created by Caroline Andreoni Barcat Intaschi on 03/05/21.
//

import SwiftUI

struct EventDetail: View {
    var eventSelected: Event = events[3]
        var tableTitles = ["Date", "Time", "Place", "Price"]
        var accentColor: Color  = Color(UIColor(red: 0.30, green: 0.82, blue: 0.80, alpha: 1.00))
        
    
    var body: some View {
        ScrollView{
            VStack{
                ZStack(alignment: .topLeading) {
                    Color.clear
                    VStack(alignment: .leading) {
                        
                        Text(eventSelected.name)
                            .foregroundColor(.white)
                            .font(.system(size: 34))
                            .fontWeight(.bold)
                            .padding(.bottom)
                            .padding(.top, 250.0)
                        
                        Text("Organization Name")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .fontWeight(.bold)
                            .padding(.bottom)
                        
                        
                    }
                }
                .background(Image(uiImage: UIImage(named: "COVER")!)
                                .resizable()
                                .frame(width: 400, height: 462, alignment: .top), alignment: .top)
                
                .background(Image(uiImage: UIImage(named: events[3].image)!)
                                .resizable()
                                .frame(width: 400, height: 462, alignment: .top), alignment: .top)
                .background(Color.black)
                .ignoresSafeArea()
                
                Text("Descrição da festa aqui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non posuere nisl. Aliquam erat volutpat. Quisque ac quam finibus, pharetra quam in, auctor justo. Suspendisse a ex dictum, suscipit augue a, efficitur sem. Suspendisse potenti. Mauris erat lorem, tincidunt at tortor non, congue ullamcorper enim. Morbi fermentum orci pellentesque elit hendrerit bibendum at id orci. Morbi vel metus mattis, mattis purus sed, sagittis velit. Nullam vestibulum porttitor odio bibendum auctor. In sit amet mi eu nisl tristique consequat nec vitae dui.Descrição da festa aqui. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                    .foregroundColor(.white)
                    .font(.system(size: 12))
                    .padding(.bottom)
                
                ForEach((0...3), id: \.self) {
                    let id = ($0)
                    let eventInfos = [eventSelected.date, "19h - 23h", eventSelected.address, "R$ 80,00"]
                    HStack {
                        Text(tableTitles[id])
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                            .padding(.vertical, 10.0)
                        Spacer()
                        Text(eventInfos[id])
                            .foregroundColor(.gray)
                            .font(.system(size: 17))
                            .padding(.vertical, 10.0)
                        
                        
                    }
                    Divider().background(Color.white)
                    
                }
                
                Button(action: {
                    print("Generate QR Code button tapped")
                }) {
                    Text("Generate QR Code")
                        .frame(maxWidth: .infinity)
                        .font(.title2)
                        
                        .foregroundColor(.white)
                        .padding()
                        .background(accentColor)
                        .cornerRadius(14)
                }
                .padding(.top, 32.0)
            }
            .padding(.horizontal, 16.0)
        }
        .ignoresSafeArea()
        .padding(.bottom, 68.0)
        .background(Color.black)
        
    }
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail()
            .previewDevice("iPhone 12 Pro")
    }
}
