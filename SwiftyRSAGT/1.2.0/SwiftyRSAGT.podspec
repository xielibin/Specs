Pod::Spec.new do |s|

  s.name         = "SwiftyRSAGT"
  s.version      = "1.2.0"
  s.summary      = "Public key RSA encryption in Swift."

  s.description  = <<-DESC
                   Encrypt with a RSA public key, decrypt with a RSA private key. Version -> Swift4
                   DESC

  s.homepage     = "https://github.com/TakeScoop/SwiftyRSA"
  s.license      = "MIT"
  s.author       = { "Scoop" => "ops@takescoop.com" }

  s.source       = { :git => "http://gt.gitlab.com/xielb/SwiftyRSAGT.git", :tag => s.version }
  s.source_files = "SwiftyRSA/*.{swift,m,h}"
  s.framework    = "Security"

  s.requires_arc = true
  
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.2'
  s.watchos.deployment_target = '2.2'

  s.dependency 'CryptoSwift', '~> 0.13.0'
  
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
end
