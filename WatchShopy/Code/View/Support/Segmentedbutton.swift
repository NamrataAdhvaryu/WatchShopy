//
//  Segmentedbutton.swift
//  WatchShopy
//
//  Created by Namrata Akash on 22/06/21.
//

import SwiftUI

struct Segmentedbutton: View {
    
    
    @Binding var selectedsegmentedbutton: Int
    let title:String
    let index: Int
    let buttonaction: () -> ()
    var body: some View {
        
        Button(action: buttonaction) {
            Text(title)
                .font(.system(size: 18, weight: .regular))
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.black.opacity(0.1))
                .opacity(self.selectedsegmentedbutton == index ? 1 : 0)
                .animation(.default)
                .padding(-12)
        )
        .buttonStyle(PlainButtonStyle())
    }
    
}


struct Segmentstackview: View {
    
    @Binding var selectedsegmentedbutton: Int
    
    var body: some View {
        HStack {
            Segmentedbutton(selectedsegmentedbutton: $selectedsegmentedbutton, title: "Trending", index: 0, buttonaction: {
                self.selectedsegmentedbutton = 0
            })
            Spacer()
            Segmentedbutton(selectedsegmentedbutton: $selectedsegmentedbutton, title: "Recommended", index: 2,buttonaction: {
                self.selectedsegmentedbutton = 2
            })
            Spacer()
            Segmentedbutton(selectedsegmentedbutton: $selectedsegmentedbutton, title: "Popular", index: 1,buttonaction:  {
                self.selectedsegmentedbutton = 1
            })
            
            
        }
        
        
    }
}


struct Segmentedbutton_Previews: PreviewProvider {
    static var previews: some View {
        //        Segmentedbutton(selectedsegmentedbutton: .constant(0), title: "tranding", index: 1, buttonaction:{} )
        Segmentstackview(selectedsegmentedbutton: .constant(0))
    }
}
