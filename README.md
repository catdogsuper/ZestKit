
# ZestKit

## What is ZestKit?

This is a multifunctional and stunning feature set for Swift and SwiftUI development.

- **ZestKitViews**
  Includes various extensions for Views in SwiftUI, allowing you to quickly create stunning interfaces.

- **ZestKitNetwork**
  A collection of utilities for making network requests in Swift. It simplifies tasks such as API calls, data parsing, and error handling, making it easy to integrate web services into your applications.

- **ZestKitQuickDatabase**
  A lightweight and easy-to-use database framework for local data storage. It provides simple APIs for CRUD operations, making data management intuitive and efficient.
                                                        
## Why Are Some Modules in Binary (xcframework) Closed Source?

- Currently, this library is in the testing phase.
- Some code is undergoing adjustments and improvements.
- Please do not use it in production environments.
- We will open source the code after the follow-up is completed.

## Installation

ZestKit is available through Swift Package Manager (SPM). To add ZestKit to your project, follow these steps:

1. Open your Xcode project.
2. Go to the menu bar and select **File > Swift Packages > Add Package Dependency**.
3. Enter the following URL: `https://github.com/catdogsuper/ZestKit`
4. Choose the version you want to install (e.g., `from: 0.1.0`) and click **Next**.
5. Select the target you want to add ZestKit to and click **Finish**.

## Usage Example

After installing ZestKit, you can import the desired modules and start using the features:

### Importing ZestKit

```swift
import ZestKit
import ZestKitViews
import ZestKitNetwork
import ZestKitQuickDatabase
```

### Example of Using ZestKitViews

```swift
struct ContentView: View {
    var body: some View {
        ZestButton("Click Me") {
            print("Button clicked!")
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(8)
        .foregroundColor(.white)
    }
}
```

### Example of Using ZestKitNetwork

```swift
let url = URL(string: "https://api.example.com/data")!
let request = URLRequest(url: url)

ZestKitNetwork.shared.fetchData(request: request) { result in
    switch result {
    case .success(let data):
        print("Data received: \(data)")
    case .failure(let error):
        print("Error fetching data: \(error)")
    }
}
```

### Example of Using ZestKitQuickDatabase

```swift
let database = ZestKitQuickDatabase.shared

database.create(record: MyRecord(id: 1, name: "Sample")) { success in
    if success {
        print("Record created successfully.")
    } else {
        print("Failed to create record.")
    }
}
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contact

For any questions, suggestions, or feedback, feel free to reach out to me at [supersupercatdog@gamil.com].
