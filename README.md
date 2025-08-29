<div align="center">
 <img width="128" height="128" alt="play_store_512" src="https://github.com/user-attachments/assets/533cec21-b967-41b6-a78d-98312cd50008" />
 <h1>Din</h1>
 <a href="https://play.google.com/store/apps/details?id=com.tallestlegacy.din">
   <img alt="Get it on Google Play" src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png" width="200" />
 </a>
 <p>This is a simple material UI Quran and Sunnah reader.</p>
 <p>🤟 Works on Android, iOS, Linux, Windows and Mac. Thank you Flutter 💖!</p>
</div>
<br><br><br>

## Running the project

After cloning the project, change to this working directory and run :

```sh
flutter run
```

## TODO

- [ ] Find a designer
- [x] Publish on PlayStore

## Features

- [x] Quran
- [x] Quran Recitations
- [ ] Dua Recitations
- [x] Hadith and Sunnah
- [ ] Madrasa
- [x] Multiple translations
- [ ] Abridged explanations of the Quran
- [ ] Learning resources
- [x] Favourites
- [ ] Application reviews and Release notes
- [ ] User manual

- [x] Text sharing
- [ ] Search quran
- [ ] Search every other list
- [ ] Islamic calendar
- [ ] Optional reminders (Prayer and Fasting)

## Customisation

- [x] Arabic / English / Transliteration toggles
- [x] Scroll Direction
- [x] App colors and theme
- [x] Arabic fonts
- [ ] Other UI fonts

## UI

| light | dark |
| ----- | ---- |
| ![image](https://github.com/tallestlegacy/din_flutter/assets/71118951/32186746-7022-470d-adcc-032b9c28a475) | ![image](https://github.com/tallestlegacy/din_flutter/assets/71118951/d2f95ee9-65ce-4578-adc3-5817a18693b2) |

## Building

For minimal app bundle size :

```sh
 flutter build appbundle --build-number <n> # support more platforms
 flutter build appbundle --target-platform android-arm,android-arm64 --build-number <n>
```

For minimal apk size :

```sh
flutter build apk --split-per-abi
```
