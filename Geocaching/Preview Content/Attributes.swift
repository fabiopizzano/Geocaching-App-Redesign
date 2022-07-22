//
//  Attributes.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 14/12/21.
//

import SwiftUI


struct Attributes: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
        
            VStack (alignment: .leading){
        HStack{
        
        ZStack{
        RoundedRectangle(cornerRadius: 8)
                .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                .opacity(0.3)
            .frame(width: 140, height: 28)
            
            Text("\(Image(systemName: "clock")) 25/7 available")
                .font(.subheadline)
                .foregroundColor(Color("geoDarkGreen"))
        }
            ZStack{
            RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                    .opacity(0.3)
                .frame(width: 140, height: 30)
                
                Text("\(Image(systemName: "bicycle")) Bike Allowed")
                    .font(.subheadline)
                    .foregroundColor(Color("geoDarkGreen"))
            }
            ZStack{
            RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                    .opacity(0.3)
                .frame(width: 130, height: 30)
                
                Text("\(Image(systemName: "pawprint.fill")) Dog Allowed")
                    .font(.subheadline)
                    .foregroundColor(Color("geoDarkGreen"))
            }
            
            
            
        }
        
            HStack{
        ZStack{
        RoundedRectangle(cornerRadius: 8)
                .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                .opacity(0.3)
            .frame(width: 110, height: 30)
            
            Text("\(Image(systemName: "figure.roll")) Accesible")
                .font(.subheadline)
                .foregroundColor(Color("geoDarkGreen"))
        }
                ZStack{
                RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                        .opacity(0.3)
                    .frame(width: 170, height: 30)
                    
                    Text("\(Image(systemName: "tram")) Public Transport ")
                        .font(.subheadline)
                        .foregroundColor(Color("geoDarkGreen"))
                }
                ZStack{
                RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                        .opacity(0.3)
                    .frame(width: 150, height: 30)
                    
                    Text("\(Image(systemName: "pencil.tip")) Marker Needed")
                        .font(.subheadline)
                        .foregroundColor(Color("geoDarkGreen"))
                }
            
            }
            }
//            .padding(.leading, 16)
                .padding(.top, 16)
        }
    }
}

struct Attributes_Previews: PreviewProvider {
    static var previews: some View {
        Attributes()
    }
}
