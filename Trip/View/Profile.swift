//
//  Profile.swift
//  Trip
//
//  Created by Abdul Halim on 09/04/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            
            Image("profile")
                .frame(width : 300, height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .shadow(radius: 10 )
                
            
            Text("Abdul Halim")
                .font(.title2)
                .padding(.top, 16)
            
            Text("neonblackcat19@gmail.com")
                .padding(.top, 2)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
