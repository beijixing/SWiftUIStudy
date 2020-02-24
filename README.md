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

绘制路径和形状，使用Path 类型提供的方法，可以绘制直线，圆弧，及矩形等形状，GeometryReader类型可以用来动态的设置绘制的形状和路径所在视图的大小，以便复用自定义控件。

动画的使用，动画分为普通动画 Animation类型和 转场动画 AnyTransition，
视图的动画属性都可以在修改时添加上动画，如旋转、缩放，rotationEffect、scaleEffect。动画的使用也很简单，直接在视图对象之后使用点语法调用animation（：）修改器即可，对应的动画参数有spring、easein、easeout、easeinout。如果使用了@state 绑定变量，则可以使用 withAnimation { state 变量值改变 } 此时不用在视图后面使用点语法添加animation了，这是一种简化的写法。

转场动画的使用时在需要动画的view上使用点语法添加transition方法，推荐的做法是自定义转场动画，即扩展AnyTransition，添加自定义的转场动画，可根据需要定制插入和移除视图的动画，并使用asymmetric 方法将插入和移除动画组合起来返回，
extension AnyTransition {
    static var moveAndFade: AnyTransition {
        
        let insertion = AnyTransition.move(edge: .trailing)
            .combined(with: .opacity)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        
        return .asymmetric(insertion: insertion, removal: removal)
        
    }
}


组合动画可以对一个view或者小的组件同时添加多种动画效果，组成更复杂的动画，如：
extension Animation{
    static func ripple(index: Int) -> Animation {
        Animation.spring(dampingFraction: 0.5)
        .speed(2)
            .delay(0.03 * Double(index))
    }
}





