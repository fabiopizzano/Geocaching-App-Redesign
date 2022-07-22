//
//  FoundItButton.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 14/12/21.
//

import SwiftUI

struct FoundItButton: View {
    
    @State private var showAlert = false
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 100)
                .foregroundColor(Color(colorScheme == .light ? .white : .systemGray5))
            
            Rectangle()
                .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                .opacity(0.3)
                .frame(maxWidth: .infinity, maxHeight: 100)
            
            HStack{
                
                Text("Hint please")
                    .font(.footnote)
                    .fontWeight(.light)
                    .underline()
                    .foregroundColor(Color("geoDarkGreen"))
                    .padding(.leading)
                
                Spacer()
                
                Button(action:
                        { showAlert.toggle()
                }, label: {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .foregroundColor(Color("geoGreen"))
                            .frame(width: 160, height: 50)
                            .shadow(color: .gray, radius: 3, x: 0, y: 3)
                        
                        Text("Found It!")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                        
                    }
                    
                }).padding(.horizontal)
                
                //                }
                
            }.padding(.bottom, 18)
                .padding(.leading)
            
            
        }
        
        if showAlert {
            FeedbackAlertView(showAlert: $showAlert)
        }
        
    }
}

struct FoundItButton_Previews: PreviewProvider {
    static var previews: some View {
        FoundItButton()
    }
}
