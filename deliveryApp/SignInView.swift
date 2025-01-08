//
//  SignInView.swift
//  deliveryApp
//
//  Created by students on 18/10/46.
//

import SwiftUI

struct SignInView: View {
    @State var txmobile : String = ""
    @State var isShower : Bool = false
   
    var body: some View {
        ZStack{
            
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenWidth)
            
            VStack{
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenWidth)
                Spacer()
            }
            
            ScrollView{
                VStack{
                    Text("Get your groceries \nwith nectar")
                       .font(.customfont(.semibold, fontSize: 26))
                       .foregroundColor(.primaryText)
                       .multilineTextAlignment(.leading)
                       .padding(.top, 350)
                       .padding(.trailing, 130)
                       .padding(.bottom, 20)
                    
                  
                                       
                }
            }
        }
        
       
    }
}

#Preview {
    SignInView()
}
