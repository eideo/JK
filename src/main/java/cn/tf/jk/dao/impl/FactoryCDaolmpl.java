package cn.tf.jk.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.tf.jk.dao.FactoryCDao;
import cn.tf.jk.po.FactoryC;

@Repository
public class FactoryCDaolmpl extends BaseDaoImpl<FactoryC>  implements  FactoryCDao{

	public FactoryCDaolmpl(){
		super.setNs("cn.tf.jk.mapper.FactoryCMapper");
	}

	@Override
	public void updateState(Map map) {
		super.getSqlSession().update(super.getNs()+".updateState",map);
		
	}
	
	
	
}
