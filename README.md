# Xcode Project & File Template

## What is Xcode Template ?

Xcode Template is composed by 2 categories.

- Project Template.
- File Template.

It allows to add custom template on interface in Xcode when creating project or new file. That's mean we can create a default started project with Podfile, build settings configured and many more.

## Requirements

Work for Xcode 9 and Swift 4. Should be work in Xcode 8 but not tested.

## Getting Started

Clone and go to the repository with Terminal. Then execute the installation script.

```sh
./install_xctemp.sh
```
And Enjoy !!

Try to created new Project or new File and you will see the new templates.

## Project Template

For now there are 1 project template.

It is composed by MVVM arborescence, build settings configured for continuous integration, some scripts in build Phases and Podfile with pods as SwiftLint. Optional pods Alamofire, FireMock, RxSwift, Crashlytics. It allows to start with Rich Push Notifications configured in Build Settings for CI (Target Not Include) and Apple Watch with build settings and Targets added.

## File Template

At this instant there are multiple File Templates.

- Vertical List CollectionView self-sizing. We use more and more collectionView in project and this template brings a layout ready to use with an auto-sizing if used with auto-layout.

- Environment file. Configure the urls for debug, recette, pilote, and production environment and find a structure of Environment for your project simple to use.

- MVVM Architecture with tableView or collectionView available. Improve your development with these files automatically generated.

Some other files template will be released. Stay tuned.
