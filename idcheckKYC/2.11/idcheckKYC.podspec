Pod::Spec.new do |s|

    s.name              = 'idcheckKYC'
    s.version           = '2.11'
    s.summary           = 'WEBPAY Mobile SDK'
    s.authors           = 'WEBPAY'
    s.homepage          = 'https://webpay.by/'
    s.platform          = :ios
    s.source            = { :http => "https://raw.githubusercontent.com/WebpayDev/iOSMobileSDK/master/#{s.version}/idcheckKYC.zip" }

    s.ios.deployment_target = '9.3'
    s.default_subspec = 'Default'
    
    s.subspec 'Default' do |s|        
        s.dependency 'idcheckKYC/Bitcode'
        #s.dependency 'idcheckKYC/DocumentTracker'
    end
    
    s.subspec 'Bitcode' do |s|
        s.dependency 'idcheckKYC/Core'
        s.dependency 'idcheckKYC/Liveness3D'
        #s.dependency 'idcheckKYC/FaceTracker'
    end
    
    s.subspec 'Core' do |s|
        s.ios.vendored_frameworks = 'SumSubstanceKYC.framework'
        
        s.ios.frameworks = 'Foundation', 'CoreData', 'Accelerate', 'AVFoundation', 'CoreMedia'
        
        s.dependency 'PocketSocket'
        s.dependency 'ReactiveObjC'
        s.dependency 'Reachability'
        s.dependency 'PocketSVG'
        s.dependency 'YYText'
        s.dependency 'RestKit', '>= 0.27.3'
        s.dependency 'SDWebImage'
    end
    
    s.subspec 'DocumentTracker' do |s|
        s.ios.vendored_frameworks = 'SumSubstanceKYC_DocumentTracker.framework'
        s.dependency 'idcheckKYC/Core'
    end
    
    s.subspec 'FaceTracker' do |s|
        s.ios.vendored_frameworks = 'SumSubstanceKYC_FaceTracker.framework'
        s.dependency 'idcheckKYC/Core'
    end
    
    s.subspec 'Liveness3D' do |s|
        s.ios.vendored_frameworks = 'SumSubstanceKYC_Liveness3D.framework'
        s.dependency 'idcheckKYC/Core'
        s.dependency 'idcheckZoomAuth', '~> 8.0.6'
    end
end
