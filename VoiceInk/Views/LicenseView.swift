import SwiftUI

struct LicenseView: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("License Status")
                .font(.headline)
            
            VStack(spacing: 10) {
                Text("Full Access Enabled")
                    .foregroundColor(.green)
            }
        }
        .padding()
    }
}

struct LicenseView_Previews: PreviewProvider {
    static var previews: some View {
        LicenseView()
    }
} 