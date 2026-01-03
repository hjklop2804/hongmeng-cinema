import viewmodel from '../../viewmodel/MainViewModel'
import ServiceCard from'e:/huawei/homework/homework/entry/src/main/ets/bean/ServiceCard'
@Entry
@Component
export struct My{
  build() {
    Column({space:15}){
      Row({space:15}){
        Column() {
          Image($r('app.media.frog_head_pic')).width('30').height('30')
          Text('钻石VIP').fontSize('8')
        }
        Column() {
          Text('快乐的小青蛙').fontSize('15')
          Text('成长值: 80/100').fontSize('10')
          Progress({
            value:80,total:100,type: ProgressType.Linear
          }).width('100')
        }
      }.width('90%').backgroundColor("#F1F3F5")

      Row(){
          Text('0想看                 >')
          Divider()
            .vertical(true)
            .height('40')
          Text('0看过                 >')
      }.height('60').width('90%').borderRadius('15px').justifyContent(FlexAlign.SpaceEvenly).backgroundColor("white")

      Column() {
        Column(){
          Text('我的订单').fontSize('20')
        }.width('90%').alignItems(HorizontalAlign.Start).padding({top:10})
        Row({space:20}) { 
          Column() {
            Image($r('app.media.movie_32x32')).width('40').height('40')
            Text('电影票').fontSize('15')
          }

          Column() {
            Image($r('app.media.yanchu32x32')).width('40').height('40')
            Text('演出/玩乐').fontSize('15')
          }

          Column() {
            Image($r('app.media.theater32x32')).width('40').height('40')
            Text('在线观影').fontSize('15')
          }

          Column() {
            Image($r('app.media.local32x32')).width('40').height('40')
            Text('周边').fontSize('15')
          }
        }.margin({ top: '15' })
      }.height('120').width('90%').borderRadius('15px').backgroundColor('white')

      Row({space:20}){
        Column(){
          Text('优惠券').fontWeight(FontWeight.Bold).fontSize('20')
          Text('25 张可用').fontSize('10')
        }
        Column(){
          Text('影城卡').fontWeight(FontWeight.Bold).fontSize('20')
          Text('21 张可用').fontSize('10')
        }
        Column(){
          Text('蛙享卡').fontWeight(FontWeight.Bold).fontSize('20')
          Text('22 张可用').fontSize('10')
        }
        Column(){
          Text('蛙币').fontWeight(FontWeight.Bold).fontSize('20')
          Text('0 个可用').fontSize('10')
        }
      }.height('80').width('90%').borderRadius('15px').justifyContent(FlexAlign.SpaceEvenly).backgroundColor('white')

      Column(){
        Text('精选服务')
          .fontSize('20')
      }.width('90%').alignItems(HorizontalAlign.Start)

      Column({space:15}){
        Column(){
          Row({space:30}){
            Row(){
              Column(){
                Text('省钱月卡')
                Row(){
                  Column(){
                    Text('双享礼遇').fontSize('13')
                    Text('双享礼遇').fontSize('13')
                    Text('立即参加').fontSize('10')
                  }
                  Image($r('app.media.servicecard')).width('65').height('80').borderRadius('5')
                }
              }
            }.width('45%').height('120').backgroundColor('white').borderRadius('5').justifyContent(FlexAlign.SpaceEvenly)
            Row(){
              Column(){
                Text('0元观影')
                Row(){
                  Column(){
                    Text('双享礼遇').fontSize('13')
                    Text('双享礼遇').fontSize('13')
                    Text('立即参加').fontSize('10')
                  }
                  Image($r('app.media.servicecard1')).width('65').height('80').borderRadius('5')
                }
              }

            }.width('45%').height('120').backgroundColor('white').borderRadius('5').justifyContent(FlexAlign.SpaceEvenly)

          }.width('100%').height('120').backgroundColor('#F1F3F5')
        }.width('100%').height('120').backgroundColor('blue')

        Column(){
          Row({space:30}){
            Row(){
              Column(){
                Text('周边商城')
                Row(){
                  Column(){
                    Text('双享礼遇').fontSize('13')
                    Text('双享礼遇').fontSize('13')
                    Text('立即参加').fontSize('10')
                  }
                  Image($r('app.media.servicecard2')).width('65').height('80').borderRadius('5')
                }
              }

            }.width('45%').height('120').backgroundColor('white').borderRadius('5').justifyContent(FlexAlign.SpaceEvenly)
            Row(){
              Column(){
                Text('蛙币捐赠')
                Row(){
                  Column(){
                    Text('双享礼遇').fontSize('13')
                    Text('双享礼遇').fontSize('13')
                    Text('立即参加').fontSize('10')
                  }
                  Image($r('app.media.servicecard3')).width('65').height('80').borderRadius('5')
                }
              }

            }.width('45%').height('120').backgroundColor('white').borderRadius('5').justifyContent(FlexAlign.SpaceEvenly)

          }.width('100%').height('120').backgroundColor('#F1F3F5')
        }.width('100%').height('120').backgroundColor('blue')

        Column(){
          Row({space:30}){
            Row(){
              Column(){
                Text('连连看')
                Row(){
                  Column(){
                    Text('双享礼遇').fontSize('13')
                    Text('双享礼遇').fontSize('13')
                    Text('立即参加').fontSize('10')
                  }
                  Image($r('app.media.servicecard4')).width('65').height('80').borderRadius('5')
                }
              }
            }.width('45%').height('120').backgroundColor('white').borderRadius('5').justifyContent(FlexAlign.SpaceEvenly)
            Row(){
              Column(){
                Text('处处省')
                Row(){
                  Column(){
                    Text('双享礼遇').fontSize('13')
                    Text('双享礼遇').fontSize('13')
                    Text('立即参加').fontSize('10')
                  }
                  Image($r('app.media.servicecard5')).width('65').height('80').borderRadius('5')
                }
              }

            }.width('45%').height('120').backgroundColor('white').borderRadius('5').justifyContent(FlexAlign.SpaceEvenly)

          }.width('100%').height('120').backgroundColor('#F1F3F5')
        }.width('100%').height('120').backgroundColor('blue')

      }.width('90%').height('500').backgroundColor('#F1F3F5')
    }.height('3000').width('100%').backgroundColor('#F1F3F5')
  }
}