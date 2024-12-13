import SwiftUI

struct GalleryView: View {
    @Environment(\.scenePhase) private var scenePhase
    @AppStorage(AppStorageKeys.isGalleryOpen) var isGalleryOpen: Bool = false
    @AppStorage(AppStorageKeys.username) var storedUsername: String = ""
    @State private var isShowingSheet: Bool = false
    @State private var isVisible = false
    let username: String
    
    var body: some View {
        VStack{
            List {
                        ForEach(samplePostcards.indices, id: \.self) { index in
                            let backgroundColor = index % 2 == 0 ? Color.customCreamWhite : Color.customSoftGray
                            PostcardCell(postcard: samplePostcards[index], backgroundColor: backgroundColor)
                                .listRowInsets(EdgeInsets())
                        }
                AnimatedText(text: "Oops, there are no more postcards")
                    }
            .sheet(isPresented: $isShowingSheet) {
                SettingsView()
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.medium, .large])
            }
            
        }
        .onAppear {
            print("onAppear")
            isGalleryOpen = false
            storedUsername = username
        }
        .navigationTitle("\(username)'s Gallery")
        .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                isShowingSheet.toggle()
                            }) {
                                Image(systemName: "info.circle")
                                    .font(.title2)
                            }
                        }
                    }
        .onChange(of: scenePhase) { _, newScenePhase in
            switch newScenePhase {
            case .background:
                print(".background")
                isGalleryOpen = true
            case .inactive:
                print(".inactive")
                isGalleryOpen = true
            case .active:
                print(".active")
                isGalleryOpen = false
            default:
                break
            }
        }
    }
}

#Preview {
    GalleryView(username: "Username")
}
