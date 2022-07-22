//
//  PhotoBox.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 14/12/21.
//

import SwiftUI

struct PhotoBox: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (spacing: 16){
                
                ZStack{
                    
                Image("pic3")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .blur(radius: 3)
                    .frame(width: 280, height: 280)
                    .clipShape(RoundedRectangle(cornerRadius:15))
                   
                    
                RoundedRectangle(cornerRadius:15)
                        .frame(width: 280, height: 280)
                        .foregroundColor(Color("geoGreen"))
                        .opacity(0.8)
                        
                    
                    VStack{
                        
                       Image(systemName: ("exclamationmark.triangle"))
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 45, height: 45)
                            .foregroundColor(.white)
                        
                        Text("Spoiler Alert!")
                            .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .padding(.top, 2)
                    }
                    
                    VStack{
                        
                        Text("open anyway")
                            .font(.footnote)
                            .fontWeight(.medium)
                            .underline()
                        .foregroundColor(Color.white)
                        .offset(y: 115)
                    }
                    
                }
                
                ZStack{
                Image("pic4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 280, height: 280)
                    .clipShape(RoundedRectangle(cornerRadius:15))
                    
                    RoundedRectangle(cornerRadius:15)
                            .frame(width: 280, height: 280)
                            .opacity(0)
                    
                    LinearGradient(gradient: Gradient(colors: [
                        Color.clear,
                        Color.clear,
                        Color.clear,
                        Color("geoGreen")]),
                        startPoint: .topLeading,
                        endPoint: .bottomLeading)
                        .frame(width: 280, height: 280)
                        .clipShape(RoundedRectangle(cornerRadius:15))

                    
                    HStack {
                        
                        Text("@fappix")
                            .font(.caption)
                        
                        Spacer()
                        
                        Text("10 days ago")
                            .font(.caption)
                        
                    }.offset(y: 115).padding()
                        .foregroundColor(.white)
                    
                }
                
                ZStack{
                Image("pic5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 280, height: 280)
                    .clipShape(RoundedRectangle(cornerRadius:15))
                    
                    RoundedRectangle(cornerRadius:15)
                            .frame(width: 280, height: 280)
                            .opacity(0)
                    
                    LinearGradient(gradient: Gradient(colors: [
                        Color.clear,
                        Color.clear,
                        Color.clear,
                        Color("geoGreen")]),
                        startPoint: .topLeading,
                        endPoint: .bottomLeading)
                        .frame(width: 280, height: 280)
                        .clipShape(RoundedRectangle(cornerRadius:15))

                    
                    HStack {
                        
                        Text("@fappix")
                            .font(.caption)
                        
                        Spacer()
                        
                        Text("10 days ago")
                            .font(.caption)
                        
                    }.offset(y: 115).padding()
                        .foregroundColor(.white)
                    
                }
                
                
                
            }
            .padding(.trailing)
            .padding(.top)
            
        }
    }
    
}



struct PhotoBox_Previews: PreviewProvider {
    static var previews: some View {
        PhotoBox()
    }
}
