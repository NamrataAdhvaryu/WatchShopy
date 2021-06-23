//
//  Viewextension.swift
//  WatchShopy
//
//  Created by Namrata Akash on 22/06/21.
//

import SwiftUI

extension View {

func actionbutton() -> some View {
   self
    .font(.system(size: 24, weight: .medium))
    .foregroundColor(.black)
    .shadow(color: Color.black.opacity(0.1), radius: 5)
    .buttonStyle(PlainButtonStyle())
    
}
    
    
}
