
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
                    VStack(spacing: 0){
                        ForEach(events2, id: \.self) { event in
                            EventCardView(eventForCard: event)
                        }
                    }
                    .offset(x: -20, y: -6)
                }
            }
            else{
//                List{
//                    VStack(spacing: 0){
//                        ForEach(events2, id: \.self) { event in
//                            EventCardView(eventForCard: event2)
//                        }
//                    }
//                    .offset(x: -20, y: -20)
//                }
            }
        }.padding()
    }
}

