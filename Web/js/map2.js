var mymap;
var layer;
var layer_label;
var layerraster;
var layerraster_label;

$(document).ready(mapInit); 
//加载地图
function mapInit() {  
		//地图实例化  
    mymap = new NMap("map-canvas");  
		//图层参数设置  
		var lyrOptionswmts = {  
				tileSize:new NXY(256, 256),  
				tileOrigin:new NXY(-180,90),
				maxExtent:new NBounds(-180.0,-90.0, 180.0,90.0), 
				resolutions:[0.010986328125,0.0054931640625,0.00274658203125,0.001373291015625,0.0006866455078125,0.00034332275390625,0.000171661376953125,0.0000858306884765625,0.00004291534423828125,0.000021457672119140625,0.0000107288360595703125,0.00000536441802978515625,0.000002682209014892578125,0.0000013411045074462890625],
				serverResolutions:{'7':0.010986328125,'8':0.0054931640625,'9':0.00274658203125,'10':0.001373291015625,'11':0.0006866455078125,'12':0.00034332275390625,'13':0.000171661376953125,'14':0.0000858306884765625,'15':0.00004291534423828125,'16':0.000021457672119140625,'17':0.0000107288360595703125,'18':0.00000536441802978515625,'19':0.000002682209014892578125,'20':0.0000013411045074462890625}
		};  
		//矢量图层
		//德州图层 18-20配置信息
		var dzlayeroption = {
				format:"image/png",  
				units:"dd",  
				projection:"CGCS2000",  
				layer:"base",  
				style:"Default",  
				serviceMode:'KVP',  
				tileMatrixSet:"TileMatrixSet_0"  
		};
		//省图层 2-17配置信息
		var provinceoption = {
			format:"image/png",  
			units:"dd",  
			projection:"CGCS2000",  
			layer:"0",  
			style:"default",  
			serviceMode:'KVP',  
			tileMatrixSet:"taishannew" 
		};
		
			
		var configopt = [{url:'http://124.128.48.210/tileservice/sdpubmap',z:[7,8,9,10,11,12,13,14,15,16,17],params:provinceoption},{url:'http://www.dzmap.gov.cn/newmap/tianditu/TIANDITU/DZVectorMap/wmts',z:[18,19,20],params:dzlayeroption}];		
		layer = new NExtWMTSLayer("WMTS", "http://www.dzmap.gov.cn/newmap/tianditu/TIANDITU/DZVectorMap/wmts", lyrOptionswmts,configopt); 
		mymap.addLayer(layer); 
    
		//矢量注记图层
		//德州市注记层配置信息
		var dzoption_label={
			format:"image/png",  
			units:"dd",  
			projection:"CGCS2000",   
			layer:"base",  
			style:"Default",  
			serviceMode:'KVP',  
			tileMatrixSet:"TileMatrixSet_0" 
		};
		
		var configopt_label = [{url:'http://www.dzmap.gov.cn/newmap/tianditu/TIANDITU/DZVectorAnnoMap/wmts',z:[18,19,20],params:dzoption_label}];		
		layer_label = new NExtWMTSLayer("WMTS", "http://www.dzmap.gov.cn/newmap/tianditu/TIANDITU/DZVectorMap/wmts?", lyrOptionswmts,configopt_label);
		layer_label.isBasicLayer  = false;
		mymap.addLayer(layer_label); 
		
		//影像图层
		//德州市影像18-20配置信息
		var dzrasteroption = {
				format:"image/png",  
				units:"dd",  
				projection:"CGCS2000",  
				layer:"rcyxqp",  
				style:"Default",  
				serviceMode:'KVP',  
				tileMatrixSet:"TileMatrixSet_0"  
		};
		//山东省影像 2-17配置信息
		var sdrasteroption = {
			format:"image/jpeg",  
			units:"dd",  
			projection:"CGCS2000",  
			layer:"0",  
			style:"default",  
			serviceMode:'KVP',  
			tileMatrixSet:"tianditu2013" 
		};
		var configrasteropt = [{url:'http://www.sdmap.gov.cn/tileservice/SDRasterPubMap',z:[7,8,9,10,11,12,13,14,15,16,17],params:sdrasteroption},{url:'http://www.dzmap.gov.cn/newmap/tianditu/TIANDITU/DZRasterMap/wmts',z:[18,19,20],params:dzrasteroption}];		
		layerraster = new NExtWMTSLayer("WMTSraster", "http://www.dzmap.gov.cn/newmap/tianditu/TIANDITU/DZRasterMap/wmts", lyrOptionswmts,configrasteropt); 
		layerraster.isBasicLayer = true;
		mymap.addLayer(layerraster); 
 
		//影像注记
		//德州市注记层配置信息
		var dzraster_label={
			format:"image/png",  
			units:"dd",  
			projection:"CGCS2000",   
			layer:"base",  
			style:"Default",  
			serviceMode:'KVP',  
			tileMatrixSet:"TileMatrixSet_0" 
		};
		//山东影像注记
		var sdraster_label={
			format:"image/png",  
			units:"dd",  
			projection:"CGCS2000",   
			layer:"0",  
			style:"default",  
			serviceMode:'KVP',  
			tileMatrixSet:"taishannew" 
		};
		
		var configraster_label = [{url:'http://www.sdmap.gov.cn/tileservice/SDPubRasterNoteMapall',z:[7,8,9,10,11,12,13,14,15,16,17],params:sdraster_label},{url:'http://www.dzmap.gov.cn/newmap/tianditu/TIANDITU/DZRasterAnnoMap/wmts',z:[18,19,20],params:dzraster_label}];		
		layerraster_label = new NExtWMTSLayer("WMTS", "http://www.dzmap.gov.cn/newmap/tianditu/TIANDITU/DZRasterAnnoMap/wmts", lyrOptionswmts,configraster_label);
		layerraster_label.isBasicLayer  = false;
		layerraster_label.visible = false;
		mymap.addLayer(layerraster_label); 
		//将当前地图缩放到指定的中心点和级别
      mymap.moveTo(new NXY(116.342268, 37.16564), 6);  
		 
		mymap.addControl(new NPanZoomBarControl({useZoomBarTag:true}));  
    mymap.addControl(new NPositionControl());  
    mymap.addControl(new NScaleControl());  
    mymap.setMode("dragzoom");
    mymap.on("click", tip); 
    //添加比例尺到地图 
    //添加景点
    $.getJSON("../Admin/ashx/JingDianList.ashx", {}, function (data) {
        var gisdata = data.jingdianList;
        $.each(gisdata, function (index, n) {
            gisdata[index].JDJieShao = unescape(gisdata[index].JDJieShao);
            if (gisdata[index].JDJieShao.length < 60) {
                gisdata[index].JDJieShao = gisdata[index].JDJieShao + '<a href="#" onclick="lyjd_view(\'' + gisdata[index].JDBianHao + '\')">了解更多</a>';
            }
            else {
                gisdata[index].JDJieShao = gisdata[index].JDJieShao.substring(-1, 60) + '...<a href="#" onclick="lyjd_view(\'' + gisdata[index].JDBianHao + '\')">了解更多</a>';
            } 
            gisdata[index].TuPian = unescape(gisdata[index].TuPian);
        });
        for (var i = 0; i < data.jingdianCount; i++) {
            var marker = new NMarker(new NXY(gisdata[i].JingDu, gisdata[i].WeiDu), { markerTitle: gisdata[i].JDMingCheng });
            marker.setDialog("<div style ='margin:0px;' > " +
                "<div style='margin:10px 10px; '>" +
                "<img style='float:left;margin:0px 10px' width='100' height='80' title='' " + gisdata[i].TuPian + "+/>" +
                "  <div style='margin:0px 0px 0px 120px;width:170px;height:auto'>景点名称:" + gisdata[i].JDMingCheng + "<br>景点简介:" + gisdata[i].JDJieShao + "<span style='width:169px'></span></div>" +
                "</div>" +

                "<input type='button' name='delete' value ='编辑' id ='edit' onclick=edit(" + gisdata[i].JDBianHao + ") />" +
                "<input type='button' name='delete' value ='删除' id ='delete' onclick=delete1(" + gisdata[i].JDBianHao + ") />" +
                "</div>");
            //标注添加到地图  
            mymap.addOverlays(marker);  
        }
    });
















    //添加旅游规划，，标注不一样的哦
    $.getJSON("../Admin/ashx/LvYouGuiHuaList.ashx", {}, function (data) {
        var gisdata = data.list;
        //$.each(gisdata, function (index, n) {
        //    gisdata[index].JDJieShao = unescape(gisdata[index].JDJieShao);
        //    if (gisdata[index].JDJieShao.length < 60) {
        //        gisdata[index].JDJieShao = gisdata[index].JDJieShao + '<a href="#" onclick="lyjd_view(\'' + gisdata[index].JDBianHao + '\')">了解更多</a>';
        //    }
        //    else {
        //        gisdata[index].JDJieShao = gisdata[index].JDJieShao.substring(-1, 60) + '...<a href="#" onclick="lyjd_view(\'' + gisdata[index].JDBianHao + '\')">了解更多</a>';
        //    }
        //    gisdata[index].TuPian = unescape(gisdata[index].TuPian);
        //});
        for (var i = 0; i < data.Count; i++) {
            var marker = new NMarker(new NXY(gisdata[i].JingDu, gisdata[i].WeiDu), { markerTitle: gisdata[i].JDMingCheng });
            marker.setDialog("<div style ='margin:0px;' > " +
                "<div style='margin:10px 10px; '>" +
                //"<img style='float:left;margin:0px 10px' width='100' height='80' title='' " + gisdata[i].TuPian + "+/>" +
                "  <div style='margin:0px 0px 0px 120px;width:170px;height:auto'>规划编号:" + gisdata[i].GHXMBianHao + "<br>规划名称:" + gisdata[i].GHXMMingCheng + "<span style='width:169px'></span></div>" +
                "</div>" +

                //"<input type='button' name='delete' value ='编辑' id ='edit' onclick=edit(" + gisdata[i].JDBianHao + ") />" +
                //"<input type='button' name='delete' value ='删除' id ='delete' onclick=delete1(" + gisdata[i].JDBianHao + ") />" +
                "</div>");
            //标注添加到地图  
            mymap.addOverlays(marker);
        }
    });







    $("#vec_").click(showVector);
		$("#img_").click(showRaster);
};  

function JDedit(id) {
    alert("edit");
}
function JDdelete(id) {
    if (confirm("您确定删除此条记录？")) {
        if (true) {
            $.post("../Admin/ashx/DeleteData.ashx", { str: id + ",", action: "xinxi" }, function (date) {
                if (date == "ok") {
                    alert("删除成功！");
                    window.location.reload();
                }
            })
        }
    }
}
function showRaster()
{
	$("#vec_").removeClass("active");
	$("#img_").addClass("active");
	mymap.setBasicLayer(layerraster);
	layer_label.visible = false;
	layerraster_label.visible = true;
}
function showVector()
{
	$("#img_").removeClass("active");
	$("#vec_").addClass("active");
	mymap.setBasicLayer(layer);
	layer_label.visible = true;
	layerraster_label.visible = false;
}

function formatDate(dt) {
    var year = dt.getFullYear();
    var month = dt.getMonth() + 1;
    var date = dt.getDate();
    return year + "-" + month + "-" + date;
}
function ConvertTime(time) {
    var t = time.slice(6, 19)
    var NewDtime = new Date(parseInt(t));
    return formatDate(NewDtime);
}
// 
//事件触发的函数  
function tip(e) {
    var jingdu = e.point.x;
    var weidu = e.point.y;
    //jingdu = jingdu.slice(0, 6);
    //weidu = weidu.substring(0, 6);
    $("#jingweidu").val(jingdu + "," + weidu);
    //alert("该点的坐标为:" + e.point.x + ", " + e.point.y);
}  
function edit(id) {
    window.location.href = "../Admin/aspx/LvYouJingDian_Edit.aspx?id=" + id;
}
function delete1(id) {
    var r = confirm("确认删除此处景点？")
    if (r == true) {
        window.location.href = "../Admin/aspx/LvYouJingDianmap_Delete.aspx?id=" + id;
    }
    else {
        return;
    }

} 