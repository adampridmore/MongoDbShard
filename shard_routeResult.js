var shardKey = {shardDate: 1, assetId: 1};

db.getSiblingDB("Test_System_CustomersShared").routeResult.ensureIndex(shardKey);

sh.enableSharding("Test_System_CustomersShared");

sh.shardCollection("Test_System_CustomersShared.routeResult", shardKey);

sh.addShardTag("shard-a", "live");
sh.addShardTag("shard-b", "archive");

sh.addTagRange(
	"Test_System_CustomersShared.routeResult", 
	{shardDate:MinKey, assetId: MinKey},
	{shardDate:"2012_01_01", assetId: MaxKey}, 
	"archive");

sh.addTagRange(
	"Test_System_CustomersShared.routeResult", 
	{shardDate:"2012_01_02", assetId: MinKey},
	{shardDate:MaxKey, assetId: MaxKey}, 
	"live");


/*


move archive:

sh.stopBalancer();

db.getSiblingDB("config").tags.remove({ns: "Test_System_CustomersShared.routeResult"});

sh.addTagRange(
	"Test_System_CustomersShared.routeResult", 
	{shardDate:MinKey, assetId: MinKey},
	{shardDate:"2012_01_02", assetId: MaxKey}, 
	"archive");

sh.addTagRange(
	"Test_System_CustomersShared.routeResult", 
	{shardDate:"2012_01_03", assetId: MinKey},
	{shardDate:MaxKey, assetId: MaxKey}, 
	"live");
	
sh.startBalancer();

*/