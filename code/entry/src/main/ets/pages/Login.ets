import router from '@ohos.router';

@Entry
@Component
struct Login {
  @State username:string = "";
  @State password:string = "";
  @State isSelect:boolean = false;
  build() {
    Column(){
      Text('青蛙影院')
        .fontSize(50)
        .margin({
          top:60,
          bottom:60
        })
      TextInput({
        placeholder:"请输入用户名"
      })
        .width('80%')
        .height(40)
        .margin({
          top:15,
          bottom:15
        })
        .onChange((value:string)=>{
          this.username = value
          console.info(`用户名为：${this.username}`)
        })
      TextInput({
        placeholder:"请输入密码"
      })
        .type(InputType.Password)
        .width('80%')
        .height(40)
        .margin({
          top:15,
          bottom:15
        })
        .onChange((value:string)=>{
          this.password = value
          console.info(`密码为：${this.password}`)
        })
      Button("Login")
        .width("80%")
        .height(40)
        .margin({
          top:15,
          bottom:15
        })

        .onClick((event?:ClickEvent)=>{
          if(!this.isSelect){
            AlertDialog.show({
              title:'提示',
              message:"请勾选隐私协议",
              autoCancel:true
            })
            return
          }
          if(this.username=="admin"&&this.password=="123456"){
            router.pushUrl({
              url:"pages/LoadingPage"
            })
          }else{
            AlertDialog.show({
              title:'提示',
              message:"用户名或密码错误",
              autoCancel:true
            })
          }
        })

      Row({space:6}){
        Checkbox()
          .select(this.isSelect)
          .onChange((value:boolean)=>{
            this.isSelect = value
          })
        Text("请勾选隐私协议").fontColor(Color.White)
      }
    }.width('100%')
    .height('100%')
    .backgroundImage($r('app.media.frog'))
    .backgroundImageSize(ImageSize.Cover)
  }
}
