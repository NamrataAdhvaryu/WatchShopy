//
//  ContentView.swift
//  WatchShopy
//
//  Created by Namrata Akash on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedsegmentindex : Int = 0
    let
    watchdata:[Watch] = data
    var body: some View {
        ScrollView(.vertical, showsIndicators:false) {
            VStack(alignment: .leading, spacing: 24) {
                TopbarView()
                
                VStack(alignment: .leading, spacing: 24){
                    Text("Discover our exclusive collection of watches")
                        .font(.system(size: 30, weight: .medium))
                        .padding(.trailing, 24)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, y: 1)
                    
                    Segmentstackview(selectedsegmentedbutton:$selectedsegmentindex)
                        .padding(.top,28)
                        .padding([.leading,.trailing],12)
                    
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), alignment: .leading, spacing: 32) {
                        ForEach(watchdata, id: \.self) { watch in
                            ProductView(watch: watch)
                                .frame(minHeight: UIScreen.main.bounds.width / 1.75)
                        }
                        
                    }.padding(.top,36)
                    
                    
                }.padding(.top,24)
                
            }.padding(24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.light)
    }
}


let data:[Watch] = [
   
    Watch(productimage: "1", title: "Classic Black Watch", price: "₹4852"),
    Watch(productimage: "6", title: "Brown Watch", price: "₹4852"),
    Watch(productimage: "3", title: "Black Watch", price: "₹4852"),
    Watch(productimage: "4", title: "Classic Suede Watch", price: "₹4852"),
    Watch(productimage: "5", title: "Digital Watch", price: "₹4852"),
    Watch(productimage: "2", title: "Minimalist Watch", price: "₹4852"),

]
