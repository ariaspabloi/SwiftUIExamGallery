import SwiftUI

enum NavigationDestination: Hashable {
    case galleryView(username: String)
}

struct HomeView: View {
    @AppStorage(AppStorageKeys.isGalleryOpen) var isGalleryOpen: Bool = false
    @AppStorage(AppStorageKeys.username) var storedUsername: String = ""
    @State private var navigationPath = NavigationPath()
    @State private var isVisible = false
    @State private var username: String = ""
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                Image("home")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 60) {
                    AnimatedText(text: "Welcome to your Postcards Gallery")
                    TextField("Your name", text: $username)
                        .multilineTextAlignment(.center)
                        .padding(10)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                        .frame(width: 300)
                        .opacity(isVisible ? 1 : 0)
                        .scaleEffect(isVisible ? 1 : 0.5)
                        .animation(.easeIn(duration: 1), value: isVisible)
                        .onAppear {
                            isVisible = true
                        }
                    NavigationLink(destination: GalleryView(username: username)) {
                        HStack {
                            Image(systemName: "photo.on.rectangle.angled")
                                .foregroundColor(.white)
                            Text("Go to Gallery")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        .padding()
                        .background(username.isEmpty ? Color.gray : Color.blue)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }
                    .disabled(username.isEmpty)
                }
                .padding()
                .onAppear(){
                    username = ""
                    if isGalleryOpen {
                        navigationPath.append(NavigationDestination.galleryView(username: storedUsername))
                    }
                }
                .navigationDestination(for: NavigationDestination.self) { destination in
                    switch destination {
                    case .galleryView(let username):
                        GalleryView(username: username)
                    }
                }
            }
        }
    }
}
