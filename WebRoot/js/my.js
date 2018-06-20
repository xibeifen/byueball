//使用ajax加载数据字典,生成select
//参数1: 数据字典类型 (dict_type_code)
//参数2: 将下拉选放入的标签id
//参数3: 生成下拉选时,select标签的name属性值
//参数4: 需要回显时,选中哪个option
function loadSelect(typecode,positionId,selectname,selectedId) {
    //1.创建select对象，指定name属性
    //2.添加提示选项
    //3.使用jquery的ajax方法，访问后台的action
    //4.遍历json对象数据
    //5.把组装好的select对象放入页面指定位置
    var $select = $("<select name='"+selectname+"'></select>");
    $select.append($("<option value=''>---请选择---</option>"));
   /* $.post("${pageContext.request.contextPath}/basedictAction", { dictTypeCode:typecode},
        function(data){
            $.each(data,function(index, value){
                var $option = $("<option value='"+value['dictId']+"' >"+value["dictItemName"]+"</option>");
                if(value['dictId']==selectedId){
                    //判断是否需要回显 ,如果需要使其被选中
                    $option.attr("selected","selected");
                }
                //并添加到select对象
                $select.append($option);
            });
        }, "json");*/
    //3 使用jquery 的ajax 方法,访问后台Action
    $.post("${pageContext.request.contextPath}/basedictAction",{dictTypeCode:typecode},
      function(data){
               //遍历
    //4 返回json数组对象,对其遍历
               $.each(data,function(i, json){
        // 每次遍历创建一个option对象
                   var $option = $("<option value='"+json['dictId']+"' >"+json["dictItemName"]+"</option>"); 
                   
            if(json['dictId'] == selectedId){
            //判断是否需要回显 ,如果需要使其被选中
                $option.attr("selected","selected");
            }
        //并添加到select对象
                $select.append($option);
               });
      },"json");
    $("#"+positionId).append($select);
}