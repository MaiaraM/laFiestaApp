//
//  Home.swift
//  laFiesta
//
//  Created by Maiara Martins on 04/05/21.
//

import Foundation
import SwiftUI


struct HomeView: View {
    init() {
        print(eventsData);
        UITableView.appearance().separatorStyle = .none
       UITableViewCell.appearance().backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
       UITableView.appearance().backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
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
            
        }.background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).edgesIgnoringSafeArea(.all))
    }
}
