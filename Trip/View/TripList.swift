//
//  TripList.swift
//  Trip
//
//  Created by Abdul Halim on 09/04/21.
//

import SwiftUI

struct TripList: View {
    var body: some View {
        NavigationView{
            
            List(trips) { trip in
                
                NavigationLink(destination: TripDetail(trip : trip)){
                    TripRow(trip: trip)
                }
                
            }.navigationBarTitle(Text("Trip List"))
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct TripList_Previews: PreviewProvider {
    static var previews: some View {
        TripList()
    }
}
