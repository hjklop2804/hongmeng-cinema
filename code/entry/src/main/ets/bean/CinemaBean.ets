//封装影院数据
export default class CinemaBean {
  id:number   //影院id
  name:string //影片名
  branchName:string //分店名
  address:string  //地址
  tags:Array<string>  //特色标签，【退，改签，小吃，杜比全景声，巨幕，4k厅...]
  minPrice:number //最低价

  constructor(id: number, name: string, branchName: string, address: string,
              tags:Array<string>,minPrice:number) {
    this.id = id;
    this.name = name
    this.branchName = branchName
    this.address = address
    this.tags = tags
    this.minPrice = minPrice
  }
}