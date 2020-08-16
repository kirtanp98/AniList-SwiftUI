//
//  AccountView.swift
//  AniList
//
//  Created by Kirtan Patel on 8/11/20.
//

import SwiftUI
//import KingfisherSwiftUI
//import class Kingfisher.ImageCache

struct AccountView: View {
    
    @State var cache: String = ""
    @State var showAuth = false
    @State var code = ""
    @StateObject var authManager: AuthKeyManager
    
    var body: some View {
        VStack{
            Text(code)
            Button(action: {
                print("asd")
                showAuth.toggle()
            }) {
                Text("Login").padding()
            }
        }.webAuthenticationSession(isPresented: $showAuth) {
            WebAuthenticationSession(
                //https://anilist.co/api/v2/oauth/authorize?client_id=3923&redirect_uri=tbd://&response_type=code
                //https://anilist.co/api/v2/oauth/authorize?client_id=3923&response_type=token
                url: URL(string: "https://anilist.co/api/v2/oauth/authorize?client_id=3923&response_type=token")!,
                callbackURLScheme: "tbd://"
            ) { callbackURL, error in
//                print("EEEEEEEEEEEEEEEE")
                code = callbackURL!.absoluteString
//                print(Date(timeIntervalSinceNow: TimeInterval(31536000)))
                authManager.setCurrentAuthKey(callbackURL!.absoluteString)
            }
            .prefersEphemeralWebBrowserSession(false)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(authManager: AuthKeyManager())
    }
}
