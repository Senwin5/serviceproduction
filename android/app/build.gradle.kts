plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    namespace = "com.senwin.serviceproduction"
    compileSdk = flutter.compileSdkVersion

    // ✅ Use correct NDK version if required by Firebase or other libs
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
        // ✅ Suppress deprecation warnings safely
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.senwin.serviceproduction"
        minSdk = flutter.minSdkVersion // ✅ Firebase requires at least API 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName

        // ✅ Enable multidex if needed (big Firebase apps usually need it)
        multiDexEnabled = true
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")

            // ✅ Keep release settings valid for Kotlin DSL
            isMinifyEnabled = false
            isShrinkResources = false
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // ✅ Firebase BoM for version alignment
    implementation(platform("com.google.firebase:firebase-bom:34.3.0"))

    // ✅ Firebase libraries
    implementation("com.google.firebase:firebase-analytics")
    implementation("com.google.firebase:firebase-auth")
    implementation("com.google.firebase:firebase-firestore")

    // ✅ Multidex support
    implementation("androidx.multidex:multidex:2.0.1")

    // ✅ Fix deprecation warnings
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.0.4")
}
