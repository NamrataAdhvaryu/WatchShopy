//
//  TopbarView.swift
//  WatchShopy
//
//  Created by Namrata Akash on 22/06/21.
//

import SwiftUI

struct TopbarView: View {
    var body: some View {
    HStack {
             Button(action:{}) {
                Image(systemName: "line.horizontal.2.decrease.circle")
                               }
    
            Spacer()
            
        HStack(spacing:20) {
                
             Button(action:{}) {
                    Image(systemName: "slider.horizontal.3")
                    
                               }
             Button(action:{}) {
                    Image(systemName: "bag")
                    
                               }
                
            }
        }
       .actionbutton()
        
    }
}

struct TopbarView_Previews: PreviewProvider {
    static var previews: some View {
        TopbarView()
            .padding(24)
        
    }
}
