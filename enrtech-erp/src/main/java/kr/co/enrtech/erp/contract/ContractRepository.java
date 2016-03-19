/* 
 * Athena Peacock Project - Server Provisioning Engine for IDC or Cloud
 * 
 * Copyright (C) 2013 Open Source Consulting, Inc. All rights reserved by Open Source Consulting, Inc.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
 * Revision History
 * Author			Date				Description
 * ---------------	----------------	------------
 * BongJin Kwon 			            First Draft.
 */
package kr.co.enrtech.erp.contract;

import java.util.List;

import kr.co.enrtech.erp.base.AbstractBaseDao;
import kr.co.enrtech.erp.common.model.SearchListParam;

import org.springframework.stereotype.Repository;


/**
 * ContractRepository
 *
 * @author Bong-Jin Kwon
 * @version 1.0
 */
@Repository
public class ContractRepository extends AbstractBaseDao {

	/**
	 * ContractRepository
	 *
	 * @param
	 * @exception
	 */
	public ContractRepository() {
	}

	public List<Contract> getContractList(SearchListParam searchParam){
		return sqlSession.selectList("Contract.getContractList", searchParam);
	}
	
	public int getContractListTotalCount(SearchListParam searchParam){
		
		return sqlSession.selectOne("Contract.getContractListTotalCount", searchParam);
	}
	
	public Contract getContract(int contractId){
		return sqlSession.selectOne("Contract.getContract", contractId);
	}
	
	public void insertContract(Contract contract){
		sqlSession.insert("Contract.insertContract", contract);
	}
	
	public void updateContract(Contract contract){
		sqlSession.update("Contract.updateContract", contract);
	}
	
	public void deleteContract(int contractId){
		sqlSession.delete("Contract.deleteContract", contractId);
	}
}