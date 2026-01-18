import Foundation
import AppKit

@MainActor
class LicenseViewModel: ObservableObject {
    enum LicenseState: Equatable {
        case trial(daysRemaining: Int)
        case trialExpired
        case licensed
    }

    // Always licensed - no subscription verification
    @Published private(set) var licenseState: LicenseState = .licensed
    @Published var licenseKey: String = ""
    @Published var isValidating = false
    @Published var validationMessage: String?
    @Published private(set) var activationsLimit: Int = 0

    init() {
        // No license verification needed - app is always fully accessible
    }

    func startTrial() {
        // No-op - app is always licensed
    }

    private func loadLicenseState() {
        // No-op - app is always licensed
    }
    
    var canUseApp: Bool {
        // Always allow full access
        return true
    }
    
    func openPurchaseLink() {
        if let url = URL(string: "https://tryvoiceink.com/buy") {
            NSWorkspace.shared.open(url)
        }
    }
    
    func validateLicense() async {
        // No-op - app is always licensed
        licenseState = .licensed
        validationMessage = "Full access enabled"
    }
    
    func removeLicense() {
        // No-op - app is always licensed
        licenseState = .licensed
    }
}


// UserDefaults extension for non-sensitive license settings
extension UserDefaults {
    var activationsLimit: Int {
        get { integer(forKey: "VoiceInkActivationsLimit") }
        set { set(newValue, forKey: "VoiceInkActivationsLimit") }
    }
}
