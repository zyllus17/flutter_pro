Contains all the code required by the native android.

# Changes

[build.gradle](android/app/build.gradle)

## Flavors 

Added in `android` section to setup flavors for different Environments.

```gradle
flavorDimensions "default"
    productFlavors {
        dev {
            dimension "default"
            versionNameSuffix "--dev"
        }
        stage {
            dimension "default"
            versionNameSuffix "--stage"
        }
        prod {
            dimension "default"
        }
    }
```