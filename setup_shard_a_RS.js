var conf = {
	_id: "shard-a",
	members : [ {
		_id : 0, 
		host : 'MNAB-DEV15L:30000'
	},{
		_id : 1, 
		host : 'MNAB-DEV15L:30001'
	}, {
		_id : 2, 
		host : 'MNAB-DEV15L:30002',	
		arbiterOnly: true
	}]
};

rs.initiate(conf);