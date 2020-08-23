//
//  AccountView.swift
//  AniList
//
//  Created by Kirtan Patel on 8/11/20.
//

import SwiftUI
import KingfisherSwiftUI
//import class Kingfisher.ImageCache

struct AccountView: View {
    
    @State var cache: String = ""
    @State var showAuth = false
    @StateObject var authManager: AuthKeyManager
    @ObservedObject var userManager: UserData = UserData()
    
    var body: some View {
        NavigationView {
            VStack{
                if let user = userManager.user{
                    ScrollView {
                        VStack {
                            KFImage(URL(string: user.image))
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipped()
                                .shadow(radius: 5)
                            Text(user.about)
                        
                            HStack {
                                VStack {
                                    Text("Total Anime")
                                    Text("\(user.animeCount)")
                                }
                                VStack {
                                    Text("Total Manga")
                                    Text("\(user.mangaCount)")
                                }
                            }
                        }
                        Spacer()
                        Text("\(user.id)")
                    }.navigationBarTitle(userManager.user?.name ?? "", displayMode: .inline)
                } else {
                    Button(action: {
                        showAuth.toggle()
                    }) {
                        Text("Login").padding()
                    }
                }
            }
            .webAuthenticationSession(isPresented: $showAuth) {
                WebAuthenticationSession(
                    //https://anilist.co/api/v2/oauth/authorize?client_id=3923&redirect_uri=tbd://&response_type=code
                    //https://anilist.co/api/v2/oauth/authorize?client_id=3923&response_type=token
                    url: URL(string: "https://anilist.co/api/v2/oauth/authorize?client_id=3923&response_type=token")!,
                    callbackURLScheme: "tbd://"
                ) { callbackURL, error in
                    authManager.setCurrentAuthKey(callbackURL!.absoluteString)
                    userManager.loadData()
                }
                .prefersEphemeralWebBrowserSession(false)
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView(authManager: AuthKeyManager())
    }
}
