//
//  RegisterView.swift
//  SwiftUIEducationIOS
//
//  Created by Дмитрий Федоринов on 20.06.2022.
//

import SwiftUI

struct RegisterView: View {
    // Add this enum
    //    enum Field: Hashable {
    //        case name
    //    }
    
    @EnvironmentObject var userManager: UserManager
    
    @FocusState var nameFieldFocused: Bool
    
    @State var amount: Double = 0
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Type your name...",
                      text: $userManager.profile.name,
                      prompt: Text("Tap Something"))
            .focused($nameFieldFocused)
            .submitLabel(.done)
            .onSubmit(registerUser)
            .bordered()
            
            SecureField.init("Password", text: $password)
              .bordered()
//              .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
                Spacer()
                Text("\(userManager.profile.name.count)")
                    .font(.caption)
                    .foregroundColor(userManager.isUserNameValid() ? .green : .red)
                    .padding(.trailing)
            }
                .padding(.bottom)
            
            HStack {
                Spacer()
                Toggle(isOn: $userManager.settings.rememberUser) {
                    Text("Remember me")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .fixedSize()
            }
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text("OK")
                        .font(.body)
                        .bold()
                }
            }
            .bordered()
            .disabled(!userManager.isUserNameValid())
            
            VStack {
                HStack {
                    Text("0")
                    Slider(
                        value: $amount,
                        in: 0.0 ... 10.0,
                        step: 0.5
                    )
                    Text("10")
                }
                Text("\(amount)")
            }
            
            
            Stepper(
                "Quantity: \(amount)",
                value: $amount,
                in: 0 ... 10,
                step: 0.5
            )
            Spacer()
        }
        .background(WelcomeBackgroundImage())
        .padding()
        
        
    }
    
}
//
//struct KuchiTextStyle: TextFieldStyle {
//    public func _body(configuration: TextField<Self._Label>) -> some View {
//        return configuration
//            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
//            .background(Color.white)
//            .overlay(
//                RoundedRectangle(cornerRadius: 8)
//                    .stroke(lineWidth: 2)
//                    .foregroundColor(.blue)
//            )
//            .shadow(color: Color.gray.opacity(0.4),
//                    radius: 3, x: 1, y: 2)
//    }
//}

// MARK: - Event Handlers
extension RegisterView {
    
    func registerUser() {
        nameFieldFocused = false
        if userManager.settings.rememberUser {
            userManager.persistProfile()
        } else {
            userManager.clear()
        }
        userManager.persistSettings()
        userManager.setRegistered()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static let user = UserManager(name: "Ray")
    static var previews: some View {
        RegisterView()
            .environmentObject(user)
    }
}
