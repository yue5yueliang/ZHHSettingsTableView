Pod::Spec.new do |s|
  # 基本信息
  s.name             = 'ZHHSettingsTableView'
  s.version          = '0.0.1'
  s.summary          = '一个可自定义的静态 TableView 组件，适用于设置页和配置页面。'
  # 详细描述（尽量简洁明了，突出用途和亮点）
  s.description      = <<-DESC
ZHHSettingsTableView 是一个用于创建静态配置页面（如设置界面、消息设置界面等）的 TableView 组件。
它支持自定义 Cell，方便开发者快速构建通用的静态页面布局。
  DESC

  # 主页地址（确保 GitHub 仓库存在）
  s.homepage         = 'https://github.com/yue5yueliang/ZHHSettingsTableView'
  
  # 开源协议
  s.license          = { :type => 'MIT', :file => 'LICENSE' }

  # 作者信息
  s.author           = { '桃色三岁' => '136769890@qq.com' }

  # 源码地址（确保 GitHub 仓库和对应 tag 存在）
  s.source           = { :git => 'https://github.com/yue5yueliang/ZHHSettingsTableView.git', :tag => s.version.to_s }

  # 支持的 iOS 版本
  s.ios.deployment_target = '13.0'

  # 代码文件（**表示所有子目录）
  s.source_files = 'ZHHSettingsTableView/Classes/**/*'

  # 资源文件（如果有图片、xib 需要打包，可以启用）
  # s.resource_bundles = {
  #   'ZHHSettingsTableView' => ['ZHHSettingsTableView/Assets/*.png']
  # }

  # 公开的头文件（如果有特定的 .h 文件需要公开）
  # s.public_header_files = 'ZHHSettingsTableView/Classes/**/*.h'

  # 依赖的框架（如果有额外的依赖，可以在这里添加）
  # s.frameworks = 'UIKit', 'Foundation'

  # 依赖的第三方库（如果有，取消注释并添加）
  # s.dependency 'ZHHAnneKit'
end
