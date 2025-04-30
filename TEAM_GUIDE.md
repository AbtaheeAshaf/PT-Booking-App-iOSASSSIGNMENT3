# 🧾 PT Booking App – Git Workflow Guide for Team Members

This guide explains exactly how to download, update, and contribute to the PT Booking App project using Git and Xcode.

---

## 🔧 Tools Needed:
- **Xcode** – for building and running the iOS app
- **Terminal** – for Git commands (found via Spotlight or Applications > Utilities)
- **GitHub account** – each member must be added as a collaborator to the repo

---

## ✅ 1. One-Time Setup: Clone the Project
📍 **In Terminal** (anywhere you want the project to live on your computer):

```bash
git clone https://github.com/AbtaheeAshaf/PT-Booking-App-iOSASSIGNMENT3.git
cd PT-Booking-App-iOSASSIGNMENT3
```

This downloads the project and places it in a folder called `PT-Booking-App-iOSASSIGNMENT3`.

To open it in Xcode:

```bash
open PTBookingApp.xcodeproj
```

---

## 🔄 2. Pull the Latest Code Before You Start Working (Every Session)
📍 **In Terminal**, make sure you are inside the project folder:

```bash
cd path/to/PT-Booking-App-iOSASSIGNMENT3
git pull origin main
```

This updates your local copy with any new work pushed by teammates.

> 💡 Tip: Always run this before opening Xcode or making any changes.

---

## 🧑‍💻 3. Make Changes in Xcode
📍 **In Xcode**, you can:
- Edit Swift files in `Views/`, `Models/`, or `Screens/`
- Create new views or screens
- Test in iOS Simulator
- Add assets (images, icons, etc.)

Save your changes when done.

---

## 💾 4. Stage and Commit Your Changes
📍 Back in **Terminal**, while inside the project folder:

```bash
git add .
git commit -m "Add: Created BookingView layout"
```

✅ Use clear commit messages, such as:
- `Add: Implemented ScheduleView layout`
- `Fix: Resolved crash in HomeView`
- `Update: Improved navigation between screens`

---

## 🚀 5. Push Your Changes to GitHub

```bash
git push origin main
```

This uploads your committed changes to the GitHub repo for the whole group to access.

---

## 🔁 Summary of Daily Workflow

1. Open Terminal
2. Navigate to your project folder:
   ```bash
   cd path/to/PT-Booking-App-iOSASSIGNMENT3
   ```
3. Pull latest changes:
   ```bash
   git pull origin main
   ```
4. Open Xcode and do your work
5. Save your changes
6. Commit and push:
   ```bash
   git add .
   git commit -m "Your message here"
   git push origin main
   ```

---

## 🧠 Best Practices

- ✅ Always pull before making changes
- ✅ Push only tested and working code
- ✅ Use meaningful commit messages
- ❌ Avoid working on the exact same file as someone else unless discussed
- ❌ Don’t push broken code that stops the app from running

---

For any help with Git conflicts or collaboration issues, talk to the group or ask for help early. 👍
