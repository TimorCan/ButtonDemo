# ButtonDemo
button重复点击问题
[http://www.jianshu.com/p/7bca987976bd](参考链接)
##使用方式
>首先导入#import "UIButton+FixMutiClick.h"
```

>UIButton * button = [[UIButton alloc]init];
>button.zc_acceptEvenInterval = 1; //时间间隔
>button.frame = CGRectMake(20, 20, 40, 20);
>button.backgroundColor = [UIColor redColor];
>[button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
>[self.view addSubview:button];



>- (void)buttonClick:(id)sender
>{
>NSLog(@"点击了button");
>}

```
