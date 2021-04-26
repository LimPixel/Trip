//
//  TripRow.swift
//  Trip
//
//  Created by Abdul Halim on 09/04/21.
//

import SwiftUI

struct TripRow: View {
    var trip : Trip
    
    var body: some View {
        HStack{
            Image(trip.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 7 )
            VStack(alignment: .leading){
                Text(trip.nama)
                    .font(.system(size: 20 ))
                Text(trip.lokasi)
                    .font(.system(size: 14))
                    
            }.padding(.leading, 4)
        }.padding(.vertical, 8)
    }
}

struct TripRow_Previews: PreviewProvider {
    static var previews: some View {
        TripRow(trip: trips[3]).previewLayout(.fixed(width: 400, height: 100))
    }
}
