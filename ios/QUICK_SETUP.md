# 🚀 Quick Xcode Cloud Variables Setup

## ⚡ 5-Minute Setup

### 1. Open Xcode

- Load your `ios/Runner.xcworkspace` project

### 2. Go to Xcode Cloud

- `Product` → `Xcode Cloud` → `Manage Workflows`

### 3. Select Your Workflow

- Choose "Development Build" or "Production Build"

### 4. Add These 3 Variables

| Variable Name              | Value                                | Sensitive |
| -------------------------- | ------------------------------------ | --------- |
| `FLUTTER_VERSION`          | `3.35.0`                             | ❌ No     |
| `FIREBASE_APP_ID_IOS`      | `1:123456789:ios:abcdef123456`       | ❌ No     |
| `FIREBASE_SERVICE_ACCOUNT` | `{ "type": "service_account", ... }` | ✅ Yes    |

### 5. Click "Environment" Tab

- Click **"+"** for each variable
- Fill in Name, Value, and check Sensitive if needed
- Click **"Save"**

## 🔍 Where to Find Values

### Firebase App ID

1. Go to [Firebase Console](https://console.firebase.google.com)
2. Select your project
3. Go to Project Settings (gear icon)
4. Scroll to "Your apps" section
5. Copy the iOS app ID

### Firebase Service Account

1. Firebase Console → Project Settings
2. Go to "Service accounts" tab
3. Click "Generate new private key"
4. Download the JSON file
5. Copy the entire JSON content

## ✅ Test Your Setup

Run a test build to verify:

- Variables are accessible in scripts
- Firebase upload works
- No authentication errors

## 🆘 Need Help?

- Check `ios/XCODE_CLOUD_VARIABLES.md` for detailed instructions
- Review `ios/CI_SCRIPT.md` for complete setup guide
- Verify your Firebase project is properly configured
