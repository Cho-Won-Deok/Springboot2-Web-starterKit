package com.nexmotion.sample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface SampleMapper {
  
  public void insertSample(Sample sample) throws Throwable;
  
	public List<Sample> selectSample(@Param("sampleid") String sampleid) throws Throwable;
  
	public void updateSample(Sample sample) throws Throwable;
	
  public void deleteSample(@Param("sampleid") String sampleid) throws Throwable;
  
}
