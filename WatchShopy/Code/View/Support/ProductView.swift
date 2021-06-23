//
//  ProductView.swift
//  WatchShopy
//
//  Created by Namrata Akash on 22/06/21.
//

import SwiftUI

struct ProductView: View {
    
    let watch : Watch
    
    var body: some View {
        GeometryReader { geo in
            let height = geo.size.height
            
            ZStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 12)
                    .opacity(0.05)
                VStack {
                    Image(watch.productimage)
                        .resizable()
                        .scaledToFit()
                        .frame(height : height * 0.75)
                        .offset(x: 4)
                    Text(watch.title)
                        .font(.system(size: 18, weight: .medium))
                    Text(watch.price)
                        .font(.system(size: 16, weight: .bold, design: .monospaced))
                        .padding(.top, 12)
                        .foregroundColor(Color(hex: "DD614A"))
                }.padding(.top,-24)
            }
            
            
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(watch: Watch(productimage: "1", title: "Classic Black Watch", price: "₹4852"))
    }
}
