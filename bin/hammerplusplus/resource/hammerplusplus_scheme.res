///////////////////////////////////////////////////////////
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
    //////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"OffWhite"			"221 221 221 255"
		"DullWhite"			"190 190 190 255"
		"Orange"			"255 155 0 255"
		"TransparentBlack"	"0 0 0 128"
		"Black"				"0 0 0 255"

		"Blank"				"0 0 0 0"
		
		"SteamLightGreen"	"157 194 80 255"
		"AchievementsLightGrey"		"79 79 79 255"
		"AchievementsDarkGrey"		"55 55 55 255"
		"AchievementsInactiveFG"	"130 130 130 255"
		
	    "GameDarkBrown"               "55 55 55 255"
	    "GameDarkBrownTransparent"    "55 55 55 190"
	    "GameTanBright"               "227 227 227 150"
	    "GameTanLight"                "188 188 188 150"
	    "GameTanMedium"               "121 121 121 150"
	    
	    "GameTanLightDark"            "80 80 80 90"
	    
	    "GameOrangeBright"            "156 82 33 255"
	    
	    "GameTextBright"              "236 236 236 150"
	    "GameTextLight"               "188 188 188 255"
	    "GameTextMedium"              "121 121 121 255"
	    "GameTextMediumDark"          "96 96 96 255"
	    "GameTextDull"                "131 131 131 255"

	    "QuickListBGDeselected"		"69 69 69 255" // funny
	    "QuickListBGSelected"               "131 131 131 150"
	    
	    // background colors
		"ControlBG"			"76 76 76 255"		// background color of controls
		"ControlDarkBG"		"90 90 90 255"		// darker background color; used for background of scrollbars
		"WindowBG"			"62 62 62 255"		// background color of text edit panes (chat, text entries, etc.)
		"SelectionBG"		"80 80 80 255"	// background color of any selected text or menu item
		"SelectionBG2"		"64 64 64 255"		// selection background in window w/o focus
		"ListBG"			"36 36 36 255"		// background of server browser, buddy list, etc.
	}
	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// scheme-specific colors
		Border.Bright					"GameTanLightDark"	// the lit side of a control
		Border.Dark						"GameTanLightDark"		// the dark/unlit side of a control
		Border.Selection				"BorderSelection"			// the additional border color for displaying the default/selected button

		Button.TextColor				"GameDarkBrown"
		Button.BgColor					"GameTanLight"
		Button.ArmedTextColor			"GameDarkBrown"
		Button.ArmedBgColor				"GameTanBright"
		Button.DepressedTextColor		"GameDarkBrown"
		Button.DepressedBgColor			"GameTanLight"	
		Button.FocusBorderColor			"TransparentBlack"
		
		CheckButton.TextColor			"GameTextBright"
		CheckButton.SelectedTextColor		"GameTextBright"
		CheckButton.BgColor				"ListBG"
		CheckButton.HighlightFgColor		"GameTextMedium"
		CheckButton.ArmedBgColor		"Blank"
		CheckButton.DepressedBgColor		"Blank"
		CheckButton.Border1  			"Border.Dark" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"GameTanBright"	// color of the check itself
		CheckButton.DisabledBgColor	    "ListBG"
		
		ComboBoxButton.ArrowColor		"GameTanLight"
		ComboBoxButton.ArmedArrowColor	"GameTanBright"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"
	
		Frame.TitleTextInsetX			16
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		Frame.BgColor					"GameDarkBrown"
		Frame.OutOfFocusBgColor			"GameDarkBrownTransparent"
		Frame.FocusTransitionEffectTime	"0.3"							// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.3"							// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"GameTanMedium"
		FrameGrip.Color2				"GameDarkBrown"
		FrameTitleButton.FgColor		"GameTanBright"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 192"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.Font			"DefaultLarge"
		FrameTitleBar.TextColor			"GameTanBright"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"GameTanLight"
		FrameTitleBar.DisabledBgColor	"Blank"
		
		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"
		
		Label.TextDullColor				"GameTextDull"
		Label.TextColor					"GameTextBright"
		Label.TextBrightColor			"GameTextBright"
		Label.SelectedTextColor			"GameTextBright"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"GameTextDull"	
		Label.DisabledFgColor2			"Blank"	
		
		ListPanel.TextColor					"GameTextBright"
		ListPanel.TextBgColor				"Blank"
		ListPanel.BgColor					"ListBG"
		ListPanel.SelectedTextColor			"Black"
		ListPanel.SelectedBgColor			"SelectionBG"
		ListPanel.SelectedOutOfFocusBgColor	"SelectionBG2"
		ListPanel.EmptyListInfoTextColor	"OffWhite"
	
		Menu.TextColor					"White"
		Menu.ArmedTextColor				"Black"
		Menu.TextInset					"6"
		Menu.FgColor			"GameTextLight"
		Menu.BgColor			"ListBG"
		Menu.ArmedFgColor		"GameTextBright"
		Menu.ArmedBgColor		"GameOrangeBright"
		Menu.DividerColor		"BorderDark"
		
		Panel.FgColor					"DullWhite"
		Panel.BgColor					"GameDarkBrown"		
		
		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"OffWhite"
		PropertySheet.SelectedTextColor	"White"
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another
		
		RadioButton.TextColor		"GameTextBright"
		RadioButton.SelectedTextColor	"GameTextBright"
		RadioButton.ArmedTextColor	"GameTextMedium"
		
		RichText.TextColor				"OffWhite"
		RichText.BgColor				"TransparentBlack"
		RichText.SelectedTextColor		"Black"
		RichText.SelectedBgColor		"Orange"
		
		ScrollBar.Wide					17
	
		ScrollBarButton.FgColor				"GameDarkBrown"
		ScrollBarButton.BgColor				"GameTanLight"
		ScrollBarButton.ArmedFgColor		"GameDarkBrown"
		ScrollBarButton.ArmedBgColor		"GameTanBright"
		ScrollBarButton.DepressedFgColor	"GameDarkBrown"
		ScrollBarButton.DepressedBgColor	"GameTanLight"

		ScrollBarSlider.BgColor				"GameTanMedium"		// this isn't really used
		ScrollBarSlider.FgColor				"GameTanLight"		// handle with which the slider is grabbed
		
		SectionedListPanel.HeaderTextColor	"White"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Black"
		SectionedListPanel.TextColor		"DullWhite"
		SectionedListPanel.BrightTextColor	"White"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"Black"
		SectionedListPanel.SelectedBgColor				"Orange"
		SectionedListPanel.OutOfFocusSelectedTextColor	"Black"
		SectionedListPanel.OutOfFocusSelectedBgColor	"255 155 0 128"
		
		Slider.NobColor				"GameTanLight"		
		Slider.TextColor			"GameTextBright"
		Slider.TrackColor			"ListBG"
		Slider.DisabledTextColor1	"GameTextMediumDark"
        Slider.DisabledTextColor2	"Blank"
		
		TextEntry.TextColor			        "GameTextBright"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"OffWhite"
		TextEntry.DisabledTextColor	        "GameTextMedium"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"Black"
		TextEntry.SelectedBgColor	        "GameOrangeBright"
		TextEntry.OutOfFocusSelectedBgColor	"255 155 0 128"
		TextEntry.FocusEdgeColor	"0 0 0 196"
		
		ToggleButton.SelectedTextColor	"GameTextBright"
		
		Tooltip.TextColor			"0 0 0 196"
		Tooltip.BgColor				"Orange"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors	
		MainMenu.TextColor			"TanLight"				
		MainMenu.ArmedTextColor		"117 107 94 255"	
		MainMenu.DepressedTextColor	"192 186 80 255"
		MainMenu.MenuItemHeight		"30"				
		MainMenu.Inset				"32"	
		MainMenu.Backdrop			"0 0 0 156"

		Console.TextColor			"OffWhite"
		Console.DevTextColor		"White"

		NewGame.TextColor			"White"
		NewGame.FillColor			"0 0 0 255"
		NewGame.SelectionColor		"Orange"			
		NewGame.DisabledColor		"128 128 128 196"

		"QuickListBGDeselected"		"AchievementsDarkGrey"
	 	"QuickListBGSelected"           "AchievementsLightGrey"
	}
	
	//////////////////////// BITMAP FONT FILES /////////////////////////////
	//
	// Bitmap Fonts are ****VERY*** expensive static memory resources so they are purposely sparse
	BitmapFontFiles
	{
		// UI buttons, custom font, (256x64)
		"Buttons"		"materials/vgui/fonts/buttons_32.vbf"
	}
	
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		// fonts are used in order that they are listed
		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"10"
				"weight"	"500"
				"antialias" "1"
			}
		}
		// fonts are used in order that they are listed
		"DebugFixedSmall"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"7"
				"weight"	"500"
				"antialias" "1"
			}
		}
		"DefaultFixedOutline"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Verdana" [$POSIX]
				"tall"		"14" [$LINUX]
				"tall"		"11" [$OSX]
				"tall"		 "10"
				"tall_lodef" "15"
				"tall_hidef" "20"
				"weight"	 "0"
				"outline"	 "1"
			}
		}
		"Default"
		{
			"1"
			{
				"name"		"Verdana" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"16"
				"weight"	"500"
				"antialias" "1"
			}
		}
		"DefaultShadow"
		{
			"1"
			{
				"name"		"Verdana" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"16"
				"weight"	"200"
				"antialias" "1"
			}
		}	
		"DefaultBold"
		{
			"1"
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana Bold" [$POSIX]
				"tall"		"16"
				"weight"	"1000"
			}
		}
		"DefaultUnderline"
		{
			"1"
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"16"
				"weight"	"500"
				"underline" "1"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"12" [!$POSIX]
				"tall"		"13" [$POSIX]
				"weight"	"0"
			}
		}
		"DefaultSmallDropShadow"
		{
			"1"
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"13"
				"weight"	"0"
				"dropshadow" "1"
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"12"
				"weight"	"0"
			}
		}

		"DefaultLarge"
		{
			"1"
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"18"
				"weight"	"0"
			}
		}
		"UiBold"
		{
			"1"	[$WIN32]
			{
				"name"		"Tahoma" [!$POSIX]
				"name"		"Verdana" [$POSIX]
				"tall"		"12"
				"weight"	"1000"
			}
		}
		"MenuLarge"
		{
			"1"	[$POSIX]
			{
				"name"		"Helvetica Bold"
				"tall"		"20"
				"antialias" "1"
			}
			"1"	[$WIN32]
			{
				"name"		"Verdana" 
				"tall"		"16" 
				"weight"	"600"
				"antialias" "1"
			}
		}
		"AchievementTitleFont"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"1200"
				"antialias" "1"
				"outline" "1"
			}
		}
		
		"AchievementTitleFontSmaller"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"18"
				"weight"	"1200"
				"antialias" "1"
				//"outline" "1"
			}
		}
		
		
		"AchievementDescriptionFont"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"15"
				"weight"	"1200"
				"antialias" "1"
				"outline" "1"
				"yres"		"0 480"
			}
			"2"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"1200"
				"antialias" "1"
				"outline" "1"
				"yres"	 "481 10000"
			}
		}
		
		"ConsoleText"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Verdana" [$POSIX]
				"tall"		"11" [$OSX]
				"tall"		"14" [$LINUX]
				"tall"		"10"
				"weight"	"500"
			}
		}

		// this is the symbol font
		"Marlett"
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"14"
				"weight"	"0"
				"symbol"	"1"
			}
		}

		"Trebuchet24"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"24"
				"weight"	"900"
			}
		}

		"Trebuchet20"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"20"
				"weight"	"900"
			}
		}

		"Trebuchet18"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"18"
				"weight"	"900"
			}
		}

		// HUD numbers
		// We use multiple fonts to 'pulse' them in the HUD, hence the need for many of near size
		"HUDNumber"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"40"
				"weight"	"900"
			}
		}
		"HUDNumber1"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"41"
				"weight"	"900"
			}
		}
		"HUDNumber2"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"42"
				"weight"	"900"
			}
		}
		"HUDNumber3"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"43"
				"weight"	"900"
			}
		}
		"HUDNumber4"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"44"
				"weight"	"900"
			}
		}
		"HUDNumber5"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"45"
				"weight"	"900"
			}
		}
		"DefaultFixed"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Verdana" [$POSIX]
				"tall"		"11" [$POSIX]
				"tall"		"10"
				"weight"	"0"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		"DefaultFixedDropShadow"
		{
			"1"
			{
				"name"		 "Lucida Console" [$WINDOWS]
				"name"		 "Verdana" [$OSX]
				"name"		 "Courier" [$LINUX]
				"tall"		"14" [$LINUX]
				"tall"		"11" [$POSIX]
				"tall"		"10"
				"weight"	"0"
				"dropshadow" "1"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}
	}
	
	// describes all the border types
	Borders
	{
		BaseBorder		DepressedBorder
		ButtonBorder	RaisedBorder
		ComboBoxBorder	DepressedBorder
		MenuBorder		RaisedBorder
		BrowserBorder	DepressedBorder
		PropertySheetBorder	RaisedBorder

		FrameBorder
		{
			// rounded corners for frames
			"backgroundtype" "2"
		}

		DepressedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		RaisedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		
		TitleButtonBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDisabledBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDepressedBorder
		{
			"backgroundtype" "0"
		}

		ScrollBarButtonBorder
		{
			"inset" "2 2 0 0" [!$OSX]
			"inset" "-3 2 0 0" [$OSX]
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		
		ScrollBarButtonDepressedBorder
		{
			"inset" "2 2 0 0" [!$OSX]
			"inset" "-3 2 0 0" [$OSX]
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		TabBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

		}

		TabActiveBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		// this is the border used for default buttons (the button that gets pressed when you hit enter)
		ButtonKeyFocusBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}
			Top
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}
			Right
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		ButtonDepressedBorder
		{
			"inset" "2 1 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
	}
	
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles
	{
		"3"		"resource/marlett.ttf"
	}
}
