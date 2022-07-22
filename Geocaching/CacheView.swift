//
//  CacheView.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 11/12/21.
//

import SwiftUI
import MapKit
import Foundation

struct CacheView: View {
    
    @Environment (\.colorScheme) var colorScheme
    
    
    var body: some View {
        
        
        NavigationView {
            
            ZStack{
                
            
            ScrollView(showsIndicators: false) {
 
                NavBar()
                    .offset(y: -50)
                    
                
                ZStack{
            VStack (alignment: .leading) {
      

                        VStack (alignment: .leading, spacing: 5){
                            
                            Group{
                                
                          
                            HStack{
                                Text("GC7C6JK • Traditional • 3")
                                    .font(.caption)
                                    .foregroundColor(Color("geoDarkGreen"))
                            +
                                Text(" \(Image(systemName: "heart.fill"))")
                                    .font(.caption)
                                    .foregroundColor(Color("geoGreen"))
                            }

                                Text("San Domenico")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("geoDarkGreen"))
                            
                              Text("Maggiore")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color("geoDarkGreen"))
                                .offset(y: -5)
                            
                            HStack(spacing: 10) {
                                
                                Image("CachePin")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 10, height: 10)
                                
                                
                                Text("0,1 Km")
                                    .font(.caption)
                                    .foregroundColor(Color("geoDarkGreen"))
                                
                                
                                Image("Easy")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 10, height: 10)
                                
                                
                                Text("Easy")
                                    .font(.caption)
                                    .foregroundColor(Color("geoDarkGreen"))
                                
                                
                                Image("Micro")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 5, height: 10)
                                
                                Text("Micro")
                                    .font(.caption)
                                    .foregroundColor(Color("geoDarkGreen"))
                                
                                
                            }
                            }
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iaculis in velit scelerisque dictum pretium purus imperdiet nullam est. Sollicitudin sed posuere lectus lorem.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("geoDarkGreen"))
                                .padding([.top, .trailing], 16)
                                
                            HStack{
                            Text("Activity")
                                .font(.headline)
                                .foregroundColor(Color("geoDarkGreen"))
                                
                                Spacer()
                                
                                Text("See all")
                                    .font(.footnote)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("geoDarkGreen"))
                                
                            }.padding([.top, .trailing], 16)
                            
                            ActBox()
                            
                            HStack{
                            Text("Attributes")
                                .font(.headline)
                                .foregroundColor(Color("geoDarkGreen"))
                                
                                Spacer()
                                
                                Text("See all")
                                    .font(.footnote)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("geoDarkGreen"))
                                
                            }.padding([.top, .trailing], 16)
                   
                            
                            Attributes()
                            
                            HStack{
                                
                            Text("Photos")
                                .font(.headline)
                                .foregroundColor(Color("geoDarkGreen"))
                                
                                Spacer()
                                
                                Text("See all")
                                    .font(.footnote)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("geoDarkGreen"))
                            }.padding([.top, .trailing], 16)
                            
                            PhotoBox()
                            
                            ZStack{
                               
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.red)
                                    .frame(width: 130, height: 45)
                                    .shadow(color: .gray, radius: 3, x: 0, y: 2)
                                    
                                
                                Text(" \(Image(systemName: "flag.fill")) Report")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                
                            }.padding(.top, 30)
                                .padding(.leading, 130)
                                .padding(.bottom, 30)
                            

                            
                        }
                        .padding([.top, .leading, .bottom])
                        
            }.offset(y: -52)  .navigationBarHidden(true)
     
//   NAVIGATE BUTTON
                    
                    
                    ZStack {
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                            
                        Image(systemName: ("location.circle.fill"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color("geoGreen"))
                    }
                    .position(x: 372, y: -60)

                }
      
            }
                
                FoundItButton()
                    .offset(y: 395)
                
            

                
                
            }
            
            
        }.navigationBarHidden(true)
//        .navigationBarTitle(Text(""), displayMode: .inline)
        

        
          
            
        
  
        
    }
    

    
    struct CacheView_Previews: PreviewProvider {
        static var previews: some View {
            CacheView()
                .preferredColorScheme(.dark)
        }
    }
}
