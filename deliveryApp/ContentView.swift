//
//  ContentView.swift
//  deliveryApp
//
//  Created by students on 17/10/46.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                Text("Welcome\nto our store")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("get your gloceries fast")
                    .font(.customfont(.medium, fontSize:16))
                    .foregroundColor(.white.opacity(0.8))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                NavigationLink{
                                  
                               } label: {
                                   RoundButton(title: "Get Started"){
                                   }
                               }
                
                Spacer()
                    .frame(height: 80)
            }
            .padding(.horizontal,20)
        }
        .navigationTitle("")
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationView{
        ContentView()
    }
}