//
//  NavBar.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 13/12/21.
//

import SwiftUI
import MapKit

struct NavBar: View {
    
    @State private var viewModel = ContentViewModel()
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
  
        ZStack (alignment: .topLeading){

                // FARE LET ANCHE PER TITOLO ECC
                let cachePinnati = [
                    PlaceCache(name: "Geo1", coordinate: CLLocationCoordinate2D(latitude: 40.84733, longitude: 14.25226))]
                
                Map(coordinateRegion: $viewModel.region, annotationItems: cachePinnati) {
                    PlaceCache in
                    MapAnnotation(coordinate: PlaceCache.coordinate) {
                        ZStack{
                            Image("CachePin")
                            Image(systemName: "shippingbox.fill")
                                .foregroundColor(.white)
                                .offset(y: -4)
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 230)
                .accentColor(Color(.systemBlue))
            
        
        
        //                NAV BAR
               
                       HStack (alignment: .top) {
                           NavigationLink(
                               destination: ContentView(),
                               label: {
                                   ZStack {
                                       Circle()
                                           .frame(width: 50, height: 50)
                                           .foregroundColor(.white)
                                           .cornerRadius(50)
                                           .shadow(color: .gray, radius: 3, x: 0, y: 4)
                                       Image(systemName: "xmark")
                                           .resizable()
                                           .aspectRatio( contentMode: .fit)
                                           .frame(width: 18, height: 18)
                                           .foregroundColor(Color("geoGreen"))
                                           .padding(12)
                                   }
                               })
                           
                           Spacer()
                           
                           HStack (spacing: 16) {
                               ZStack {
                                   Circle()
                                       .frame(width: 50, height: 50)
                                       .foregroundColor(.white)
                                       .cornerRadius(50)
                                       .shadow(color: .gray, radius: 3, x: 0, y: 4)
                                   
                                   Image(systemName: "square.and.arrow.up")
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 25, height: 25)
                                       .foregroundColor(Color("geoGreen"))
                                       .padding(12)
                               }
                               ZStack {
                                   
                                   Circle()
                                       .frame(width: 50, height: 50)
                                       .foregroundColor(.white)
                                       .cornerRadius(50)
                                       .shadow(color: .gray, radius: 3, x: 0, y: 4)
                                   
                                   Image(systemName: "heart.fill")
                                       .resizable()
                                       .aspectRatio(contentMode: .fit)
                                       .frame(width: 25, height: 25)
                                       .foregroundColor(.red)
                                       .padding(12)
                               }
                           }
                       }
                       .padding(16)
                       .padding(.top, 30)
                       .padding(.bottom, 120)
                       

    }
}
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
