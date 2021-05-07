//
//  RewardCardView.swift
//  laFiesta
//
//  Created by Caroline Andreoni Barcat Intaschi on 07/05/21.
//

import SwiftUI

struct RewardCardView: View {
    @State var reward: String
    @State var n: Int
    var body: some View {
            ZStack(alignment: .topTrailing){
            VStack(alignment: .leading, spacing: 10){
                Image("reward\(n)")
                    .resizable()
                    .scaledToFill()
                    .frame(width:150,height: 100, alignment: .center)
                    .cornerRadius(22)
                VStack(alignment: .leading, spacing: 0){
                    HStack{
                        Text(reward)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                            .lineLimit(2)
                    }
                    .frame(height: 25, alignment: .center)
                    
                    HStack{
                        Text("Balada Pink")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                        
                    }
                    .frame(height: 25, alignment: .center)
                }
                
            }

            }
            .background(Color.black)
            .frame(width: 150)
        }
}

struct RewardCardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardCardView(reward: "This is the price", n: 0)
    }
}
