import VideoBean from '../../bean/VideoBean'
@Component
export struct playView{
  //创建VideoBean的对象  这里的“！”表示不为null
  @State videoBean:VideoBean = null!;
  //创建一个视频控制器对象
  private videoController:VideoController = new VideoController();
  //视频滑动播放索引  对应后期的swiper组件
  @State barPosition:number = 0;
  //当前播放视频的索引 希望滑动视频的时候检测到索引的变化
  @Link @Watch("needPageShow") index:number;
  //监听父组件的page状态变化
  @Link @Watch("needPageShow") pageShow:boolean;
  //定义一个变量用来更改视频的播放状态  0表示停止播放stop   1表示开始播放start  2表示暂停播放pause
  @State private playState:number = 0;
  //视频是否可见
  private isShow:boolean = false;
  build() {
    Stack({alignContent:Alignment.End}){
       //视频组件
       Video({
         src:this.videoBean.src,
         controller:this.videoController
       }).width('100%')
         .height('40%')
         .autoPlay(this.barPosition ==this.index?true:false)
         .muted(false)
         .controls(true)
         .onFinish(()=>{
           this.index++
         })
      //头像，点赞，评论，转发列表
      Column(){
        //头像
        Image($r('app.media.frog_head_pic'))
          .width(50).height(50).borderRadius(25).borderWidth(1)
        //点赞
        Column({space:5}){
          Image($r('app.media.like1'))
            .width(40).height(40)
          Text(this.videoBean.likeCount+'').fontColor(Color.White)
        }.margin({top:20})
        //评论
        Column({space:5}){
          Image($r('app.media.comment'))
            .width(40).height(40)
          Text(this.videoBean.commentCount+'').fontColor(Color.White)
        }.margin({top:20})
        //转发
        Column({space:5}){
          Image($r('app.media.share1'))
            .width(40).height(40)
          Text(this.videoBean.shareCount+'').fontColor(Color.White)
        }.margin({top:20})
      }.width('20%')
       .padding({right:10})
       .alignItems(HorizontalAlign.End)
      //视频描述信息
      Column(){
         Text("@"+this.videoBean.author).fontColor(Color.White)
         Text(this.videoBean.title).fontColor(Color.White)
         Text(this.videoBean.desc).fontColor(Color.White)
      }
      .width('100%')
      .height('30%')
      .alignItems(HorizontalAlign.Start)
      .offset({y:"40%"})
    }.backgroundColor(Color.Black)
  }
  //自定义函数，监听页面的状态  用做后期改变
  onPageShow(): void {
    if(this.playState != 1){
       this.playState = 1;
       this.videoController.start(); //视频开始播放
    }
  }
  onPageSwiperHide(){
    if(this.playState != 2){
      this.playState = 2;
      this.videoController.stop(); //视频停止播放
    }
  }
  onPageHide(): void {
    if(this.playState != 0){
      this.playState = 0;
      this.videoController.pause(); //视频暂停播放
    }
  }
  //监听页面的各种操作，触发上边写的两个自定义函数来改变视频的播放状态
  needPageShow(){
    //当加载页面后  当页面可见后触发
    if(this.pageShow){
       //判断视频的下标位置是否和swiper对应  是否相同
      if(this.barPosition==this.index){
         this.isShow = true;
         this.onPageShow();
      }else{
        if(this.isShow){
          this.isShow = false;
          this.onPageSwiperHide()
        }
      }
    }else{
       if(this.barPosition==this.index){
         if(this.isShow){
           this.isShow = false;
           this.onPageHide();
         }
       }
    }
  }
}