import router from '@ohos.router';
@Entry
@Component
struct LoadingPage {
  build() {
    Column(){
      Text("正在登录...")
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .margin({
          top:50
        })
      LoadingProgress()
        .width('50%')
        .height('50%')
        .color(Color.Blue)
    }.width('100%').height('100%')
  }
  onPageShow() {
    setTimeout(()=>{
      router.pushUrl({
        url:"pages/Index"
      })
    },5000)
  }
}
