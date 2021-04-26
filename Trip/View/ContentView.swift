//
//  ContentView.swift
//  Trip
//
//  Created by Abdul Halim on 09/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TripList()
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Trip")
                }
            Profile()
                .tabItem {
                    Image(systemName: "person")
                    Text("Creator")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
