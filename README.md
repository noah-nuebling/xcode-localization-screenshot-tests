# xcode-localization-screenshot-tests

*Also see the repo xcode-localization-screenshot-fix.*

This repo contains different minimal Xcode projects that we used to test how to get Xcode's automatic-localization-screenshot-export feature - which was demoed in Apple's WWDC talks, and is described in their developer documentation - to work. However, I could not get it to work, no matter what I tried.

### localizationStringData.plist

I could not get Xcode to export localization screenshots for my macOS app or any other Xcode test projects that I created. (I also tried an iOS project) However, we figured out, how to do this manually: You have to include the screenshots inside the .xcloc file in a specific folder, and then you also have to include a localizationStringData.plist file. This file links localized strings with certain screenshot files and it also includes the exact rect where the localized string appears in the screenshot. This rect will be shown as a red highlight right in Xcode (or other apps like LocaStudio), when editing an .xcloc file, which is really nice.

The only examples I could find of how localizationStringData.plist should be structured for Xcode to recognize it is a very short snippet in one of the WWDC Demos (I forgot which one) and - more helpfully - I found some code on GitHub of an iOS tutorial project with the bundle ID 'com.raywenderlich.GetAPet' which included .xcloc files with valid localizedStringData.plist files that I could use as a template.

The attempts for our manual implementation are found in the *xcode-localization-screenshot-fix* repo.

---

The following is the content of Apple Note "MMF Automatic Localization Screenshot Debugging" created on 04.07.2024, copied into this repo on 25.09.2024.
This note contains most the references and info I could find on how to export .xcloc files with localization screenshots included.

### Claude

See conversation _**Xcode Question for AI Assistant**_

### WWDC Videos

WWDC Videos .xcloc screenshot export stuff:

* [WWDC 2021 - Streamline your localized strings](https://developer.apple.com/videos/play/wwdc2021/10221/) (at ca. 15:00)
* [WWDC 2019 - Creating Great Localized Experiences with Xcode 11](https://developer.apple.com/videos/play/wwdc2019/403/) (at 9:45) (Xcode 11 introduced automatic screenshot export)
    

Doesn't show .xcloc screenshot stuff:

* [WWDC 2023 - Discover Strings Catalogs](https://developer.apple.com/videos/play/wwdc2023/10155/) (We care about Localization Catalogs (.xcloc) not Strings Catalogs (.xcstrings))
* [WWDC 2022 - Build global apps: Localization by example](https://developer.apple.com/videos/play/wwdc2022/10110/) (Only skimmed through - might have missed sth)
* [WWDC 2021 - Localize your SwiftUI app](https://developer.apple.com/videos/play/wwdc2021/10220/) (Shows .xcloc at ca. 12:00, but not screenshots WWDC 2018 - New localization workflows in Xcode 10 (Video missing. Xcode 10 introduced .xcloc files)
    

### Stackoverflow

* [Problem exporting localization screenshots in Xcode 15](https://stackoverflow.com/questions/78388160/problem-exporting-localization-screenshots-in-xcode-15) (Asked Apr 2024)
* [Xcode 11 XCTestPlan can't export screenshots](https://stackoverflow.com/questions/58185911/xcode-11-xctestplan-cant-export-screenshots) (Asked Oct 2019)
* [WARNING: No screenshots were found for '( locale )' when trying to -exportLocalizations](https://stackoverflow.com/questions/69307595/warning-no-screenshots-were-found-for-locale-when-trying-to-exportlocali) (Asked Sep 2023)
* [Xcode 11 Export for Localization not working, Include Screenshots feature disabled, and can \[...\]](https://stackoverflow.com/questions/58278812/xcode-11-export-for-localization-not-working-include-screenshots-feature-disabl) (Asked Oct 2019)
    

### Apple Developer Forums

* [localization: "Include Screenshots" grayed out](https://developer.apple.com/forums/thread/128630) (Asked Feb 2020)
* [Localized Screenshots](https://developer.apple.com/forums/thread/737712) (Asked Sep 2023)

### Apple Developer Documentation

- [Creating screenshots of your app for localizers](https://developer.apple.com/documentation/xcode/creating-screenshots-of-your-app-for-localizers)
- [Exporting Localizations](https://developer.apple.com/documentation/xcode/exporting-localizations/)

---

## Installing Big Sur

We wanted to Test Xcode 11 which is the Xcode version that was demo'd in the WWDC 2019 Video

We tried installing through downloading macOS from the App Store and then creating a bootable installer, but just couldn't get it to work, there was always some error. Even bought a new USB Stick but still errors.

*   Forum post on using softwareupdate clt instead of App Store [here](https://discussions.apple.com/thread/253455414?sortBy=oldest_first&page=1).