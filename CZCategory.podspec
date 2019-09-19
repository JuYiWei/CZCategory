
Pod::Spec.new do |s|

  s.name         = "CZCategory"
  s.version      = "0.0.6"
  s.summary      = "cz self Category"
  s.description  = "fix macro;new function"
  s.homepage     = "https://github.com/JuYiWei/CZCategory"
  s.license      = "MIT"
  s.author       = { "juyw" => "757832801@qq.com" }
  s.platform     = :ios, "9.0"

# 资源
  s.source       = { :git => "https://github.com/JuYiWei/CZCategory.git", :tag => "#{s.version}" }


  # s.source_files  = "CZCategory/CZCategory/Category/*.{h,m}"
  s.subspec 'UIKit' do |ss1|
    ss1.source_files  = "CZCategory/CZCategory/Category/UIKit/*.{h,m}"
  end

  s.subspec 'Foundation' do |ss2|
    ss2.source_files  = "CZCategory/CZCategory/Category/Foundation/*.{h,m}"
  end


# 排除资源
  # s.exclude_files = "Classes/Exclude"

# 图片
  #s.resources = "CZLibrary/CZLibrary/Lbirary/Assets/*.png"
  

# ui
  # s.dependency 'Masonry', '~> 1.0'
  # s.dependency 'SDWebImage', '~> 4.0'
  # s.dependency 'SVProgressHUD', '~> 2.0'
  # s.dependency 'MBProgressHUD', '~> 1.1'
  # s.dependency 'MJRefresh', '~> 3.0'
  # s.dependency 'DZNEmptyDataSet', '~> 1.8'

# network
  # s.dependency 'AFNetworking', '~> 3.0'

# tool
  # s.dependency 'MJExtension', '~>3.0'
  # s.dependency 'FMDB', '~>2.0'
  # s.dependency 'YYCache', '~>1.0'
  # s.dependency 'IQKeyboardManager', '~>6.0'
  #s.dependency 'CocoaLumberjack', '~>3.4'

# 友盟
#   s.dependency 'UMCCommon', '~> 1.5'
#   s.dependency 'UMCSecurityPlugins', '~> 1.0'
#   s.dependency 'UMCCommonLog', '~> 1.0'
#   s.dependency 'UMCAnalytics', '~> 5.5'
#   s.dependency 'UMCPush', '~> 3.2'
#   s.dependency 'UMCShare/UI', '~> 6.9.4'
#   s.dependency 'UMCShare/Social/ReducedWeChat', '~> 6.9.4'
#   s.dependency 'UMCShare/Social/ReducedQQ', '~> 6.9.4'


  s.requires_arc = true

end
