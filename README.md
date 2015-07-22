# IconFont 文字图标
 你说什么？这玩意有什么用？  

 如果你的公司连美工都没有！(真的有这样的公司！) 如果你是自己写一些app玩、  

 或者如果你的项目中图片过多，恰好又支持夜间模式，那么仅仅是一个按钮，你可能会需要如下 8 套图片  

 日间模式： @2x一张、@3x一张、normal一张、selected 或者 highlighted一张、  

 夜间模式： @2x一张、@3x一张、normal一张、selected 或者 highlighted一张、  

 因此共计8张图片...  

 当项目比较复杂，界面元素比较多！到处使用图片，即便是压缩图片，你的资源包依旧很大...  

 那么！你可以试试这个方法！兴许你会喜欢上它！  

 一些简单的按钮、Logo、等图标、从此告别图片。（整个项目做完，你会发现资源包会比以前小很多哦~）  

 并且你想要多大就可以多大，不需要@2x、@3x等图片来适配..  

 UIbutton、UILabel 等 均可使用！  

 
### 说多都是废话，看图便知
![看看淘宝的图标](http://photo.weibo.com/5587483347/photos/detail/photo_id/3867532896394985/album_id/3862680128634563) 
* 使用用法超级简单！请看下面！
![image](./1224·2.gif)

* 第1步：
  打开 [图标字体库1](http://www.fontello.com/) 
  或者 
       [图标字体库2](http://www.iconfont.cn/repositories/)
* 海量的图标，会有你所用到的！（如果没有你需要的，你还可以使用自定义的图标、比如你公司的logo等、都是可以的哦~）  

  你可以找到自己需要的图标，然后依次加入下载列表，点击右上角的 Download webFont 下载字体。  
  
  还可以做自己的svg来生成相对应的字体！（这里先不用这种方法）  
  
  下载完成后，找到font文件夹中的字体、iOS是支持ttf格式的字体、这里使用ttf格式的。  
  
* 将其字体导入你的项目中！还是看图吧！  

![(图1)]
(http://photo.weibo.com/5587483347/photos/detail/photo_id/3867523551472622/album_id/3862680128634563#3867523543118495) 
* 第2步：配置字体 没什么好说的，看图2吧！
![(图2)]
(http://photo.weibo.com/5587483347/photos/detail/photo_id/3867523551472622/album_id/3862680128634563) 
![(图3)]
* 第3步：Create a UIButton Category
  创建一个UIButton 的分类 添加一个设置字体大小的方法
```objc
// .h中
- (void)setTitleFontSize:(CGFloat)size;

// .m中
 - (void)setTitleFontSize:(CGFloat)size {
    self.titleLabel.font = [UIFont fontWithName:iconFontName size:size];
}
```
* 看图！
(http://photo.weibo.com/5587483347/photos/detail/photo_id/3867523551472622/album_id/3862680128634563#3867523555665435) 


#### Let's Go
```objc
 UIButton *setupBtn = [[UIButton alloc] init];
 setupBtn.frame = CGRectMake(50, 100, 44, 44);
 setupBtn.backgroundColor = [UIColor clearColor];
 // 按钮文字的大需用此方法设置。内部设置了字体
 [setupBtn setTitleFontSize:30];
 [setupBtn setTitleColor:UIColorFromRGB(62, 68, 79) forState:UIControlStateNormal];
 [setupBtn setTitle:setupFont forState:UIControlStateNormal];
 [setupBtn setTitleColor:UIColorFromRGB(248, 55, 10) forState:UIControlStateSelected];
 [setupBtn addTarget:self action:@selector(setupBtnClick:) forControlEvents:UIControlEventTouchUpInside];
 [self.view addSubview:_setupBtn];
```
Command + R 大功告成！

#### 联系方式  <br />
Q    Q：1363852560 <br />
Mail：1363852560@qq.com<br />
