package com.yueball.action;

import java.util.List;

import com.google.gson.Gson;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yueball.entity.Basedict;
import com.yueball.service.BasedictService;

public class BasedictAction extends ActionSupport {
	private String dictTypeCode;
	private BasedictService basedictService;
	
	public String getDictTypeCode() {
		return dictTypeCode;
	}

	public void setDictTypeCode(String dictTypeCode) {
		this.dictTypeCode = dictTypeCode;
	}

	public void setBasedictService(BasedictService basedictService) {
		this.basedictService = basedictService;
	}
	
	public String findNameBydictCode() throws Exception{
		//调用Service根据dictCode获得字典项目的名字
		List<Basedict> list=basedictService.findNameBydictCode(dictTypeCode);	
		Gson gson = new Gson();
        String json  = gson.toJson(list);
        //将json发送给浏览器
        ServletActionContext.getResponse().setContentType("application/json;charset=utf-8");
        ServletActionContext.getResponse().getWriter().write(json);
        return null;//告诉struts2不需要进行结果处理
	}

}
