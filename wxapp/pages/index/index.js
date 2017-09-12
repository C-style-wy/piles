//index.js
//获取应用实例
var app = getApp()
var mapContext
Page({
  data: {
    latitude: 0,
    longitude: 0,
    map_width: 0,
    map_height: 0,
    controls: [{
      id: 1,
      iconPath: '/resources/location.jpg',
      position: {
        left: 265,
        top: 513,
        width: 45,
        height: 45
      },
      clickable: true
    }]
  },
  onLoad: function () {
    console.log('onLoad')
    
  },

  onReady: function () {
    // Do something when page ready.
    this.mapContext = wx.createMapContext('map4select');
  },

  onShow: function () {
    console.log("onShow")

    var that = this
    // 获取定位，并把位置标示出来
    app.getLocationInfo(function (locationInfo) {
      that.setData({
        longitude: locationInfo.longitude,
        latitude: locationInfo.latitude
      })
      that.moveToLocation()
    })
    

    wx.getSystemInfo({
      success: function (res) {
        var left = res.windowWidth - 10 - 45;
        var top = res.windowHeight - 10 - 45;

        that.setData({
          'controls[0].position.left': left,
          'controls[0].position.top': top
        })
      },
      fail: function (res) { },
      complete: function (res) { },
    })
  },

  controltap: function (e) {
    console.log(e.controlId);
    if (e.controlId == 1) {
      // wx.getLocation({
      //   type: 'gcj02', //返回可以用于wx.openLocation的经纬度
      //   success: function (res) {
      //     var latitude = res.latitude
      //     var longitude = res.longitude
      //     wx.openLocation({
      //       latitude: latitude,
      //       longitude: longitude,
      //       scale: 28
      //     })
      //   }
      // })
      this.moveToLocation()
    }
  },

  moveToLocation: function () {
    this.mapContext.moveToLocation()
  },
})
