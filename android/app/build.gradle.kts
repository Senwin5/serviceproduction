plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    namespace = "com.senwin.serviceproduction"
    compileSdk = flutter.compileSdkVersion

    // ✅ Use the correct NDK version required by Firebase packages
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.senwin.serviceproduction"
        minSdk = 23 // ✅ Firebase requires at least API level 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // ✅ Firebase BoM for managing consistent versions
    implementation(platform("com.google.firebase:firebase-bom:34.3.0"))

    // ✅ Firebase libraries (add more as needed)
    implementation("com.google.firebase:firebase-analytics")
}
