import ItemBean from '../../bean/ItemBean'
import viewmodel from '../../viewmodel/MainViewModel'
import MovieBean from 'e:/huawei/homework/homework/entry/src/main/ets/bean/MovieBean'
import {MainViewModel} from 'e:/huawei/homework/homework/entry/src/main/ets/viewmodel/MainViewModel'
import  Moviemodel from '../../viewmodel/MainViewModel'
import { Movie } from '../movie/Movie'
import { playView } from '../videos/playView'
@Entry
@Component
export struct Home{
  build() {
    Column({space:15}){
        Column(){
          Text("首页")
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
            .margin({ top:'10' })
        }.width('100%').height(40).backgroundColor("#F1F3F5").alignItems(HorizontalAlign.Start)

        Column(){
          Swiper() {
            ForEach(viewmodel.getSwiperImages(),(item:Resource,index?:number)=>{
              Image(item)
            },(item:Resource) => item.toString())
          }.autoPlay(true).borderRadius(15)
        }.width('90%')

      Flex({ wrap: FlexWrap.Wrap}){
      ForEach(viewmodel.getItemBeanData(), (item: ItemBean, index?: number) => {
        Column({


        }) {
          Image(item.image).width(20).height(20)
          Text(item.name)

        }.padding('10px 10px 10px 10px')
      })}.height(120).width('90%').backgroundColor('white').borderRadius(10).padding({left:10})


        Column(){
          Text("热门电影")
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
        }.width('100%').height(30).backgroundColor("#F1F3F5").alignItems(HorizontalAlign.Start)

        Flex({ wrap: FlexWrap.Wrap}){
          ForEach(viewmodel.getHotMovieBeanData(), (movie: MovieBean, index?: number) => {
            Column({

            }) {
              Image(movie.image).height(150).width(85).borderRadius(10)
              Text(movie.name)
              Button("预定").height('30')
            }.padding('10px 10px 10px 20px')
          })
        }.height(400).width('90%').backgroundColor('white').borderRadius(10)

    }.height('100%').width('100%').backgroundColor("#F1F3F5")
  }
}


