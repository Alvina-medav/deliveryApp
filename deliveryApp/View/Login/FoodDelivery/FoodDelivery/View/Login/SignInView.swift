import SwiftUI
import CountryPicker

struct SignInView: View {
    @State var txtMobile : String = ""
    @State var isShowPicker : Bool = false
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
                    .frame(width: .screenWidth, height:.screenWidth)
                    .padding(.bottom, 500)
            }
            ScrollView{
                VStack{
                    Text("Get Your Groceries \nwith nectar")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 100)
                        .padding(.top, 395)
                    HStack{
                        Button{
                            isShowPicker = true
                        } label: {
                            if let countryObj = countryObj{
                                Text("\( countryObj.isoCode.getFlag())")
                                    .font(.customfont(.medium, fontSize: 35))
                                    .padding(.leading, 25)
                                
                                Text("+\( countryObj.phoneCode )")
                                    .font(.customfont(.medium, fontSize: 18))
                                    .foregroundColor(.primaryText)
                            }
                        }
                        TextField("Enter Mobile", text: $txtMobile)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.trailing, 188)
                    }
                   Button{
                        //CODE
                    } label: {
                        Text("continue with signIn")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 6)
                    .background(Color(hex: "5383EC"))
                    .cornerRadius(20)
                    .padding(.horizontal,20)
                    .padding(.bottom,15)
                    
                    Button{
                        // CODE
                    } label: {
                        Text("continue with signup")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    
                    .frame( minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 6)
                    .background(Color.primaryApp)
                    .cornerRadius(20)
                    .padding(.horizontal,20)
                    .padding(.bottom,15)
                    
                    Divider()
                        .frame(width: 350)
                     
                    
                    Text("or connect with social media")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundColor(.textTitle)
                        .padding(.top,20)
                        .padding(.bottom, 15)
                    
                    HStack{
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42,height: 42)
                            .padding(.trailing,5)
                        
                        Image("facebook")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42,height: 42)
                            .padding(.trailing,5)
                        
                        Image("apple_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 42,height: 42)
                            .padding(.trailing,5)
                    }
                    
                }
                .onAppear{
                    self.countryObj = Country(phoneCode: "91", isoCode: "IN")
                }
            }
            .sheet(isPresented: $isShowPicker, content: {
                CountryPickerUI(country: $countryObj)
            })
            
            .ignoresSafeArea()
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            
        }
    }
}

#Preview {
    NavigationView{
        SignInView()
    }
}
