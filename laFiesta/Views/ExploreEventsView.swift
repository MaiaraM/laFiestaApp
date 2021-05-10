
import Foundation
import SwiftUI

struct ExploreEventsView: View {

    private var events2:[EventModel]

    init() {
        events2 = eventsData
    }
    
    @State public var search: String = ""
    @State private var isEditing = false

    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()

                VStack{
                    HStack{
                        Text("Explore Events")
                            .foregroundColor(.white)
                            .font(.system(size: 34))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                    }
                    HStack{
                        Text("Start looking for events names and places")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .padding(.bottom)
                        
                        Spacer()
                    }

//                    HStack{
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.secondary)
////                            .offset(x: 10)
//
//                        TextField("Search...", text: $search)
//                            .padding(7)
////                            .padding(.horizontal, 2)
//                            .background(Color(#colorLiteral(red: 0.462745098, green: 0.462745098, blue: 0.5019607843, alpha: 1)))
//                            .background(Color.white)
//                            .cornerRadius(8)
////                            .padding(.horizontal, 2)
//                            .onTapGesture {
//                                self.search = " "
//                            }
//
//                        if search != "" {
//                            Button(action: {
//                                self.search = ""
//
//                            }) {
//                                Text("Cancel")
//                            }
//                            .padding(.trailing, 5)
//                            .transition(.move(edge: .trailing))
//                            .animation(.default)
//                        }
//                    }
//                    .background(Capsule().fill(Color.white))

                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color(#colorLiteral(red: 0.92, green: 0.92, blue: 0.96, alpha: 0.6)))
                            .offset(x: 15)
                        
                        ZStack(alignment: .leading){
                            Text("Search...").font(.system(size: 17, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.92, green: 0.92, blue: 0.96, alpha: 0.6)))
                                .tracking(-0.41)
                                .offset(x: 20)
                            
                            TextField("Search...", text: $search)
                                .padding(7)
                                .padding(.horizontal, 2)
                                .cornerRadius(8)
                                .padding(.horizontal, 10)
                                .onTapGesture {
                                    self.isEditing = true
                                }
                        }
                        
             
                        if isEditing {
                            Button(action: {
                                self.isEditing = false
                                self.search = ""
             
                            }) {
                                Text("Cancel")
                            }
                            .padding(.trailing, 10)
                            .transition(.move(edge: .trailing))
                            .animation(.default)
                            .foregroundColor(Color(#colorLiteral(red: 0.92, green: 0.92, blue: 0.96, alpha: 0.6)))
                        }
                    }
                    .padding(.bottom, 3)
                    .background(Capsule().fill(Color(#colorLiteral(red: 0.462745098, green: 0.462745098, blue: 0.5019607843, alpha: 0.24))))

                    ZStack {
                        ScrollView(){
                            ForEach(events2, id: \.self) { event in
                                EventCardView(eventForCard: event)
                            }
                        }
                    }
                }.padding()
                .navigationBarHidden(true)
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreEventsView()
            .previewDevice("iPhone 12 Pro")
    }
}
