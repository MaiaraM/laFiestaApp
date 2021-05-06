//
//  EventDetail.swift
//  laFiesta
//
//  Created by Caroline Andreoni Barcat Intaschi on 03/05/21.
//

import SwiftUI

struct EventDetailView: View {
    var eventSelected: EventModel
    let tableTitles = ["Date", "Time", "Place", "Price"]
    
    
    var body: some View {
            ScrollView{
                VStack{
                    ZStack(alignment: .topLeading) {
                        Color.clear
                        VStack(alignment: .leading) {
                            
                            Text(verbatim: eventSelected.name)
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
                                    .frame(width: 400, height: 420, alignment: .top), alignment: .top)
                    
                    .background(Image("festa-das-cores")
                                    .resizable()
                                    .frame(width: 400, height: 400, alignment: .top), alignment: .top)
                    .background(Color.black)
                    .ignoresSafeArea()
                    
                    Text("Descrição da festa aqui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi non posuere nisl. Aliquam erat volutpat. Quisque ac quam finibus, pharetra quam in, auctor justo. Suspendisse a ex dictum, suscipit augue a, efficitur sem. Suspendisse potenti. Mauris erat lorem, tincidunt at tortor non, congue ullamcorper enim. Morbi fermentum orci pellentesque elit hendrerit bibendum at id orci. Morbi vel metus mattis, mattis purus sed, sagittis velit. Nullam vestibulum porttitor odio bibendum auctor. In sit amet mi eu nisl tristique consequat nec vitae dui.Descrição da festa aqui. Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                        .padding(.bottom)
                    
                    ForEach((0...3), id: \.self) {
                        let id = ($0)
                        let eventInfos = [eventSelected.date, "19h - 23h", eventSelected.local, "R$ 80,00"]
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
                    })
                    {
                        NavigationLink(destination: QRCode(eventSelected: eventSelected)) {
                            Text("Generate QR Code")
                                .frame(maxWidth: .infinity)
                                .font(.title2)
                                
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(#colorLiteral(red: 0.2980392157, green: 0.8156862745, blue: 0.8, alpha: 1)))
                                .cornerRadius(14)
                        }
                    }
                    .padding(.top, 32.0)
                }
                .padding(.horizontal, 16.0)
            }
            .padding(.bottom, 68.0)
            .background(Color.black)
            .ignoresSafeArea(.all)
        }
}

struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(eventSelected: eventsData[3])
            .previewDevice("iPhone 12 Pro")
    }
}
