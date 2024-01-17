#
#  Be sure to run `pod spec lint IgorCoreSDKTest.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    # -------- Spec Metadata ------------------------------------------------ #
    #
    #  These will help people to find your library, and whilst it
    #  can feel like a chore to fill in it's definitely to your advantage. The
    #  summary should be tweet-length, and the description more in depth.
    #
  
    spec.name         = "AccountProtection"
    spec.version      = "0.0.16"
    spec.summary      = "Account protection is a cloud service embedded into web and mobile apps to help enterprises confidently welcome trusted customers and keep the bad people out."
    spec.homepage     = "https://www.transmitsecurity.co.il"
  
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    spec.description  = <<-DESC
                    Account protection is a cloud service embedded into web and mobile apps to help enterprises confidently welcome trusted customers and keep the bad people out. Account protection detects risk in customer interactions on digital channels, and enables informed identity and trust decisions across the consumer experience. This is done by seamlessly monitoring user interactions across multiple channels in real-time and executing a dynamic risk engine that continuously assesses risk, challenges risky users, and elevates trust. This is aimed at reducing unauthorized access while keeping a frictionless experience and low false-positive rates.
                     DESC
  
    # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  
  
    # -----  Spec License  ------------------------------------------------ #
    #
    #  Licensing your code is important. See https://choosealicense.com for more info.
    #  CocoaPods will detect a license file if there is a named LICENSE*
    #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
    #
  
    # spec.license      = "MIT (example)"
    # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
      spec.license = { :type => 'Apache-2.0', :file => 'LICENSE' }
  
    # ----- Author Metadata  ------------------------------------------------ #
    #
    #  Specify the authors of the library, with email addresses. Email addresses
    #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
    #  accepts just a name if you'd rather not provide an email address.
    #
    #  Specify a social_media_url where others can refer to, for example a twitter
    #  profile URL.
    #
  
    spec.author             = { "Transmit Security LTD." => "info@transmitsecurity.com" }
    # spec.authors            = { "Transmit Security LTD." => "@transmitsecurity.com" }
    # spec.social_media_url   = "https://twitter.com/TransmitSecurity"
  
    # ----- Platform Specifics ------------------------------------------------ #
    #
    #  If this Pod runs only on iOS or OS X, then specify the platform and
    #  the deployment target. You can optionally include the target after the platform.
    #
  
    # spec.platform     = :ios
      spec.platform     = :ios, "13.0"
      spec.ios.deployment_target  = '13.0'
      spec.swift_versions = "5.5"
    #  When using multiple platforms
    # spec.ios.deployment_target = "5.0"
    # spec.osx.deployment_target = "10.7"
    # spec.watchos.deployment_target = "2.0"
    # spec.tvos.deployment_target = "9.0"
  
  
    # ----- Source Location ------------------------------------------------ #
    #
    #  Specify the location from where the source should be retrieved.
    #  Supports git, hg, bzr, svn and HTTP.
    #
  
    spec.source       = { :git => "https://github.com/TransmitSecurity/accountprotection-ios-sdk", :tag => "#{spec.version}" }
  
  
    # ----- Source Code ------------------------------------------------ #
    #
    #  CocoaPods is smart about how it includes source code. For source files
    #  giving a folder will include any swift, h, m, mm, c & cpp files.
    #  For header files it will include any header in the folder.
    #  Not including the public_header_files will make all headers public.
    #
  
    #spec.source_files  = "Classes", "Classes/**/*.{h,m}"
    #spec.exclude_files = "Classes/Exclude"
    #spec.public_header_files = "Classes/**/*.h"
  
    spec.vendored_frameworks = "Sources/AccountProtection.xcframework*"
  
  
    # ----- Resources ------------------------------------------------ #
    #
    #  A list of resources included with the Pod. These are copied into the
    #  target bundle with a build phase script. Anything else will be cleaned.
    #  You can preserve files from being cleaned, please don't preserve
    #  non-essential files like tests, examples and documentation.
    #
  
    # spec.resource  = "icon.png"
    # spec.resources = "Resources/*.png"
  
    # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"
  
  
    # ----- Project Linking ------------------------------------------------ #
    #
    #  Link your library with frameworks, or libraries. Libraries do not include
    #  the lib prefix of their name.
    #
  
    # spec.framework  = "SomeFramework"
    # spec.frameworks = "SomeFramework", "AnotherFramework"
  
    # spec.library   = "iconv"
    # spec.libraries = "iconv", "xml2"
  
  
    # ----- Project Settings ------------------------------------------------ #
    #
    #  If your library depends on compiler flags you can set them in the xcconfig hash
    #  where they will only apply to your library. If you depend on other Podspecs
    #  you can include multiple dependencies to ensure it works.
  
    # spec.requires_arc = true
  
    # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
    spec.dependency "TSCoreSDK", "~> 1.0.18"

    spec.pod_target_xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
    }
    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  end
