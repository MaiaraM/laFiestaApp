
import Foundation
import SwiftUI

struct ExploreEvents: View {

    private var events2 = [
        Event(name: "Festa Kaus", date: "26 ago", address: "Pink - Campinas", image: "festa-kaus.jpg"),
    ]
    
    @State public var search: String = ""
    let color = Color(red: 235 / 255, green: 235 / 255, blue: 245 / 255, opacity: 0.6)
    let color2 = Color(red: 118 / 255, green: 118 / 255, blue: 128 / 255, opacity: 0.24)
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
            
            ZStack(alignment: .leading) {
                TextField("Search...", text: $search)
                    .background(color2)
                    .font(.system(size: 17))
                    .foregroundColor(color)
                    
                    if search == "" {
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(color)
                            
                            Text("Search...").foregroundColor(color)
                        }.font(.system(size: 17))
                    }
            }
            
            if search == "" {
                List{
                    VStack(spacing: 0){
                        ForEach(events) { event in
                            
                            Image(uiImage: UIImage(named: event.image)!)
                                .resizable()
                                .frame(width: 370, height: 200, alignment: .center)
                            
                            HStack{
                                Text(event.date)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .offset(y: 10)
                                
                                Circle()
                                    .fill(Color(red: 76 / 255, green: 208 / 255, blue: 204 / 255))
                                    .frame(width: 5, height: 5)
                                    .offset(y: 12)
                                
                                Text(event.name)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .font(.system(size: 17))
                                    .offset(y: 10)
                            }
                            .frame(width: 370, height: 27, alignment: .topLeading)
                            .background(Color.black)
                            .opacity(0.9)
                            
                            HStack{
                                Text(event.address)
                                    .foregroundColor(.white)
                                    .font(.system(size: 13))
                                    .offset(y: 10)
                            }
                            .frame(width: 370, height: 40, alignment: .topLeading)
                            .background(Color.black)
                            .opacity(0.9)
                        }
                    }
                    .offset(x: -20, y: -20)
                }
            }
            else{
                List{
                    VStack(spacing: 0){
                        ForEach(events2) { event in
                            
                            Image(uiImage: UIImage(named: event.image)!)
                                .resizable()
                                .frame(width: 370, height: 200, alignment: .center)
                            
                            HStack{
                                Text(event.date)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14))
                                    .offset(y: 10)
                                
                                Circle()
                                    .fill(Color(red: 76 / 255, green: 208 / 255, blue: 204 / 255))
                                    .frame(width: 5, height: 5)
                                    .offset(y: 12)
                                
                                Text(event.name)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                                    .font(.system(size: 17))
                                    .offset(y: 10)
                            }
                            .frame(width: 370, height: 27, alignment: .topLeading)
                            .background(Color.black)
                            .opacity(0.9)
                            
                            HStack{
                                Text(event.address)
                                    .foregroundColor(.white)
                                    .font(.system(size: 13))
                                    .offset(y: 10)
                            }
                            .frame(width: 370, height: 370, alignment: .topLeading)
                            .background(Color.black)
                            .opacity(0.9)
                        }
                    }
                    .offset(x: -20, y: -20)
                }
            }
        }.padding()
    }
}

