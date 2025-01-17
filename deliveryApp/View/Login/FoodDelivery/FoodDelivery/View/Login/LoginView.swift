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
                    .padding(.leading, 15)
                    .padding(.bottom, 5)
                    .padding(.top, -480)
                
                Text("Enter your email and password ")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 30)
                    .padding(.leading, 15)
                    .padding(.top, -430)
              
                Button{
                } label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                        .padding(.top, -300)
                        .padding(.trailing, 25)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
              
                Button{
                    //code
                } label: {
                    Text("Log In")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                     
                }
                .background(Color.primaryApp)
                .cornerRadius(20)
                .padding()
                
                HStack{
                    Text("Dont have an account ")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundColor(.primaryText)
                        .padding(.top,-35)
                    NavigationLink{
                       //code
                    } label: {
                        Text("Sign Up")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.primaryApp)
                            .padding(.top,-35)
                            
                    }
                    .padding()
                }
                .padding(.top, 5)
                
            }
            Spacer()
           
            
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
