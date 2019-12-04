Pod::Spec.new do |s|

    s.name         = "idcheckZoomAuth"
    s.version      = "8.0.6"
    s.summary      = "FaceTec's ZoOm iOS SDK"
    s.homepage     = "https://dev.zoomlogin.com"
    s.license      = { type: 'custom', text: 'ZoomAuthentication is Copyright 2018 FaceTec, Inc.  It may not be modified.' }
    s.author       = { "Gregory Perez" => "gperez@facetec.com" }

    s.platform     = :ios, "8.3"

    s.source       = { :http => "https://raw.githubusercontent.com/SumSubstance/KYC-iOS-Release/master/Deps/ZoomAuthSDK-#{s.version}.zip" }

    s.vendored_frameworks = "ZoomAuthentication.framework"

end
