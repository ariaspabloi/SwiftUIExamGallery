import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // HEADER
            Section {
                              
                VStack(spacing: 12) {
                    Text("Welcome to")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.green)
                    Text("The Postcards Gallery!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.green)
                    
                    Text("Explore breathtaking destinations around the world. Every postcard has a story to tell. Discover places that inspire and excite you.")
                        .font(.footnote)
                        .italic()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Text("Start your adventure now!")
                        .fontWeight(.bold)
                        .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .green,
                                        .brown,
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            // ABOUT
            Section (
                header: Text("About the app"),
                footer: HStack {
                    Spacer()
                    Text("2024")
                    Spacer()
                }
                .padding(.vertical, 8)
            ) {
//                LabeledContent("Application", value: "Hike")
                
                SettingsListRow(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Postcards Gallery", rowTintColor: .blue)
                SettingsListRow(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS", rowTintColor: .red)
                SettingsListRow(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                SettingsListRow(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                SettingsListRow(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Pablo Arias", rowTintColor: .mint)
            }
        }
    }
}

#Preview {
    SettingsView()
}
