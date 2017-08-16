//index.js
//获取应用实例
var app = getApp()
Page({
  data: {
    latitude: 31.878909,
    longitude: 117.271788,
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
    var that = this
    // 获取定位，并把位置标示出来
    app.getLocationInfo(function (locationInfo) {
      console.log('map', locationInfo);
      var query = wx.createSelectorQuery()
      var map = query.select("map4select");
      map.setCenter(locationInfo);
      that.setData({
        longitude: locationInfo.longitude,
        latitude: locationInfo.latitude})
    })

    wx.getSystemInfo({
      success: function(res) {
        var left = res.screenWidth - 10 -45;
        var top = res.screenHeight - 20 - 44 - 10 - 45;

        console.log(left);
        console.log(top);

        that.setData({
          'controls[0].position.left': left,
          'controls[0].position.top': top
        })
      },
      fail: function(res) {},
      complete: function(res) {},
    })
  },

  controltap: function (e) {
    console.log(e.controlId);
    if (e.controlId == 1) {
      wx.getLocation({
        type: 'gcj02', //返回可以用于wx.openLocation的经纬度
        success: function (res) {
          var latitude = res.latitude
          var longitude = res.longitude
          wx.openLocation({
            latitude: latitude,
            longitude: longitude,
            scale: 28
          })
        }
      })
    }
  },
})
