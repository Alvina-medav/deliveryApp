import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background image
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenHeight)
                    .ignoresSafeArea()  // Ensure the image covers the full screen
                
                VStack {
                    // App logo
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding(.top, 100)  // Ensure the logo isn't too close to the top
                    
                    // Welcome text
                    Text("welcome\n to our store")
                        .font(.customfont(.semibold, fontSize: 60))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 20)
                        .padding(.bottom, -20)
                    
                    // Subtext
                    Text("Get your Groceries Fast in an Hour With us")
                        .font(.customfont(.medium, fontSize: 16))
                        .foregroundColor(.white.opacity(0.7))
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    
                    // Navigation Button
                    NavigationLink(destination: SignInView()) {
                        Text("Get Started")
                            .foregroundColor(.white)
                            .font(.customfont(.semibold, fontSize: 18))  // You can set a custom font if needed
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60)
                            .background(Color.primaryApp)
                            .cornerRadius(20)
                            .padding(.horizontal, 15)
                            .padding(.top, 30)
                    }
                }
                .padding(.top, 280) // General padding for the content
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

// Preview
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .preferredColorScheme(.light)  // Set your preferred color scheme
    }
}
