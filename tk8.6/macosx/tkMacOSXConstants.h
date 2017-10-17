/*
 * tkMacOSXConstants.h --
 *
 *	Macros which map the names of NS constants used in the Tk code to
 *      the new name that Apple came up with for subsequent versions of the
 *      operating system.  (Each new OS release seems to come with a new
 *      naming convention for the same old constants.) 
 *
 * Copyright (c) 2017 Marc Culler
 *
 * See the file "license.terms" for information on usage and redistribution
 * of this file, and for a DISCLAIMER OF ALL WARRANTIES.
 */

#ifndef _TKMACCONSTANTS
#define _TKMACCONSTANTS

/*
 * Let's raise a glass for the project manager who improves our lives by
 * generating deprecation warnings about pointless changes of the names
 * of constants.
 */

#if MAC_OS_X_VERSION_MIN_REQUIRED >= 101000
#define NSOKButton NSModalResponseOK
#endif

#if MAC_OS_X_VERSION_MIN_REQUIRED >= 101200
#define NSAppKitDefined NSEventTypeAppKitDefined
#define NSApplicationActivatedEventType NSEventSubtypeApplicationActivated
#define NSApplicationDeactivatedEventType NSEventSubtypeApplicationDeactivated
#define NSWindowExposedEventType NSEventSubtypeWindowExposed
#define NSScreenChangedEventType NSEventSubtypeScreenChanged
#define NSWindowMovedEventType NSEventSubtypeWindowMoved
#define NSKeyUp NSEventTypeKeyUp
#define NSKeyDown NSEventTypeKeyDown
#define NSFlagsChanged NSEventTypeFlagsChanged
#define NSLeftMouseDown NSEventTypeLeftMouseDown
#define NSLeftMouseUp NSEventTypeLeftMouseUp
#define NSRightMouseDown NSEventTypeRightMouseDown
#define NSRightMouseUp NSEventTypeRightMouseUp
#define NSLeftMouseDragged NSEventTypeLeftMouseDragged
#define NSRightMouseDragged NSEventTypeRightMouseDragged
#define NSMouseMoved NSEventTypeMouseMoved
#define NSMouseEntered NSEventTypeMouseEntered
#define NSMouseExited NSEventTypeMouseExited
#define NSScrollWheel NSEventTypeScrollWheel
#define NSOtherMouseDown NSEventTypeOtherMouseDown
#define NSOtherMouseUp NSEventTypeOtherMouseUp
#define NSOtherMouseDragged NSEventTypeOtherMouseDragged
#define NSTabletPoint NSEventTypeTabletPoint
#define NSTabletProximity NSEventTypeTabletProximity
#define NSDeviceIndependentModifierFlagsMask NSEventModifierFlagDeviceIndependentFlagsMask
#define NSCommandKeyMask NSEventModifierFlagCommand
#define NSShiftKeyMask NSEventModifierFlagShift
#define NSAlphaShiftKeyMask NSEventModifierFlagCapsLock 
#define NSAlternateKeyMask NSEventModifierFlagOption
#define NSControlKeyMask NSEventModifierFlagControl
#define NSNumericPadKeyMask NSEventModifierFlagNumericPad
#define NSFunctionKeyMask NSEventModifierFlagFunction
#define NSCursorUpdate NSEventTypeCursorUpdate
#define NSTexturedBackgroundWindowMask NSWindowStyleMaskTexturedBackground
#define NSCompositeCopy NSCompositingOperationCopy
#define NSWarningAlertStyle NSAlertStyleWarning
#define NSInformationalAlertStyle NSAlertStyleInformational
#define NSCriticalAlertStyle NSAlertStyleCritical
#define NSCenterTextAlignment NSTextAlignmentCenter
#define NSDeviceIndependentModifierFlagsMask NSEventModifierFlagDeviceIndependentFlagsMask
#define NSCommandKeyMask NSEventModifierFlagCommand
#define NSShiftKeyMask NSEventModifierFlagShift
#define NSAlphaShiftKeyMask NSEventModifierFlagCapsLock
#define NSAlternateKeyMask NSEventModifierFlagOption
#define NSControlKeyMask NSEventModifierFlagControl
#define NSNumericPadKeyMask NSEventModifierFlagNumericPad
#define NSFunctionKeyMask NSEventModifierFlagFunction
#define NSKeyUp NSEventTypeKeyUp
#define NSKeyDown NSEventTypeKeyDown
#define NSFlagsChanged NSEventTypeFlagsChanged
#define NSAlphaShiftKeyMask NSEventModifierFlagCapsLock
#define NSShiftKeyMask NSEventModifierFlagShift
#define NSAnyEventMask NSEventMaskAny
#define NSTexturedBackgroundWindowMask NSWindowStyleMaskTexturedBackground
#define NSUtilityWindowMask NSWindowStyleMaskUtilityWindow
#define NSNonactivatingPanelMask NSWindowStyleMaskNonactivatingPanel
#define NSDocModalWindowMask NSWindowStyleMaskDocModalWindow
#define NSHUDWindowMask NSWindowStyleMaskHUDWindow
#define NSTitledWindowMask NSWindowStyleMaskTitled
#define NSClosableWindowMask NSWindowStyleMaskClosable
#define NSResizableWindowMask NSWindowStyleMaskResizable
#define NSUnifiedTitleAndToolbarWindowMask NSWindowStyleMaskUnifiedTitleAndToolbar
#define NSMiniaturizableWindowMask NSWindowStyleMaskMiniaturizable
#define NSBorderlessWindowMask NSWindowStyleMaskBorderless
#endif

#endif
