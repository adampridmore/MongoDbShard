& mongo.exe MNAB-DEV15L:30000 setup_shard_a_RS.js
& mongo.exe MNAB-DEV15L:30100 setup_shard_b_RS.js

Start-Sleep -s 20

& mongo.exe MNAB-DEV15L:40000 setup_shards.js
