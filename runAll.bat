# Run Shard A
start C:\MongoShard\data\runServer_a_1.bat
start C:\MongoShard\data\runServer_a_2.bat
start C:\MongoShard\data\runServer_a_3.bat

# Run Shard B
start C:\MongoShard\data\runServer_b_1.bat
start C:\MongoShard\data\runServer_b_2.bat
start C:\MongoShard\data\runServer_b_3.bat

# Run config servers
start C:\MongoShard\data\runConfigServer_1.bat
start C:\MongoShard\data\runConfigServer_2.bat
start C:\MongoShard\data\runConfigServer_3.bat

# Run mongos
start C:\MongoShard\data\runMongos.bat