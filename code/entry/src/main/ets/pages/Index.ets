import {Home} from './home/Home'
import {Movie} from './movie/Movie'
import {My} from './my/My'
import {LookVideo} from './videos/LookVideo'
@Entry
@Component
struct Index {
  @State currentIndex:number = 0
  tabController:TabsController = new TabsController();
  @Builder
  TabBuilder(title:string,index:number,selectImg:Resource,normalImg:Resource){
    Column(){
      Image(this.currentIndex==index?selectImg:normalImg)
        .width(25)
        .height(25)
      Text(title)
        .fontColor(this.currentIndex==index?"#ff6700":"#ff7a7a7a")
        .fontSize(14)
    }.onClick(()=>{
      this.currentIndex = index
      this.tabController.changeIndex(index)
    })
  }
  build() {
    Tabs({barPosition:BarPosition.End,controller:this.tabController}){
      TabContent(){
        Home();
      }.backgroundColor("#fff5f4f4")
      .tabBar(this.TabBuilder("首页",0,$r("app.media.home_1"),$r("app.media.home_0")))

      TabContent(){
        Movie();
      }.backgroundColor("#fff5f4f4")
      .tabBar(this.TabBuilder("影院",1,$r("app.media.movie_1"),$r("app.media.movie_0")))

      TabContent(){
        LookVideo();
      }.backgroundColor("#fff5f4f4")
      .tabBar(this.TabBuilder("抢先看",2,$r("app.media.play_1"),$r("app.media.play_0")))

      TabContent(){
        My();
      }.backgroundColor("#fff5f4f4")
      .tabBar(this.TabBuilder("个人中心",3,$r("app.media.me_1"),$r("app.media.me_0")))
    }
  }
}
