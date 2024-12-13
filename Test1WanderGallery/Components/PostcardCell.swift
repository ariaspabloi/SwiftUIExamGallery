import SwiftUI

struct Postcard: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
}

struct PostcardCell: View {
    let postcard: Postcard
    let backgroundColor: Color

    var body: some View {
        HStack {
            Image(postcard.image)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 3)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(postcard.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(postcard.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
            .padding(.leading, 8)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(backgroundColor)
        .cornerRadius(10)
        .padding(.vertical, 8)
    }
}

#Preview {
    PostcardCell(postcard: Postcard(image: "home", title: "Paris", description: "La ciudad del amor."), backgroundColor: .gray.opacity(0.1))
}
