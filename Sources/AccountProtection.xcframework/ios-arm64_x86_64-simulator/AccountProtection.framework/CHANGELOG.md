---
title: Changelog
toc:
  maxDepth: 2
---
# iOS Fraud Prevention SDK Changelog

## Fraud Prevention - 3.0.6 - Sep. 2026
* fix: React Native elements without their own `testID` now inherit the identifier from the nearest React Native parent view.

## Fraud Prevention - 3.0.5 - Aug. 2026
* feat: Added `reportActionResult()` to report the result of an action for which a recommendation was previously issued via `triggerAction()`.

## Fraud Prevention - 3.0.4 - Jul. 2026
* feat: Added Cordova support. Native behavioral collection is disabled on Cordova screens; interaction events (touch, click, input, navigation) are reported manually via `logInteractionEvent(_:)`. In mixed native and Cordova apps this is detected per screen, so native collection remains active on native screens.

## Fraud Prevention - 3.0.3 - Jun. 2026
* feat: Added Flutter support. Native behavioral collection is disabled in Flutter apps; interaction events (touch, click, input, navigation) are reported manually via `logInteractionEvent(_:)`. Added `getCollectorConfiguration()` and collector configuration listeners for cross-platform integration.

## Fraud Prevention - 3.0.2 - Jun. 2026
* fix: Fixed a rare crash that could occur while some app resources were being released from memory.

## Fraud Prevention - 3.0.1 - May. 2026
* feat: Added new API to override the `User-Agent` header via `TSNetworkSettings(userAgent:)` during SDK initialization. 
* fix: Improved `baseUrl` handling to accept various URL formats.

## Fraud Prevention - 3.0.0 - Mar. 2026
* feat: Extended React Native support to behavioral data collection and page load tracking. This requires adding `testID` attributes to the UI elements that should be tracked.
* feat: Added `logPageLoad(pageName: string)` to log page load events in React Native.
* feat: `TSActionEventOptions.claimUserId` is now deprecated. Use `claimedUserId` instead.
* feat: Added `claimedUserIdType` to `TSActionEventOptions` to specify the type of identifier provided in `claimedUserId`.
* feat: Improved detection capabilities for fraud and scam prevention, including call detection, sound output monitoring, device orientation tracking, and increased touch sampling rate.
* feat: **Breaking change:** Renamed `setUserId()` to `setAuthenticatedUser()`.
* feat: **Breaking change:** `baseUrl` is now a mandatory parameter in `initializeSDK` and must end with `/risk-collect/` (for example, `https://api.idsec-stg.com/risk-collect/`).

## Fraud Prevention - 2.2.0 - Feb. 2026
* feat: Swift 6 support.

## Fraud Prevention - 2.1.16 - Dec. 2025
* chore: TSCoreSDK minimum dependency version updated to 1.0.35.

## Fraud Prevention - 2.1.15 - Nov. 2025
* feat: Add configuration-based allow and ignore lists to control behavioral data collection.
* feat: Add Key Rotation support.
* feat: Enhance "getSessionToken" API for improved reliability and performance.
* fix: Remove duplicate “Page Load” events.
* chore: Ensure compatibility with Core 1.0.32.

## Fraud Prevention - 2.1.14 - Aug. 2025
* feat: Collect location events during SDK initialization and when the app enters the foreground.
* feat: Update default SDK base URL.

## Fraud Prevention - 2.1.13 - Jul. 2025
* feat: Add support for custom attributes in trigger actions.
* feat: Allow location collection in trigger actions.

## Fraud Prevention - 2.1.12 - Mar. 2025

* feat: Update core version.

