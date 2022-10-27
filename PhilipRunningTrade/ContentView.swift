//
//  ContentView.swift
//  PhilipRunningTrade
//
//  Created by Arief Ramadhan on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    
//    var stocks = ["Digi", "Wege"]
//    var prizes = ["191"]
//    var chgs = ["+3.80%"]
//    var vols = ["170"]
//    var acts = ["BU"]
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    ListView()
                    ForEach((1...100), id: \.self) {_ in
                        DataView(Stock: "DEge", Prize: "130", CHG: "12342", Vol: "90", Act: "push")
                    }
                    
//                    Spacer()
                }.background(Color.black)
                    .foregroundColor(.green)
            }
        }.navigationTitle("Running Trade")
//            .background(ignoresSafeAreaEdges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListView: View{
    var body: some View{
        //        VStack{
        HStack(spacing: 33){
            Text("Stock")
            Text("Prize")
            Text("CHG")
            Text("Vol")
            Text("Act")
            Text("Time")
        }
        .frame(width: 400)
        .background(Color.blue)
        //        }
    }
}

struct DataView: View{
    
    var Stock: String
    var Prize: String
    var CHG: String
    var Vol: String
    var Act: String
//    var Time = Date.now
    
    var body: some View{
        VStack{
            HStack(spacing: 28){
                Text(Stock)
                Text(Prize)
                Text(CHG)
                Text(Vol)
                Text(Act)
                Text(Date.now, format: .dateTime.hour().minute())
            }.frame(height: 25)
        }
    }
}



////                ForEach(stocks, id: \.self) { stock in
//                    DataView(Stock: stocks, Prize: prizes, CHG: chgs, Vol: vols, Act: acts)
//                }
