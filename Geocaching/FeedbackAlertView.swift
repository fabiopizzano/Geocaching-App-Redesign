//
//  FeedbackView.swift
//  Geocaching
//
//  Created by Fabio Pizzano on 15/12/21.
//

import SwiftUI




struct FeedbackAlertView: View {
    
    @Binding var showAlert: Bool
    @Environment (\.colorScheme) var colorScheme
    
    var body: some View {
        
//        NavigationView {
       
        ZStack{
            
            Rectangle()
                  .foregroundColor(.white)
                  .opacity(0.6)
                  .ignoresSafeArea()
              
          
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 343, height: 440)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 10, x: 0, y: 2)
            
//        RoundedRectangle(cornerRadius: 20)
//            .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
//            .opacity(0.3)
//        .frame(width: 343, height: 475)
//
//
            VStack{
                
                Button(action: {
                    
                    showAlert.toggle()
                 
                }, label: {
                
                Image(systemName: "xmark")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 18, height: 18)
                    .opacity(0.3)
                    .foregroundColor(Color("geoGreen"))
                    .padding(.leading, 280)
                    .offset(y: -10)
//                    .padding(.top, -10)
                    
                })
                
            Text("That's Great!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("geoGreen"))
                .padding(.top, -10)
              
                
            
            Text("Now share your experience with the whole community:")
                    .font(.subheadline)
                .foregroundColor(Color("geoDarkGreen"))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(width: 210.0)
                .padding(.top, -15)
                
                ZStack{
                    
                    Text("Write here your thoughs and feelings...")
                        .font(.footnote)
                        .fontWeight(.light)
                        .multilineTextAlignment(.leading)
                        .opacity(0.3)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        .offset(x: -20, y: -55)
                    
                    Image(systemName: "camera.fill")
                        .foregroundColor(Color("geoGreen"))
                        .offset(x: 125, y: 55)
                    
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color("geoDarkGreen"), lineWidth: 1)
                    .opacity(0.3)
                    .frame(width: 310, height: 160)
                    .padding(.vertical, 10.0)
                    .padding(.bottom, 4)
                    
                   
                }
                
                NavigationLink(destination: CacheView()) {
                    
                VStack{
            
                    Button(action: {
                        
                        showAlert.toggle()
                     
                    }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(Color("geoGreen"))
                    .frame(width: 100, height: 40)
                    .shadow(color: .gray, radius: 3, x: 0, y: 3)
                
                Text("Done")
                    .font(.title3)
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                
                    
            }.padding(.top, 5)
                    
                })
                    
                    Button(action: {
                        
                        showAlert.toggle()
                     
                    }, label: {
                        Text("maybe later")
                            .font(.footnote)
                            .fontWeight(.light)
                            .underline()
                            .foregroundColor(.red)
                            .frame(width: 130, height: 20, alignment: .center)
                            .padding(.top, 5)
                        
                    })
                        
   }.padding(.horizontal, 55.0)
                       
                }
                
     
            }
        }.offset(y: -395)
//        }.navigationBarHidden(true)
//            .background(Color.clear)
           
    }
}

//struct FeedbackView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedbackAlertView()
//    }
//}
