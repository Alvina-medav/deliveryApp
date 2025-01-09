//
//  SignInView.swift
//  deliveryApp
//
//  Created by students on 18/10/46.
//

import SwiftUI
import CountryPicker

struct SignInView: View {
    @State var txtMobile : String = ""
    @State var isShower : Bool = false
    @State var countryObj : Country?
   
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
                    .padding(.bottom, 500)
                Spacer()
            }
            
            ScrollView{
                VStack{
                    Text("Get your groceries \nwith nectar")
                       .font(.customfont(.semibold, fontSize: 27))
                       .foregroundColor(.primaryText)
                       .multilineTextAlignment(.leading)
                       .padding(.top, 420)
                       .padding(.trailing, 130)
                       .padding(.bottom, 20)
                    
                    HStack{
                        Button{
                            
                        } label: {
                            
                        }
                        TextField("Enter mobile", text: $txtMobile)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.trailing,50)
//                            .padding(.leading, 100)
                        
                    }
                    Divider()
                        .frame(width: 350)
                  
                    VStack{
                        Text("or connect with social media")
                            .foregroundColor(.textTitle)
                            .font(.customfont(.semibold, fontSize: 16))
                            .multilineTextAlignment(.center)
                            .padding(.top, 30)
                            .padding(.bottom, 20)
                        
                        
                        HStack{
                            
                            Button{
                                
                            } label: {
                                HStack{
                                    Image("google_logo")
                                        .resizable()
                                        .frame(width:20,height: 20)
                                        .padding(.trailing, 15)
                                       
                                }
                                
                                Text("Continue With Google")
                                    .font(.customfont(.semibold, fontSize: 18))
                                    .foregroundColor(.white)
                                    .padding(.trailing, 15)
                            }
                        }
                        .frame(width: 300,height: 50)
                        .background(Color(hex: "5383EC"))
                        .cornerRadius(20)
                        .padding(.top, 10)
                        
                        .padding(.bottom, 5)
                        
                        Button {
                            
                        } label: {
                            HStack{
                                Image("fb_logo")
                                 .resizable()
                                 .scaledToFit()
                                 .frame(width: 20, height: 20)
                                 .padding(.trailing, 15)
                                                                
                                Text("Continue with Facebook")
                                 .font(.customfont(.semibold, fontSize: 18))
                                 .foregroundColor(.white)
                                 .multilineTextAlignment(.center)
                                 .padding(.trailing, 10)
                                
                            }.frame(width: 300,height: 50)
                                .background(Color(hex: "4A6680"))
                                .cornerRadius(20)
                                .padding(.top, 10)
                        }
                        
                        
                    }
                    .padding(.bottom, 90)
                
                                       
                }
                .onAppear{
                    self.$countryObj
                }
            }
            
        }
        
       
    }
}

#Preview {
    SignInView()
}
