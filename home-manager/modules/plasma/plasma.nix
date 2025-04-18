{ pkgs, inputs, ... }:
{
  imports = [
    inputs.plasma-manager.homeManagerModules.plasma-manager # Import the plasma-manager home-manager module
  ];

  home.packages = with pkgs; [
    kdePackages.filelight
    plasma-panel-colorizer
    kdePackages.kcolorpicker
  ];
  programs.plasma = {
    enable = true;
    shortcuts = {
      "ActivityManager"."switch-to-activity-b783d9b4-8eb7-4b96-b973-afd016a4894b" = [ ];
      "KDE Keyboard Layout Switcher"."Switch to Last-Used Keyboard Layout" = "Meta+Alt+L";
      "KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = "Meta+Alt+K";
      "kaccess"."Toggle Screen Reader On and Off" = "Meta+Alt+S";
      "kcm_touchpad"."Disable Touchpad" = "Touchpad Off";
      "kcm_touchpad"."Enable Touchpad" = "Touchpad On";
      "kcm_touchpad"."Toggle Touchpad" = [
        "Touchpad Toggle"
        "Meta+Ctrl+Touchpad Toggle"
        "Meta+Ctrl+Zenkaku Hankaku,Touchpad Toggle"
        "Touchpad Toggle"
        "Meta+Ctrl+Touchpad Toggle"
        "Meta+Ctrl+Zenkaku Hankaku"
      ];
      "kmix"."decrease_microphone_volume" = "Microphone Volume Down";
      "kmix"."decrease_volume" = "Volume Down";
      "kmix"."decrease_volume_small" = "Shift+Volume Down";
      "kmix"."increase_microphone_volume" = "Microphone Volume Up";
      "kmix"."increase_volume" = "Volume Up";
      "kmix"."increase_volume_small" = "Shift+Volume Up";
      "kmix"."mic_mute" = [
        "Microphone Mute"
        "Meta+Volume Mute,Microphone Mute"
        "Meta+Volume Mute,Mute Microphone"
      ];
      "kmix"."mute" = "Volume Mute";
      "ksmserver"."Halt Without Confirmation" = "none,,Shut Down Without Confirmation";
      "ksmserver"."Lock Session" = [
        "Meta+L"
        "Screensaver,Meta+L"
        "Screensaver,Lock Session"
      ];
      "ksmserver"."Log Out" = "Ctrl+Alt+Del";
      "ksmserver"."Log Out Without Confirmation" = "none,,Log Out Without Confirmation";
      "ksmserver"."LogOut" = "none,,Log Out";
      "ksmserver"."Reboot" = "none,,Reboot";
      "ksmserver"."Reboot Without Confirmation" = "none,,Reboot Without Confirmation";
      "ksmserver"."Shut Down" = "none,,Shut Down";
      "kwin"."Activate Window Demanding Attention" = "Meta+Ctrl+A";
      "kwin"."Cycle Overview" = [ ];
      "kwin"."Cycle Overview Opposite" = [ ];
      "kwin"."Decrease Opacity" = "none,,Decrease Opacity of Active Window by 5%";
      "kwin"."Edit Tiles" = "Meta+T";
      "kwin"."Expose" = "Ctrl+F9";
      "kwin"."ExposeAll" = [
        "Ctrl+F10"
        "Launch (C),Ctrl+F10"
        "Launch (C),Toggle Present Windows (All desktops)"
      ];
      "kwin"."ExposeClass" = "Ctrl+F7";
      "kwin"."ExposeClassCurrentDesktop" = [ ];
      "kwin"."Grid View" = "Meta+G";
      "kwin"."Increase Opacity" = "none,,Increase Opacity of Active Window by 5%";
      "kwin"."KWin Script: Sticky Window Snapping: enable/disable" =
        ",none,KWin Script: Sticky Window Snapping: enable/disable";
      "kwin"."KWin Script: Sticky Window Snapping: enable/disable temporarily" =
        ",none,KWin Script: Sticky Window Snapping: enable/disable temporarily";
      "kwin"."KZones: Activate layout 1" = "Meta+Num+1,none,KZones: Activate layout 1";
      "kwin"."KZones: Activate layout 2" = "Meta+Num+2,none,KZones: Activate layout 2";
      "kwin"."KZones: Activate layout 3" = "Meta+Num+3,none,KZones: Activate layout 3";
      "kwin"."KZones: Activate layout 4" = "Meta+Num+4,none,KZones: Activate layout 4";
      "kwin"."KZones: Activate layout 5" = "Meta+Num+5,none,KZones: Activate layout 5";
      "kwin"."KZones: Activate layout 6" = "Meta+Num+6,none,KZones: Activate layout 6";
      "kwin"."KZones: Activate layout 7" = "Meta+Num+7,none,KZones: Activate layout 7";
      "kwin"."KZones: Activate layout 8" = "Meta+Num+8,none,KZones: Activate layout 8";
      "kwin"."KZones: Activate layout 9" = "Meta+Num+9,none,KZones: Activate layout 9";
      "kwin"."KZones: Cycle layouts" = "Ctrl+Alt+D,none,KZones: Cycle layouts";
      "kwin"."KZones: Cycle layouts (reversed)" =
        "Ctrl+Alt+Shift+D,none,KZones: Cycle layouts (reversed)";
      "kwin"."KZones: Move active window down" = [ ];
      "kwin"."KZones: Move active window left" = [ ];
      "kwin"."KZones: Move active window right" = [ ];
      "kwin"."KZones: Move active window to next zone" =
        "Ctrl+Alt+Right,none,KZones: Move active window to next zone";
      "kwin"."KZones: Move active window to previous zone" =
        "Ctrl+Alt+Left,none,KZones: Move active window to previous zone";
      "kwin"."KZones: Move active window to zone 1" =
        "Ctrl+Alt+Num+1,none,KZones: Move active window to zone 1";
      "kwin"."KZones: Move active window to zone 2" =
        "Ctrl+Alt+Num+2,none,KZones: Move active window to zone 2";
      "kwin"."KZones: Move active window to zone 3" =
        "Ctrl+Alt+Num+3,none,KZones: Move active window to zone 3";
      "kwin"."KZones: Move active window to zone 4" =
        "Ctrl+Alt+Num+4,none,KZones: Move active window to zone 4";
      "kwin"."KZones: Move active window to zone 5" =
        "Ctrl+Alt+Num+5,none,KZones: Move active window to zone 5";
      "kwin"."KZones: Move active window to zone 6" =
        "Ctrl+Alt+Num+6,none,KZones: Move active window to zone 6";
      "kwin"."KZones: Move active window to zone 7" =
        "Ctrl+Alt+Num+7,none,KZones: Move active window to zone 7";
      "kwin"."KZones: Move active window to zone 8" =
        "Ctrl+Alt+Num+8,none,KZones: Move active window to zone 8";
      "kwin"."KZones: Move active window to zone 9" =
        "Ctrl+Alt+Num+9,none,KZones: Move active window to zone 9";
      "kwin"."KZones: Move active window up" = [ ];
      "kwin"."KZones: Snap active window" = "Meta+Shift+Space,none,KZones: Snap active window";
      "kwin"."KZones: Snap all windows" = "Meta+Space,none,KZones: Snap all windows";
      "kwin"."KZones: Switch to next window in current zone" =
        "Ctrl+Alt+Up,none,KZones: Switch to next window in current zone";
      "kwin"."KZones: Switch to previous window in current zone" =
        "Ctrl+Alt+Down,none,KZones: Switch to previous window in current zone";
      "kwin"."KZones: Toggle zone overlay" = "Ctrl+Alt+C,none,KZones: Toggle zone overlay";
      "kwin"."Kill Window" = "Meta+X,Meta+Ctrl+Esc,Kill Window";
      "kwin"."KrohnkiteBTreeLayout" = [ ];
      "kwin"."KrohnkiteColumnsLayout" = [ ];
      "kwin"."KrohnkiteDecrease" = [ ];
      "kwin"."KrohnkiteFloatAll" = "Meta+Shift+F,none,Krohnkite: Toggle Float All";
      "kwin"."KrohnkiteFloatingLayout" = [ ];
      "kwin"."KrohnkiteFocusDown" = [ ];
      "kwin"."KrohnkiteFocusLeft" = [ ];
      "kwin"."KrohnkiteFocusNext" = [ ];
      "kwin"."KrohnkiteFocusPrev" = "Meta+\\,,none,Krohnkite: Focus Previous";
      "kwin"."KrohnkiteFocusRight" = [ ];
      "kwin"."KrohnkiteFocusUp" = [ ];
      "kwin"."KrohnkiteGrowHeight" = [ ];
      "kwin"."KrohnkiteIncrease" = "Meta+I,none,Krohnkite: Increase";
      "kwin"."KrohnkiteMonocleLayout" = "Meta+M,none,Krohnkite: Monocle Layout";
      "kwin"."KrohnkiteNextLayout" = [ ];
      "kwin"."KrohnkitePreviousLayout" = [ ];
      "kwin"."KrohnkiteQuarterLayout" = [ ];
      "kwin"."KrohnkiteRotate" = [ ];
      "kwin"."KrohnkiteRotatePart" = [ ];
      "kwin"."KrohnkiteSetMaster" = [ ];
      "kwin"."KrohnkiteShiftDown" = [ ];
      "kwin"."KrohnkiteShiftLeft" = [ ];
      "kwin"."KrohnkiteShiftRight" = [ ];
      "kwin"."KrohnkiteShiftUp" = [ ];
      "kwin"."KrohnkiteShrinkHeight" = [ ];
      "kwin"."KrohnkiteShrinkWidth" = [ ];
      "kwin"."KrohnkiteSpiralLayout" = [ ];
      "kwin"."KrohnkiteSpreadLayout" = [ ];
      "kwin"."KrohnkiteStackedLayout" = [ ];
      "kwin"."KrohnkiteStairLayout" = [ ];
      "kwin"."KrohnkiteTileLayout" = [ ];
      "kwin"."KrohnkiteToggleFloat" = "Meta+F,none,Krohnkite: Toggle Float";
      "kwin"."KrohnkiteTreeColumnLayout" = [ ];
      "kwin"."KrohnkitegrowWidth" = [ ];
      "kwin"."Move Tablet to Next Output" = [ ];
      "kwin"."MoveMouseToCenter" = "Meta+F6";
      "kwin"."MoveMouseToFocus" = "Meta+F5";
      "kwin"."MoveZoomDown" = [ ];
      "kwin"."MoveZoomLeft" = [ ];
      "kwin"."MoveZoomRight" = [ ];
      "kwin"."MoveZoomUp" = [ ];
      "kwin"."Overview" = "Meta+W";
      "kwin"."PoloniumCycleEngine" = "Meta+|,none,Polonium: Cycle Engine";
      "kwin"."PoloniumFocusAbove" = "Meta+K,none,Polonium: Focus Above";
      "kwin"."PoloniumFocusBelow" = "Meta+J,none,Polonium: Focus Below";
      "kwin"."PoloniumFocusLeft" = "Meta+H,none,Polonium: Focus Left";
      "kwin"."PoloniumFocusRight" = [ ];
      "kwin"."PoloniumInsertAbove" = "Meta+Shift+K,none,Polonium: Insert Above";
      "kwin"."PoloniumInsertBelow" = "Meta+Shift+J,none,Polonium: Insert Below";
      "kwin"."PoloniumInsertLeft" = "Meta+Shift+H,none,Polonium: Insert Left";
      "kwin"."PoloniumInsertRight" = "Meta+Shift+L,none,Polonium: Insert Right";
      "kwin"."PoloniumOpenSettings" = "Meta+\\\\,none,Polonium: Open Settings Dialog";
      "kwin"."PoloniumResizeAbove" = "Meta+Ctrl+K,none,Polonium: Resize Above";
      "kwin"."PoloniumResizeBelow" = "Meta+Ctrl+J,none,Polonium: Resize Below";
      "kwin"."PoloniumResizeLeft" = "Meta+Ctrl+H,none,Polonium: Resize Left";
      "kwin"."PoloniumResizeRight" = "Meta+Ctrl+L,none,Polonium: Resize Right";
      "kwin"."PoloniumRetileWindow" = [ ];
      "kwin"."PoloniumSwitchBTree" = [ ];
      "kwin"."PoloniumSwitchHalf" = [ ];
      "kwin"."PoloniumSwitchKwin" = [ ];
      "kwin"."PoloniumSwitchMonocle" = [ ];
      "kwin"."PoloniumSwitchThreeColumn" = [ ];
      "kwin"."Setup Window Shortcut" = "none,,Setup Window Shortcut";
      "kwin"."Show Desktop" = "Meta+D";
      "kwin"."Switch One Desktop Down" = "Meta+Ctrl+Down";
      "kwin"."Switch One Desktop Up" = "Meta+Ctrl+Up";
      "kwin"."Switch One Desktop to the Left" = "none,Meta+Ctrl+Left,Switch One Desktop to the Left";
      "kwin"."Switch One Desktop to the Right" = "none,Meta+Ctrl+Right,Switch One Desktop to the Right";
      "kwin"."Switch Window Down" = "Meta+Down,Meta+Alt+Down,Switch to Window Below";
      "kwin"."Switch Window Left" = "Meta+Left,Meta+Alt+Left,Switch to Window to the Left";
      "kwin"."Switch Window Right" = "Meta+Right,Meta+Alt+Right,Switch to Window to the Right";
      "kwin"."Switch Window Up" = "Meta+Up,Meta+Alt+Up,Switch to Window Above";
      "kwin"."Switch to Desktop 1" = "Meta+1,Ctrl+F1,Switch to Desktop 1";
      "kwin"."Switch to Desktop 10" = "Meta+0,,Switch to Desktop 10";
      "kwin"."Switch to Desktop 11" = "none,,Switch to Desktop 11";
      "kwin"."Switch to Desktop 12" = "none,,Switch to Desktop 12";
      "kwin"."Switch to Desktop 13" = "none,,Switch to Desktop 13";
      "kwin"."Switch to Desktop 14" = "none,,Switch to Desktop 14";
      "kwin"."Switch to Desktop 15" = "none,,Switch to Desktop 15";
      "kwin"."Switch to Desktop 16" = "none,,Switch to Desktop 16";
      "kwin"."Switch to Desktop 17" = "none,,Switch to Desktop 17";
      "kwin"."Switch to Desktop 18" = "none,,Switch to Desktop 18";
      "kwin"."Switch to Desktop 19" = "none,,Switch to Desktop 19";
      "kwin"."Switch to Desktop 2" = "Meta+2,Ctrl+F2,Switch to Desktop 2";
      "kwin"."Switch to Desktop 20" = "none,,Switch to Desktop 20";
      "kwin"."Switch to Desktop 3" = "Meta+3,Ctrl+F3,Switch to Desktop 3";
      "kwin"."Switch to Desktop 4" = "Meta+4,Ctrl+F4,Switch to Desktop 4";
      "kwin"."Switch to Desktop 5" = "Meta+5,,Switch to Desktop 5";
      "kwin"."Switch to Desktop 6" = "Meta+6,,Switch to Desktop 6";
      "kwin"."Switch to Desktop 7" = "Meta+7,,Switch to Desktop 7";
      "kwin"."Switch to Desktop 8" = "Meta+8,,Switch to Desktop 8";
      "kwin"."Switch to Desktop 9" = "Meta+9,,Switch to Desktop 9";
      "kwin"."Switch to Next Desktop" = "none,,Switch to Next Desktop";
      "kwin"."Switch to Next Screen" = "none,,Switch to Next Screen";
      "kwin"."Switch to Previous Desktop" = "none,,Switch to Previous Desktop";
      "kwin"."Switch to Previous Screen" = "none,,Switch to Previous Screen";
      "kwin"."Switch to Screen 0" = "none,,Switch to Screen 0";
      "kwin"."Switch to Screen 1" = "none,,Switch to Screen 1";
      "kwin"."Switch to Screen 2" = "none,,Switch to Screen 2";
      "kwin"."Switch to Screen 3" = "none,,Switch to Screen 3";
      "kwin"."Switch to Screen 4" = "none,,Switch to Screen 4";
      "kwin"."Switch to Screen 5" = "none,,Switch to Screen 5";
      "kwin"."Switch to Screen 6" = "none,,Switch to Screen 6";
      "kwin"."Switch to Screen 7" = "none,,Switch to Screen 7";
      "kwin"."Switch to Screen Above" = "none,,Switch to Screen Above";
      "kwin"."Switch to Screen Below" = "none,,Switch to Screen Below";
      "kwin"."Switch to Screen to the Left" = "none,,Switch to Screen to the Left";
      "kwin"."Switch to Screen to the Right" = "none,,Switch to Screen to the Right";
      "kwin"."Toggle Night Color" = [ ];
      "kwin"."Toggle Window Raise/Lower" = "none,,Toggle Window Raise/Lower";
      "kwin"."Walk Through Windows" = "Alt+Tab";
      "kwin"."Walk Through Windows (Reverse)" = "Alt+Shift+Tab";
      "kwin"."Walk Through Windows Alternative" = "none,,Walk Through Windows Alternative";
      "kwin"."Walk Through Windows Alternative (Reverse)" =
        "none,,Walk Through Windows Alternative (Reverse)";
      "kwin"."Walk Through Windows of Current Application" = "Alt+`";
      "kwin"."Walk Through Windows of Current Application (Reverse)" = "Alt+~";
      "kwin"."Walk Through Windows of Current Application Alternative" =
        "none,,Walk Through Windows of Current Application Alternative";
      "kwin"."Walk Through Windows of Current Application Alternative (Reverse)" =
        "none,,Walk Through Windows of Current Application Alternative (Reverse)";
      "kwin"."Window Above Other Windows" = "none,,Keep Window Above Others";
      "kwin"."Window Below Other Windows" = "none,,Keep Window Below Others";
      "kwin"."Window Close" = "Meta+Q,Alt+F4,Close Window";
      "kwin"."Window Custom Quick Tile Bottom" = "none,,Custom Quick Tile Window to the Bottom";
      "kwin"."Window Custom Quick Tile Left" = "none,,Custom Quick Tile Window to the Left";
      "kwin"."Window Custom Quick Tile Right" = "none,,Custom Quick Tile Window to the Right";
      "kwin"."Window Custom Quick Tile Top" = "none,,Custom Quick Tile Window to the Top";
      "kwin"."Window Fullscreen" = "none,,Make Window Fullscreen";
      "kwin"."Window Grow Horizontal" = "none,,Expand Window Horizontally";
      "kwin"."Window Grow Vertical" = "none,,Expand Window Vertically";
      "kwin"."Window Lower" = "none,,Lower Window";
      "kwin"."Window Maximize" = "Meta+PgUp";
      "kwin"."Window Maximize Horizontal" = "none,,Maximise Window Horizontally";
      "kwin"."Window Maximize Vertical" = "none,,Maximise Window Vertically";
      "kwin"."Window Minimize" = "Meta+PgDown";
      "kwin"."Window Move" = "none,,Move Window";
      "kwin"."Window Move Center" = "none,,Move Window to the Centre";
      "kwin"."Window No Border" = "none,,Toggle Window Titlebar and Frame";
      "kwin"."Window On All Desktops" = "none,,Keep Window on All Desktops";
      "kwin"."Window One Desktop Down" = "Meta+Ctrl+Shift+Down";
      "kwin"."Window One Desktop Up" = "Meta+Ctrl+Shift+Up";
      "kwin"."Window One Desktop to the Left" = "Meta+Ctrl+Shift+Left";
      "kwin"."Window One Desktop to the Right" = "Meta+Ctrl+Shift+Right";
      "kwin"."Window One Screen Down" = "none,,Move Window One Screen Down";
      "kwin"."Window One Screen Up" = "none,,Move Window One Screen Up";
      "kwin"."Window One Screen to the Left" = "none,,Move Window One Screen to the Left";
      "kwin"."Window One Screen to the Right" = "none,,Move Window One Screen to the Right";
      "kwin"."Window Operations Menu" = "Alt+F3";
      "kwin"."Window Pack Down" = "none,,Move Window Down";
      "kwin"."Window Pack Left" = "none,,Move Window Left";
      "kwin"."Window Pack Right" = "none,,Move Window Right";
      "kwin"."Window Pack Up" = "none,,Move Window Up";
      "kwin"."Window Quick Tile Bottom" = "none,Meta+Down,Quick Tile Window to the Bottom";
      "kwin"."Window Quick Tile Bottom Left" = "none,,Quick Tile Window to the Bottom Left";
      "kwin"."Window Quick Tile Bottom Right" = "none,,Quick Tile Window to the Bottom Right";
      "kwin"."Window Quick Tile Left" = "none,Meta+Left,Quick Tile Window to the Left";
      "kwin"."Window Quick Tile Right" = "none,Meta+Right,Quick Tile Window to the Right";
      "kwin"."Window Quick Tile Top" = "none,Meta+Up,Quick Tile Window to the Top";
      "kwin"."Window Quick Tile Top Left" = "none,,Quick Tile Window to the Top Left";
      "kwin"."Window Quick Tile Top Right" = "none,,Quick Tile Window to the Top Right";
      "kwin"."Window Raise" = "none,,Raise Window";
      "kwin"."Window Resize" = "none,,Resize Window";
      "kwin"."Window Shade" = "none,,Shade Window";
      "kwin"."Window Shrink Horizontal" = "none,,Shrink Window Horizontally";
      "kwin"."Window Shrink Vertical" = "none,,Shrink Window Vertically";
      "kwin"."Window to Desktop 1" = "Meta+!,,Window to Desktop 1";
      "kwin"."Window to Desktop 10" = "none,,Window to Desktop 10";
      "kwin"."Window to Desktop 11" = "none,,Window to Desktop 11";
      "kwin"."Window to Desktop 12" = "none,,Window to Desktop 12";
      "kwin"."Window to Desktop 13" = "none,,Window to Desktop 13";
      "kwin"."Window to Desktop 14" = "none,,Window to Desktop 14";
      "kwin"."Window to Desktop 15" = "none,,Window to Desktop 15";
      "kwin"."Window to Desktop 16" = "none,,Window to Desktop 16";
      "kwin"."Window to Desktop 17" = "none,,Window to Desktop 17";
      "kwin"."Window to Desktop 18" = "none,,Window to Desktop 18";
      "kwin"."Window to Desktop 19" = "none,,Window to Desktop 19";
      "kwin"."Window to Desktop 2" = "Meta+\",,Window to Desktop 2";
      "kwin"."Window to Desktop 20" = "none,,Window to Desktop 20";
      "kwin"."Window to Desktop 3" = "Meta+§,,Window to Desktop 3";
      "kwin"."Window to Desktop 4" = "Meta+$,,Window to Desktop 4";
      "kwin"."Window to Desktop 5" = "Meta+%,,Window to Desktop 5";
      "kwin"."Window to Desktop 6" = "Meta+&,,Window to Desktop 6";
      "kwin"."Window to Desktop 7" = "Meta+/,,Window to Desktop 7";
      "kwin"."Window to Desktop 8" = "Meta+(,,Window to Desktop 8";
      "kwin"."Window to Desktop 9" = "Meta+),,Window to Desktop 9";
      "kwin"."Window to Next Desktop" = "none,,Window to Next Desktop";
      "kwin"."Window to Next Screen" = "Meta+Shift+Right";
      "kwin"."Window to Previous Desktop" = "none,,Window to Previous Desktop";
      "kwin"."Window to Previous Screen" = "Meta+Shift+Left";
      "kwin"."Window to Screen 0" = "none,,Move Window to Screen 0";
      "kwin"."Window to Screen 1" = "none,,Move Window to Screen 1";
      "kwin"."Window to Screen 2" = "none,,Move Window to Screen 2";
      "kwin"."Window to Screen 3" = "none,,Move Window to Screen 3";
      "kwin"."Window to Screen 4" = "none,,Move Window to Screen 4";
      "kwin"."Window to Screen 5" = "none,,Move Window to Screen 5";
      "kwin"."Window to Screen 6" = "none,,Move Window to Screen 6";
      "kwin"."Window to Screen 7" = "none,,Move Window to Screen 7";
      "kwin"."disableInputCapture" = "Meta+Shift+Esc";
      "kwin"."view_actual_size" = "none,Meta+0,Zoom to Actual Size";
      "kwin"."view_zoom_in" = [
        "Meta++,Meta++"
        "Meta+=,Zoom In"
      ];
      "kwin"."view_zoom_out" = "Meta+-";
      "mediacontrol"."mediavolumedown" = "none,,Media volume down";
      "mediacontrol"."mediavolumeup" = "none,,Media volume up";
      "mediacontrol"."nextmedia" = "Media Next";
      "mediacontrol"."pausemedia" = "Media Pause";
      "mediacontrol"."playmedia" = "none,,Play media playback";
      "mediacontrol"."playpausemedia" = "Media Play";
      "mediacontrol"."previousmedia" = "Media Previous";
      "mediacontrol"."stopmedia" = "Media Stop";
      "org_kde_powerdevil"."Decrease Keyboard Brightness" = "Keyboard Brightness Down";
      "org_kde_powerdevil"."Decrease Screen Brightness" = "Monitor Brightness Down";
      "org_kde_powerdevil"."Decrease Screen Brightness Small" = "Shift+Monitor Brightness Down";
      "org_kde_powerdevil"."Hibernate" = "Hibernate";
      "org_kde_powerdevil"."Increase Keyboard Brightness" = "Keyboard Brightness Up";
      "org_kde_powerdevil"."Increase Screen Brightness" = "Monitor Brightness Up";
      "org_kde_powerdevil"."Increase Screen Brightness Small" = "Shift+Monitor Brightness Up";
      "org_kde_powerdevil"."PowerDown" = "Power Down";
      "org_kde_powerdevil"."PowerOff" = "Power Off";
      "org_kde_powerdevil"."Sleep" = "Sleep";
      "org_kde_powerdevil"."Toggle Keyboard Backlight" = "Keyboard Light On/Off";
      "org_kde_powerdevil"."Turn Off Screen" = [ ];
      "org_kde_powerdevil"."powerProfile" = [
        "Battery,Battery"
        "Meta+B,Switch Power Profile"
      ];
      "plasmashell"."activate application launcher" = [
        "Meta"
        "Alt+F1,Meta"
        "Alt+F1,Activate Application Launcher"
      ];
      "plasmashell"."activate task manager entry 1" = "none,Meta+1,Activate Task Manager Entry 1";
      "plasmashell"."activate task manager entry 10" = "none,,Activate Task Manager Entry 10";
      "plasmashell"."activate task manager entry 2" = "none,Meta+2,Activate Task Manager Entry 2";
      "plasmashell"."activate task manager entry 3" = "none,Meta+3,Activate Task Manager Entry 3";
      "plasmashell"."activate task manager entry 4" = "none,Meta+4,Activate Task Manager Entry 4";
      "plasmashell"."activate task manager entry 5" = "none,Meta+5,Activate Task Manager Entry 5";
      "plasmashell"."activate task manager entry 6" = "none,Meta+6,Activate Task Manager Entry 6";
      "plasmashell"."activate task manager entry 7" = "none,Meta+7,Activate Task Manager Entry 7";
      "plasmashell"."activate task manager entry 8" = "none,Meta+8,Activate Task Manager Entry 8";
      "plasmashell"."activate task manager entry 9" = "none,Meta+9,Activate Task Manager Entry 9";
      "plasmashell"."clear-history" = "none,,Clear Clipboard History";
      "plasmashell"."clipboard_action" = "Meta+Ctrl+X";
      "plasmashell"."cycle-panels" = "Meta+Alt+P";
      "plasmashell"."cycleNextAction" = "none,,Next History Item";
      "plasmashell"."cyclePrevAction" = "none,,Previous History Item";
      "plasmashell"."manage activities" = "none,Meta+Q,Show Activity Switcher";
      "plasmashell"."next activity" = "Meta+A,none,Walk through activities";
      "plasmashell"."previous activity" = "Meta+Shift+A,none,Walk through activities (Reverse)";
      "plasmashell"."repeat_action" = "none,,Manually Invoke Action on Current Clipboard";
      "plasmashell"."show dashboard" = "Ctrl+F12";
      "plasmashell"."show-barcode" = "none,,Show Barcode…";
      "plasmashell"."show-on-mouse-pos" = "Meta+V";
      "plasmashell"."stop current activity" = "Meta+S";
      "plasmashell"."switch to next activity" = "none,,Switch to Next Activity";
      "plasmashell"."switch to previous activity" = "none,,Switch to Previous Activity";
      "plasmashell"."toggle do not disturb" = "none,,Toggle do not disturb";
      "services/kitty.desktop"."_launch" = "Meta+Return";
      "services/org.kde.spectacle.desktop"."RectangularRegionScreenShot" = "Meta+Shift+S";
      "services/org.kde.spectacle.desktop"."_launch" = [ ];
      "services/zen-beta.desktop"."new-window" = "Meta+B";
    };
    configFile = {
      "baloofilerc"."General"."dbVersion" = 2;
      "baloofilerc"."General"."exclude filters" =
        "*~,*.part,*.o,*.la,*.lo,*.loT,*.moc,moc_*.cpp,qrc_*.cpp,ui_*.h,cmake_install.cmake,CMakeCache.txt,CTestTestfile.cmake,libtool,config.status,confdefs.h,autom4te,conftest,confstat,Makefile.am,*.gcode,.ninja_deps,.ninja_log,build.ninja,*.csproj,*.m4,*.rej,*.gmo,*.pc,*.omf,*.aux,*.tmp,*.po,*.vm*,*.nvram,*.rcore,*.swp,*.swap,lzo,litmain.sh,*.orig,.histfile.*,.xsession-errors*,*.map,*.so,*.a,*.db,*.qrc,*.ini,*.init,*.img,*.vdi,*.vbox*,vbox.log,*.qcow2,*.vmdk,*.vhd,*.vhdx,*.sql,*.sql.gz,*.ytdl,*.tfstate*,*.class,*.pyc,*.pyo,*.elc,*.qmlc,*.jsc,*.fastq,*.fq,*.gb,*.fasta,*.fna,*.gbff,*.faa,po,CVS,.svn,.git,_darcs,.bzr,.hg,CMakeFiles,CMakeTmp,CMakeTmpQmake,.moc,.obj,.pch,.uic,.npm,.yarn,.yarn-cache,__pycache__,node_modules,node_packages,nbproject,.terraform,.venv,venv,core-dumps,lost+found";
      "baloofilerc"."General"."exclude filters version" = 9;
      "baloofilerc"."General"."index hidden folders" = true;
      "dolphinrc"."DetailsMode"."ExpandableFolders" = false;
      "dolphinrc"."DetailsMode"."PreviewSize" = 32;
      "dolphinrc"."ExtractDialog"."1920x1200 screen: Height" = 600;
      "dolphinrc"."ExtractDialog"."1920x1200 screen: Width" = 1272;
      "dolphinrc"."General"."RememberOpenedTabs" = false;
      "dolphinrc"."General"."ViewPropsTimestamp" = "2025,3,29,12,14,16.283";
      "dolphinrc"."KFileDialog Settings"."Places Icons Auto-resize" = false;
      "dolphinrc"."KFileDialog Settings"."Places Icons Static Size" = 22;
      "dolphinrc"."MainWindow/Toolbar mainToolBar"."IconSize" = 16;
      "dolphinrc"."MainWindow/Toolbar mainToolBar"."ToolButtonStyle" = "IconOnly";
      "dolphinrc"."PreviewSettings"."Plugins" =
        "appimagethumbnail,audiothumbnail,blenderthumbnail,comicbookthumbnail,cursorthumbnail,djvuthumbnail,ebookthumbnail,exrthumbnail,directorythumbnail,fontthumbnail,imagethumbnail,jpegthumbnail,kraorathumbnail,windowsexethumbnail,windowsimagethumbnail,mobithumbnail,opendocumentthumbnail,gsthumbnail,rawthumbnail,svgthumbnail,ffmpegthumbs";
      "dolphinrc"."Toolbar mainToolBar"."IconSize" = 16;
      "dolphinrc"."Toolbar mainToolBar"."ToolButtonStyle" = "IconOnly";
      "kactivitymanagerdrc"."activities"."b783d9b4-8eb7-4b96-b973-afd016a4894b" = "Default";
      "kactivitymanagerdrc"."main"."currentActivity" = "b783d9b4-8eb7-4b96-b973-afd016a4894b";
      "kcminputrc"."Keyboard"."NumLock" = 0;
      "kcminputrc"."Libinput/1133/45081/Logitech Wireless Mouse MX Master 2S"."PointerAcceleration" =
        0.600;
      "kcminputrc"."Libinput/1739/52840/SYNA8019:00 06CB:CE68 Mouse"."PointerAcceleration" = 0.400;
      "kcminputrc"."Libinput/1739/52840/SYNA8019:00 06CB:CE68 Touchpad"."ClickMethod" = 2;
      "kcminputrc"."Libinput/1739/52840/SYNA8019:00 06CB:CE68 Touchpad"."NaturalScroll" = true;
      "kcminputrc"."Libinput/1739/52840/SYNA8019:00 06CB:CE68 Touchpad"."PointerAcceleration" = 0.2;
      "kcminputrc"."Libinput/1739/52840/SYNA8019:00 06CB:CE68 Touchpad"."PointerAccelerationProfile" = 2;
      "kcminputrc"."Libinput/1739/52840/SYNA8019:00 06CB:CE68 Touchpad"."ScrollFactor" = 0.5;
      "kcminputrc"."Libinput/1739/52840/SYNA8019:00 06CB:CE68 Touchpad"."TapToClick" = false;
      "kcminputrc"."Mouse"."cursorTheme" = "Bibata-Modern-Classic";
      "kded5rc"."Module-device_automounter"."autoload" = false;
      "kdeglobals"."General"."AccentColor" = "104,107,111";
      "kdeglobals"."General"."LastUsedCustomAccentColor" = "104,107,111";
      "kdeglobals"."General"."TerminalApplication" = "kitty";
      "kdeglobals"."General"."TerminalService" = "kitty.desktop";
      "kdeglobals"."General"."XftAntialias" = true;
      "kdeglobals"."General"."XftHintStyle" = "hintfull";
      "kdeglobals"."General"."XftSubPixel" = "none";
      "kdeglobals"."General"."font" = "SFRounded Nerd Font,12,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."menuFont" = "SFRounded Nerd Font,12,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."smallestReadableFont" =
        "SFRounded Nerd Font,10,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."General"."toolBarFont" = "SFRounded Nerd Font,12,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."Icons"."Theme" = "Papirus-Dark";
      "kdeglobals"."KDE"."AnimationDurationFactor" = 0.7071067811865475;
      "kdeglobals"."KDE"."SmoothScroll" = false;
      "kdeglobals"."KDE"."widgetStyle" = "Breeze";
      "kdeglobals"."KFileDialog Settings"."Allow Expansion" = false;
      "kdeglobals"."KFileDialog Settings"."Automatically select filename extension" = true;
      "kdeglobals"."KFileDialog Settings"."Breadcrumb Navigation" = true;
      "kdeglobals"."KFileDialog Settings"."Decoration position" = 2;
      "kdeglobals"."KFileDialog Settings"."LocationCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."PathCombo Completionmode" = 5;
      "kdeglobals"."KFileDialog Settings"."Show Bookmarks" = false;
      "kdeglobals"."KFileDialog Settings"."Show Full Path" = false;
      "kdeglobals"."KFileDialog Settings"."Show Inline Previews" = true;
      "kdeglobals"."KFileDialog Settings"."Show Preview" = false;
      "kdeglobals"."KFileDialog Settings"."Show Speedbar" = true;
      "kdeglobals"."KFileDialog Settings"."Show hidden files" = true;
      "kdeglobals"."KFileDialog Settings"."Sort by" = "Name";
      "kdeglobals"."KFileDialog Settings"."Sort directories first" = true;
      "kdeglobals"."KFileDialog Settings"."Sort hidden files last" = false;
      "kdeglobals"."KFileDialog Settings"."Sort reversed" = false;
      "kdeglobals"."KFileDialog Settings"."Speedbar Width" = 153;
      "kdeglobals"."KFileDialog Settings"."View Style" = "DetailTree";
      "kdeglobals"."PreviewSettings"."EnableRemoteFolderThumbnail" = false;
      "kdeglobals"."PreviewSettings"."MaximumRemoteSize" = 0;
      "kdeglobals"."Sounds"."Enable" = false;
      "kdeglobals"."WM"."activeBackground" = "14,14,14";
      "kdeglobals"."WM"."activeBlend" = "171,171,171";
      "kdeglobals"."WM"."activeFont" = "SFRounded Nerd Font,12,-1,5,400,0,0,0,0,0,0,0,0,0,0,1";
      "kdeglobals"."WM"."activeForeground" = "199,199,199";
      "kdeglobals"."WM"."inactiveBackground" = "66,66,66";
      "kdeglobals"."WM"."inactiveBlend" = "199,199,199";
      "kdeglobals"."WM"."inactiveForeground" = "199,199,199";
      "kiorc"."Confirmations"."ConfirmDelete" = true;
      "kiorc"."Confirmations"."ConfirmEmptyTrash" = true;
      "kiorc"."Confirmations"."ConfirmTrash" = false;
      "kiorc"."Executable scripts"."behaviourOnLaunch" = "alwaysAsk";
      "klaunchrc"."BusyCursorSettings"."Bouncing" = false;
      "klaunchrc"."FeedbackStyle"."BusyCursor" = false;
      "krunnerrc"."Plugins"."baloosearchEnabled" = true;
      "kscreenlockerrc"."Greeter/Wallpaper/org.kde.image/General"."Image" =
        "/home/martin/.config/nixcfg/home-manager/modules/backgrounds/nix-wallpaper-moonscape.png";
      "kscreenlockerrc"."Greeter/Wallpaper/org.kde.image/General"."PreviewImage" =
        "/home/martin/.config/nixcfg/home-manager/modules/backgrounds/nix-wallpaper-moonscape.png";
      "ksmserverrc"."General"."loginMode" = "emptySession";
      "ktrashrc"."\\/home\\/martin\\/.local\\/share\\/Trash"."Days" = 7;
      "ktrashrc"."\\/home\\/martin\\/.local\\/share\\/Trash"."LimitReachedAction" = 0;
      "ktrashrc"."\\/home\\/martin\\/.local\\/share\\/Trash"."Percent" = 10;
      "ktrashrc"."\\/home\\/martin\\/.local\\/share\\/Trash"."UseSizeLimit" = true;
      "ktrashrc"."\\/home\\/martin\\/.local\\/share\\/Trash"."UseTimeLimit" = false;
      "kwalletrc"."Wallet"."First Use" = false;
      "kwinrc"."Activities/LastVirtualDesktop"."b783d9b4-8eb7-4b96-b973-afd016a4894b" =
        "49a57c63-f616-4e62-a3ff-12d5c4e51552";
      "kwinrc"."Desktops"."Id_1" = "f26d3fc3-956b-4848-be6e-ac6dea8f43de";
      "kwinrc"."Desktops"."Id_10" = "b6235992-6831-413d-9b48-acfca2f17aff";
      "kwinrc"."Desktops"."Id_2" = "e8d412e2-09c2-4e4b-a003-92f8e56aed27";
      "kwinrc"."Desktops"."Id_3" = "49a57c63-f616-4e62-a3ff-12d5c4e51552";
      "kwinrc"."Desktops"."Id_4" = "244fb606-e13f-4369-9060-77d0b8596a68";
      "kwinrc"."Desktops"."Id_5" = "ea998a5d-ae4e-46fa-8fcf-dbdca5295afd";
      "kwinrc"."Desktops"."Id_6" = "34084e99-9031-434a-8f60-d523abed9dff";
      "kwinrc"."Desktops"."Id_7" = "5e9e5f8f-21a1-4a3c-898c-b73a0f76a2ac";
      "kwinrc"."Desktops"."Id_8" = "62c7fbb2-7a4f-4018-bd53-7ffc49e47a62";
      "kwinrc"."Desktops"."Id_9" = "56b31ffa-8809-4573-b8f3-62f4845877ae";
      "kwinrc"."Desktops"."Number" = 10;
      "kwinrc"."Desktops"."Rows" = 1;
      "kwinrc"."Effect-scale"."Duration" = 300;
      "kwinrc"."Effect-scale"."InScale" = 0.39999999999999997;
      "kwinrc"."Effect-scale"."OutScale" = 0.39999999999999997;
      "kwinrc"."Plugins"."diminactiveEnabled" = true;
      "kwinrc"."Plugins"."dimscreenEnabled" = true;
      "kwinrc"."Plugins"."hidecursorEnabled" = true;
      "kwinrc"."Plugins"."krohnkiteEnabled" = false;
      "kwinrc"."Plugins"."kzonesEnabled" = true;
      "kwinrc"."Plugins"."poloniumEnabled" = false;
      "kwinrc"."Plugins"."shakecursorEnabled" = false;
      "kwinrc"."Plugins"."sticky-window-snappingEnabled" = true;
      "kwinrc"."Plugins"."zoomEnabled" = false;
      "kwinrc"."Script-krohnkite"."enableSpiralLayout" = false;
      "kwinrc"."Script-krohnkite"."enableStackedLayout" = true;
      "kwinrc"."Script-krohnkite"."enableThreeColumnLayout" = false;
      "kwinrc"."Script-krohnkite"."monocleMaximize" = false;
      "kwinrc"."Script-krohnkite"."noTileBorder" = true;
      "kwinrc"."Script-krohnkite"."screenGapBottom" = 5;
      "kwinrc"."Script-krohnkite"."screenGapLeft" = 5;
      "kwinrc"."Script-krohnkite"."screenGapRight" = 5;
      "kwinrc"."Script-krohnkite"."screenGapTop" = 5;
      "kwinrc"."Script-krohnkite"."tileLayoutGap" = 5;
      "kwinrc"."Script-polonium"."Borders" = 0;
      "kwinrc"."Script-polonium"."EngineType" = 3;
      "kwinrc"."Script-polonium"."InsertionPoint" = 1;
      "kwinrc"."Tiling"."padding" = 4;
      "kwinrc"."Tiling/4c40b185-38ec-590b-9338-b879b1a6c41c"."tiles" =
        "{\"layoutDirection\":\"horizontal\",\"tiles\":[]}";
      "kwinrc"."Tiling/a74ad1a8-ef74-54d0-8416-b8a3397894b2"."tiles" =
        "{\"layoutDirection\":\"horizontal\",\"tiles\":[{\"width\":0.25},{\"width\":0.5},{\"width\":0.25}]}";
      "kwinrc"."Tiling/b5820530-e2a0-561b-a2a2-ec752c6aab47"."tiles" =
        "{\"layoutDirection\":\"horizontal\",\"tiles\":[]}";
      "kwinrc"."Windows"."DelayFocusInterval" = 0;
      "kwinrc"."Xwayland"."Scale" = 1.25;
      "kwinrc"."org.kde.kdecoration2"."BorderSize" = "None";
      "kwinrc"."org.kde.kdecoration2"."BorderSizeAuto" = false;
      "kwinrc"."org.kde.kdecoration2"."ButtonsOnLeft" = "M";
      "kwinrc"."org.kde.kdecoration2"."theme" = "Breeze";
      "plasma-localerc"."Formats"."LANG" = "en_GB.UTF-8";
      "plasma-localerc"."Formats"."LC_MONETARY" = "de_DE.UTF-8";
      "plasma-localerc"."Formats"."LC_TIME" = "de_DE.UTF-8";
      "plasmanotifyrc"."Applications/com.nextcloud.desktopclient.nextcloud"."Seen" = true;
      "plasmanotifyrc"."Applications/org.gnome.World.PikaBackup"."Seen" = true;
      "plasmarc"."Theme"."name" = "Win11OS-dark";
      "plasmarc"."Wallpapers"."usersWallpapers" =
        "/home/martin/.config/nixcfg/home-manager/modules/backgrounds/nix-wallpaper-moonscape.png";
      "spectaclerc"."ImageSave"."lastImageSaveLocation" =
        "file:///home/martin/Pictures/Screenshots/Screenshot_20250406_184625.png";
      "spectaclerc"."ImageSave"."translatedScreenshotsFolder" = "Screenshots";
      "spectaclerc"."VideoSave"."translatedScreencastsFolder" = "Screencasts";
    };
    dataFile = {

    };
  };
}
