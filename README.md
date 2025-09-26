# FlagshipFeatureFlags

A minimal OpenFeature provider (adapter) for iOS. Use it to register a FeatureProvider with OpenFeature and evaluate flags.

## Installation

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'FlagshipFeatureFlags'
```

Then run:

```bash
pod install
```

## Requirements

- iOS 14.0+
- Swift 5.7+
- Xcode 14.0+

## Dependencies

- OpenFeature (~> 0.3)

## Usage

```swift
import FlagshipFeatureFlags
import OpenFeature

// Initialize the provider
let config = FlagshipFeatureConfig(
    baseURL: "https://your-api-url.com",
    refreshInterval: 300
)
let provider = FlagshipOpenFeatureProvider(config: config)

// Register with OpenFeature
OpenFeatureAPI.shared.setProvider(provider: provider)

// Use the client
let client = OpenFeatureAPI.shared.getClient()
let flagValue = client.getBooleanValue(key: "my-flag", defaultValue: false)
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
