package com.nexmotion.sample;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SampleService implements SampleMapper {
	
	//LOGGER
	private Logger logger = LoggerFactory.getLogger(SampleService.class);
		
	@Autowired
	SampleMapper sampleMapper;

	@Override
	public void insertSample(Sample sample) throws Throwable {
	  sampleMapper.insertSample(sample);
	}
	
	@Override
	public List<Sample> selectSample(String sampleid) throws Throwable {
	  return sampleMapper.selectSample(sampleid);
	}

	@Override
	public void updateSample(Sample sample) throws Throwable {
	  sampleMapper.updateSample(sample);
	}
	
	@Override
	public  void deleteSample(String sampleid) throws Throwable {
	  // TODO Auto-generated method stub
	  sampleMapper.deleteSample(sampleid);
	}
	
}
