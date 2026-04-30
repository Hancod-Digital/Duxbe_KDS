# Xcode Cloud Environment Variables Setup

This guide shows you exactly how to set up environment variables for your Duxbe
Business iOS app in Xcode Cloud.

## 🔧 Required Variables

### 1. FLUTTER_VERSION

- **Value**: `3.35.0`
- **Type**: Public
- **Purpose**: Specifies which Flutter version to use

### 2. FIREBASE_APP_ID_IOS

- **Value**: Your Firebase iOS app ID (e.g., `1:123456789:ios:abcdef123456`)
- **Type**: Public
- **Purpose**: Identifies your Firebase project for iOS
- **How to find**: Firebase Console → Project Settings → General → Your apps →
  iOS app

### 3. FIREBASE_SERVICE_ACCOUNT

- **Value**: Complete JSON content of your Firebase service account key
- **Type**: Sensitive ⚠️
- **Purpose**: Authenticates with Firebase for App Distribution
- **How to get**: Firebase Console → Project Settings → Service Accounts →
  Generate new private key

## 📱 Step-by-Step Setup

### Method 1: Through Xcode (Easiest)

1. **Open Xcode** and load your project
2. **Go to**: `Product` → `Xcode Cloud` → `Manage Workflows`
3. **Select your workflow** (Development or Production)
4. **Click the "Environment" tab**
5. **Add each variable**:

#### Adding FLUTTER_VERSION:

- Click **"+"** button
- **Name**: `FLUTTER_VERSION`
- **Value**: `3.35.0`
- **Sensitive**: ❌ (unchecked)
- Click **"Save"**

#### Adding FIREBASE_APP_ID_IOS:

- Click **"+"** button
- **Name**: `FIREBASE_APP_ID_IOS`
- **Value**: `1:123456789:ios:abcdef123456` (your actual app ID)
- **Sensitive**: ❌ (unchecked)
- Click **"Save"**

#### Adding FIREBASE_SERVICE_ACCOUNT:

- Click **"+"** button
- **Name**: `FIREBASE_SERVICE_ACCOUNT`
- **Value**: Paste your entire service account JSON (see example below)
- **Sensitive**: ✅ (checked)
- Click **"Save"**

### Method 2: Through App Store Connect

1. **Go to**: [App Store Connect](https://appstoreconnect.apple.com)
2. **Navigate to**: Your app → Xcode Cloud → Workflows
3. **Select your workflow**
4. **Click "Environment" tab**
5. **Add variables** as described above

## 🔑 Firebase Service Account JSON Example

Your `FIREBASE_SERVICE_ACCOUNT` variable should contain the complete JSON like
this:

```json
{
    "type": "service_account",
    "project_id": "your-project-id",
    "private_key_id": "key-id",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC...\n-----END PRIVATE KEY-----\n",
    "client_email": "firebase-adminsdk-xxxxx@your-project-id.iam.gserviceaccount.com",
    "client_id": "123456789012345678901",
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-xxxxx%40your-project-id.iam.gserviceaccount.com"
}
```

## 🧪 Testing Your Variables

After setting up variables, you can test them in your build scripts:

```bash
#!/bin/bash
echo "Flutter Version: $FLUTTER_VERSION"
echo "Firebase App ID: $FIREBASE_APP_ID_IOS"
echo "Service Account configured: $([ -n "$FIREBASE_SERVICE_ACCOUNT" ] && echo "Yes" || echo "No")"
```

## 🔒 Security Best Practices

1. **Mark sensitive variables**: Always check "Sensitive" for:
   - API keys
   - Service account JSONs
   - Passwords
   - Private keys

2. **Use different values per environment**:
   - Development workflow: Use development Firebase project
   - Production workflow: Use production Firebase project

3. **Rotate keys regularly**: Update service account keys periodically

## 🚨 Troubleshooting

### Variable Not Found

- **Error**: `FIREBASE_APP_ID_IOS: unbound variable`
- **Solution**: Check variable name spelling and ensure it's set in the correct
  workflow

### Firebase Upload Fails

- **Error**: Authentication failed
- **Solution**: Verify `FIREBASE_SERVICE_ACCOUNT` JSON is complete and valid

### Flutter Version Issues

- **Error**: Flutter version mismatch
- **Solution**: Ensure `FLUTTER_VERSION` matches your local development version

## 📋 Variable Checklist

Before running your first build, verify:

- [ ] `FLUTTER_VERSION` is set to `3.35.0`
- [ ] `FIREBASE_APP_ID_IOS` contains your iOS app ID
- [ ] `FIREBASE_SERVICE_ACCOUNT` contains complete JSON
- [ ] All sensitive variables are marked as sensitive
- [ ] Variables are set in both Development and Production workflows (if using
      both)

## 🔄 Updating Variables

To update a variable:

1. Go to your workflow's Environment tab
2. Find the variable you want to update
3. Click the edit button (pencil icon)
4. Update the value
5. Save changes

The new value will be used in the next build.
