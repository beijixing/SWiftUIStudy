# SWiftUIStudy
SwiftUI自定义View

SwiftUI与UIKitView嵌套使用时要实现UIViewRepresentable协议的两个方法makeUIView 和 updateUIView

SwiftUI边距设置 .offset(y:-130) .padding(.bottom, -130)

Swift页面忽略状态栏的高度 edgesIgnoringSafeArea(.top)

空白区域填充  Spacer()

垂直布局VStack，水平布局HStack

List控件的使用,ForEatch,Group

自定义视图传参,不同页面之间传参 

页面之间的导航 NavigationLink、NavigationView，设置导航栏标题 navigationBarTitle

ForEach创建多个设备视图预览，previewDevice、previewDisplayName。

@State 是一种绑定关系， 理解为值和值的改变方式。可以传递到子视图中使用，当@State 修饰的变量值改变的时候，页面会自动刷新

@EnvironmentObject 环境变量，类似全年局变量，可以储存用户数据，能从一个视图传递到所有的子视图，子视图都可以读写变量的值，变量在一个页面改变后，当返回到其他页面时，当前页面会根据最新的值来刷新页面显示， @EnvironmentObject 修饰的变量 要遵循ObservableObject协议 







