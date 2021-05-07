//
//  ScoreView.swift
//  laFiesta
//
//  Created by Caroline Andreoni Barcat Intaschi on 05/05/21.
//

import SwiftUI

struct ScoreView: View {
    @State var logo = 1
    var prices = ["50% de desconto do ingresso", "2 margueritas", "1 porção grande de batata frita", "2 canecas de cerveja"]
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack(alignment: .leading, spacing: 0){
                    Text("Resgate agora")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding([.leading, .bottom], 16.0)
                    ZStack {
                        ScrollView(.horizontal, showsIndicators: true){
                            HStack(spacing: 8){
                                ForEach((0...3), id: \.self) {
                                    let id = ($0)
                                    RewardCardView(reward: prices[id], n: id)
                                }
                            }
                        }.padding(.leading, 16.0)
                    }.padding(.bottom, 24.0)
                    Text("Sua pontuação")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .padding(.top, 16.0)
                        .padding()
                        .frame(height:40)
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
                }
                .padding(.top, 16.0)
                .background(Color.black.ignoresSafeArea())
                
                
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
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .frame(height: 20)
                    .padding(.top, 2.0)
                Text("Organization Name")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
                    .frame(height: 10)
            }
            .padding(.leading, 16.0)
            Spacer()
        }
        .background(Color.gray.opacity(0.3))
        .listRowBackground(Color.black)
        .cornerRadius(13.0)
        .padding(.bottom, 16.0)
        .listRowInsets(EdgeInsets())
    }
}
