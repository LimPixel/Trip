//
//  TripDetail.swift
//  Trip
//
//  Created by Abdul Halim on 09/04/21.
//

import SwiftUI

struct TripDetail: View {
    var trip : Trip
    var body: some View {
        ScrollView{
            VStack{
                Spacer(minLength: 20)
                Image(trip.image)
                    
                    .frame(width: 300, height: 300)
                    .overlay(Circle().stroke(Color.white, lineWidth: 10))
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                HStack{
                    Text("Nama Tempat : ")
                    Spacer()
                    Text(trip.nama)
                        
                }.padding()
                
                HStack{
                    Text("Lokasi : ")
                    Spacer()
                    Text(trip.lokasi)
                        
                }.padding()

                HStack{
                    Text("Tipe : ")
                    Spacer()
                    Text(trip.tipe)
                        
                }.padding()

            }
        }.navigationTitle("Detail")
    }
}

struct TripDetail_Previews: PreviewProvider {
    static var previews: some View {
        TripDetail(trip: trips[3])
    }
}
