package com.nexmotion.sample;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.nexmotion.common.ResponseObject;
import com.nexmotion.common.StatusCode;

@RestController
public class SampleRestController {
	
	@Resource(name="sampleService")
	private SampleService sampleService;
	
	@RequestMapping("/sample/select")
	public ResponseObject<Map<String,Object>> selectSearchUsers(@RequestParam Map<String,Object> paramMap) throws Exception {
		ResponseObject<Map<String,Object>> ret = new ResponseObject<>();
		Map<String,Object> map = new HashMap<String,Object>();

		if (paramMap.containsKey("sampleid") == false
		    || paramMap.get("sampleid") == null) {
	    ret.setReturnCode(StatusCode.ERROR_PARAMETER);
		  return ret;
		}
		
	  String sampleid = paramMap.get("sampleid").toString();
		List<Sample> samplelist = null;
		
		try {
		  samplelist = sampleService.selectSample(sampleid);
		  
		  map.put("list", samplelist);
		} catch (Throwable e) {
			ret.setReturnCode(StatusCode.ERROR_SERVICE);			// 401 : ERROR_SERVICE
			e.printStackTrace();
			return ret;
		}
		
		ret.setData(map);
		ret.setReturnCode(StatusCode.OK);
		
		return ret;
	}
}