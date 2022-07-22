//
//  ContentView.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 06/12/21.
//

import MapKit
import SwiftUI
import UIKit


struct ContentView: View {
    
    @Environment (\.colorScheme) var colorScheme
    
    @State private var viewModel = ContentViewModel()
    
    var body: some View {
        
        NavigationView {
        
        
        ZStack{
            
            // PLACECACHE
            
            let cachePinnati = [
                PlaceCache(name: "Geo1", coordinate: CLLocationCoordinate2D(latitude: 40.84733, longitude: 14.25226)),
                PlaceCache(name: "Geo2", coordinate: CLLocationCoordinate2D(latitude: 40.94733, longitude: 14.15226)),
                PlaceCache(name: "Geo3", coordinate: CLLocationCoordinate2D(latitude: 40.85733, longitude: 14.24226)),
                PlaceCache(name: "Geo4", coordinate: CLLocationCoordinate2D(latitude: 40.845878, longitude: 14.254425)),
                PlaceCache(name: "Geo5", coordinate: CLLocationCoordinate2D(latitude: 40.843525, longitude: 14.24862)),
                PlaceCache(name: "Geo6", coordinate: CLLocationCoordinate2D(latitude: 40.85, longitude: 14.24862)),
                PlaceCache(name: "Geo7", coordinate: CLLocationCoordinate2D(latitude: 40.848894, longitude: 14.2584)),
                PlaceCache(name: "Geo8", coordinate: CLLocationCoordinate2D(latitude: 40.8432, longitude: 14.2540)),
                PlaceCache(name: "Geo9", coordinate: CLLocationCoordinate2D(latitude: 40.8575, longitude: 14.2570)),
                PlaceCache(name: "Geo10", coordinate: CLLocationCoordinate2D(latitude: 69.69585,  longitude: 18.88361))
            ]
            
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true, annotationItems: cachePinnati) {
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
            .ignoresSafeArea()
            .accentColor(Color(.systemBlue))
            .onAppear{
                viewModel.checkIfLocationIsEnabled()
            }
            
            // "NAV" BAR
            
            
            HStack (alignment: .top){
                
                ZStack {
                    
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color("geoGreen"))
                        .cornerRadius(50)
                        .shadow(color: .gray, radius: 3, x: 0, y: 4)
                    
                    Image(systemName: "magnifyingglass")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                        .padding(12)
                }
                
                Spacer()
                
                ZStack {
                    
                    Circle()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color("geoGreen"))
                        .cornerRadius(50)
                        .shadow(color: .gray, radius: 3, x: 0, y: 4)
                    
                    Image(systemName: "person.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                        .padding(12)
                }
            }.padding(16)
                .padding(.top, -470)
            
            
            //BOTTOM LIST
            
            ZStack {
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 400)
                    .foregroundColor(Color(colorScheme == .light ? .white : .systemGray5))
                    .cornerRadius(20)
                    .offset(y: 530)
                    .shadow(color: .gray, radius: 10, x: 0, y: 0)
                VStack{
                    
                    Rectangle()
                        .frame(width: 37, height: 5, alignment: .center)
                        .foregroundColor(.gray)
                        .cornerRadius(20)
                        .offset(y: 359)
                    
                    Text("+30 Caches nearby...")
                        .font(.body)
                        .fontWeight(.semibold)
                        .offset(y: 370)
                        .foregroundColor(Color("geoDarkGreen"))
                }
            }.offset(y: -50)
            
            
            // INFOCACHE BOX LISTA (DA CAMBIARE ARRAY IN cache
            
            
            var caches = CacheList.closestFive
            
           
                
            ScrollView(.horizontal, showsIndicators: false) {
                
                
                LazyHStack() {
                    ForEach(caches) {cache in
                        
                        NavigationLink(destination: CacheView()) {
                        
                        ZStack() {
                            
                            Rectangle()
                                .size(width: 323, height: 100)
                                .frame(width: 323, height: 100)
//                                .foregroundColor(.white)
                                .foregroundColor(Color(colorScheme == .light ? .white : .systemGray5))
                                .cornerRadius(15)
                                .shadow(color: .gray, radius: 3, y: 2)
                            
                            
                            VStack (alignment: .leading, spacing: 8){
                                
                                HStack{
                                    Text(cache.title)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("geoDarkGreen"))
                                    
                                    Spacer()
                                    
                                    Text("3 \(Image(systemName: "heart.fill"))")
                                        .font(.caption)
                                        .foregroundColor(Color("geoGreen"))
                                    
                                }
                                
                                Text(cache.info)
                                    .font(.caption)
                                    .foregroundColor(Color("geoDarkGreen"))
                                
                                HStack(spacing: 10) {
                                    
                                    Image("CachePin")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 10, height: 10)
                                    
                                    
                                    Text(cache.distance)
                                        .font(.caption)
                                        .foregroundColor(Color("geoDarkGreen"))
                                    
                                    
                                    Image(cache.difficulty)
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 10, height: 10)
                                    
                                    
                                    Text(cache.difficulty)
                                        .font(.caption)
                                        .foregroundColor(Color("geoDarkGreen"))
                                    
                                    
                                    Image("Micro")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 5, height: 10)
                                    
                                    Text(cache.size)
                                        .font(.caption)
                                        .foregroundColor(Color("geoDarkGreen"))
                                    
                                    
                                }
                                
                            }
                            .padding()
                            
                        }
                        .padding(.leading, 16)
                        .padding(.trailing, -2)
                    }
                    }
                }
                
            }.frame(maxWidth: .infinity, maxHeight: 130)
                
                .offset(y: 210)
            
            
            
            
            
            
        }
        
        
        } .navigationBarHidden(true)
     
}
        




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}



}
