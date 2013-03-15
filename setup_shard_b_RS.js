var conf = {
	_id: "shard-b",
	members : [ {
		_id : 0, 
		host : 'MNAB-DEV15L:30100'
	},{
		_id : 1, 
		host : 'MNAB-DEV15L:30101'
	}, {
		_id : 2, 
		host : 'MNAB-DEV15L:30102',	
		arbiterOnly: true
	}]
};

rs.initiate(conf);