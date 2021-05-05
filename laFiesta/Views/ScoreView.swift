//
//  ScoreView.swift
//  laFiesta
//
//  Created by Caroline Andreoni Barcat Intaschi on 05/05/21.
//

import SwiftUI

struct ScoreView: View {
    @State var logo = 1
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack(alignment: .leading, spacing: 0){
                    Text("Your Score")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .padding(.top, 16.0)
                        .padding()
                    List{
                        ForEach((1...3), id: \.self) {
                            let id = ($0)
                            ScoreCard(n: id)
                        }
                        ForEach((1...3), id: \.self) {
                            let id = ($0)
                            ScoreCard(n: id)
                        }
                        ForEach((1...3), id: \.self) {
                            let id = ($0)
                            ScoreCard(n: id)
                        }
                        ForEach((1...3), id: \.self) {
                            let id = ($0)
                            ScoreCard(n: id)
                        }
                    }
                }.background(Color.black.ignoresSafeArea())
                
            }.navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}

struct ScoreCard: View {
    let n : Int
    
    var body: some View {
        HStack(alignment: .center) {
            Image("logo\(n)")
                .resizable()
                .frame(width: 80, height: 80)
                .ignoresSafeArea()
            VStack (alignment: .leading, spacing: 16){
                Text("24 pontos")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .frame(height: 20)
                    .padding(.top, 2.0)
                Text("Organization Name")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                    .frame(height: 10)
            }
            Spacer()
        }
        .background(Color.gray.opacity(0.3))
        .listRowBackground(Color.black)
        .cornerRadius(13.0)
        .padding(.bottom, 16.0)
        .listRowInsets(EdgeInsets())
    }
}
