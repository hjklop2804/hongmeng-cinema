import viewmodel from '../../viewmodel/MainViewModel'
import VideoBean from '../../bean/VideoBean'
import { playView } from './playView';

@Preview
@Component
export struct LookVideo {
  @State currentindex:number=2; // 当前显示swiper索引
  @State pageShow: boolean = false
  // 当前页面是否可见，仅对@Entry修饰的主页面PageVideo而言，子组件需要用@Watch监听该状态
  build() {
    Column() {
      Swiper() {
        ForEach(viewmodel.getAllVideos(), (item: VideoBean, index?: number) => {
          playView({
            index: $currentindex,
            pageShow:$pageShow,
            videoBean: item,
            barPosition: index
          });
        })
      }.index(this.currentindex)
      .width("100%")
      .height("100%")
      .indicator(false)
      .loop(false)
      .vertical(true)
      .onChange((index: number) => {
        this.currentindex = index;
      })
    }
  }
  // 当此页面可见时触发，仅@Entry修饰的自定义组件生效
  onPageShow(): void  {
    this.pageShow = true;
  }

  // 当此页面不可见时触发，仅@Entry修饰的自定义组件生效
  onPageHide(): void  {
    this.pageShow = false;
  }
}