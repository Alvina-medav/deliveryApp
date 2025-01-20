//
//  SignUp.swift
//  FoodDelivery
//
//  Created by students on 28/10/46.
//

import SwiftUI

struct SignUp: View {
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFit()
                .frame(width: .screenWidth, height: .screenHeight)
            
            ScrollView{
                VStack{
                    Image("color_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding(.top, 100)
                    
                    Spacer()
                        .padding(.bottom, 65)
                    
                    Text("Sign Up")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 5)
                    
                    Text("Enter your credentials to continue")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundColor(.secondaryText)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 30)
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("By continuing you agree to our")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundColor(.secondaryText)
                                .padding(.top, 5)
                            Text("Terms of service")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundColor(.primaryApp)
                                .padding(.top, 5)
                                .padding(.leading, -3)
                            
                        }
                        HStack {
                            Text("and")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundColor(.secondaryText)
                                .padding(.top, 5)
                            
                            Text("privacy policy")
                                .font(.customfont(.medium, fontSize: 14))
                                .foregroundColor(.primaryApp)
                                .padding(.top, 5)
                                .padding(.leading, -3)
                        }
                    }
                    .multilineTextAlignment(.leading)
                    .padding(.leading, -60)
                    .padding(.bottom, 20)
                    
                    
                    Button{
                        //code      mainVM.serviceCallSignUp()
                    } label: {
                        Text("Get Started")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60 )
                    }
                    
                            .background( Color.primaryApp)
                            .cornerRadius(20)
                                       
                            .padding(.bottom, 10)
                    
                    HStack {
                        Text("Don't have an account?")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.primaryText)
                            .padding(.bottom, -100)
                        
                        NavigationLink {
                            //code   SignUpView()
                        } label: {
                            Text("SignUp")
                                .font(.customfont(.semibold, fontSize: 16))
                                .foregroundColor(.primaryApp)
                                .padding(.bottom, -100)
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
        .navigationTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SignUp()
}
