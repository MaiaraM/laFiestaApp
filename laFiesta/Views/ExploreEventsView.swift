
import Foundation
import SwiftUI

struct ExploreEventsView: View {

    private var events2:[EventModel]
    
    init() {
        events2 = eventsData
    }
    
    @State public var search: String = ""
    
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
                    .background(Color(#colorLiteral(red: 0.462745098, green: 0.462745098, blue: 0.5019607843, alpha: 1)))
                    .font(.system(size: 17))
                    .foregroundColor(Color(#colorLiteral(red: 0.9215686275, green: 0.9215686275, blue: 0.9607843137, alpha: 1)))

                    if search == "" {
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(#colorLiteral(red: 0.9215686275, green: 0.9215686275, blue: 0.9607843137, alpha: 1)))

                            Text("Search...").foregroundColor(Color(#colorLiteral(red: 0.9215686275, green: 0.9215686275, blue: 0.9607843137, alpha: 1)))
                        }.font(.system(size: 17))
                    }
            }

            if search == "" {
                List(){
//                    VStack(spacing: 0){
//                        ForEach(eventsData) { event in
//
////                            event.image
////                                .resizable()
////                                .frame(width: 370, height: 200, alignment: .center)
//
//                            HStack{
//                                Text(event.date)
//                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 14))
//                                    .offset(y: 10)
//
//                                Circle()
//                                    .fill(Color(red: 76 / 255, green: 208 / 255, blue: 204 / 255))
//                                    .frame(width: 5, height: 5)
//                                    .offset(y: 12)
//
//                                Text(event.name)
//                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 17))
//                                    .offset(y: 10)
//                            }
//                            .frame(width: 370, height: 27, alignment: .topLeading)
//                            .background(Color.black)
//                            .opacity(0.9)
//
//                            HStack{
//                                Text(event.local)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 13))
//                                    .offset(y: 10)
//                            }
//                            .frame(width: 370, height: 40, alignment: .topLeading)
//                            .background(Color.black)
//                            .opacity(0.9)
//                        }
//                    }
//                    .offset(x: -20, y: -20)
                }
            }
            else{
                List{
//                    VStack(spacing: 0){
//                        ForEach(events2) { event in
//
////                            event.image
////                                .resizable()
////                                .frame(width: 370, height: 200, alignment: .center)
//
//                            HStack{
//                                Text(event.date)
//                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 14))
//                                    .offset(y: 10)
//
//                                Circle()
//                                    .fill(Color(red: 76 / 255, green: 208 / 255, blue: 204 / 255))
//                                    .frame(width: 5, height: 5)
//                                    .offset(y: 12)
//
//                                Text(event.name)
//                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 17))
//                                    .offset(y: 10)
//                            }
//                            .frame(width: 370, height: 27, alignment: .topLeading)
//                            .background(Color.black)
//                            .opacity(0.9)
//
//                            HStack{
//                                Text(event.local)
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 13))
//                                    .offset(y: 10)
//                            }
//                            .frame(width: 370, height: 370, alignment: .topLeading)
//                            .background(Color.black)
//                            .opacity(0.9)
//                        }
//                    }
//                    .offset(x: -20, y: -20)
                }
            }
        }.padding()
    }
}

