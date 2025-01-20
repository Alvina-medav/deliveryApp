

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.top, 100)
                
                Spacer()
                
                Text("Login")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                
                Text("Enter your email and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 30)
                
                Spacer()
                
                Button{
                } label: {
                    Text("Forgot Password")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, 25)
                
                Button {
                    // code loginVM.serviceCallLogin()
                } label: {
                    Text("Get Started")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                }
                .background(Color.primaryApp)
                .cornerRadius(20)
                .padding(.bottom, 10)
                
                HStack {
                    Text("Don't have an account?")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundColor(.primaryText)
                        .padding(.bottom, -100)
                    
                    NavigationLink {
                         SignUp()
                    } label: {
                        Text("SignUp")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.primaryApp)
                            .padding(.bottom, -100)
                    }
                }
            }
            .padding(.bottom, 200)
                    .padding(.horizontal, 20)
                    .padding(.bottom, .bottomInsets)
        }
        .navigationTitle("")
               .navigationBarHidden(true)
               .ignoresSafeArea()
               .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LoginView()
}
