//
//  ActBox.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 13/12/21.
//

import SwiftUI
import Foundation


struct ActBox: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (spacing: 0){
                
                ForEach(0..<3) {_ in
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 15)
                            .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                            .opacity(0.3)
                            .frame(width: 320, height: 220)
                            
                        
                        VStack (alignment: .leading) {
                            HStack{
                                HStack{
                                    
                                    
                                    Image("mypic")
                                        .resizable()
                                        .aspectRatio( contentMode: .fit)
                                        .clipShape(Circle()).frame(width: 45, height: 45)
                                        .padding(.trailing, 5)
                                    
                                    
                                    VStack (alignment: .leading, spacing: 3) {
                                        Text("@fappix")
                                            .font(.headline)
                                        Text("10 days ago")
                                            .font(.footnote)
                                        
                                    }.foregroundColor(Color("geoDarkGreen"))
                                }
                                Spacer()
                                
              
                                
                            }.padding(.horizontal)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Iaculis in velit scelerisque dictum pretium purus imperdiet nullam est. Sollicitudin sed posuere lectus lorem.")
                                .font(.body)
                                .frame(width: 280, height: 100)
                                .foregroundColor(Color("geoDarkGreen"))
                                .padding(.horizontal)
                            
                            HStack{
                                ZStack{
                                    Image(systemName: "bubble.right.fill")
                                        .renderingMode(.original)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(Color("geoGreen"))
                                    
                                    Text("21")
                                        .font(.footnote)
                                        .fontWeight(.regular)
                                        .foregroundColor(.white)
                                        .offset(y:-3)
                                        
                                    
                                }.padding(.leading, 16)
                                
                                Spacer()
                                
                                Text("Show More \(Image(systemName: "arrow.right"))")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("geoGreen"))
                                    .padding(.trailing, 16)
                                
                                
                            }
                            
                        }
                        
                    }
                    .padding(.trailing)
                    .padding(.top)
                    
                }
            }
            
        }
        
        
    }
    
}










struct ActBox_Previews: PreviewProvider {
    static var previews: some View {
        ActBox()
    }
}
