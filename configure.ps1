& mongo.exe MNAB-DEV15L:30000 --eval "rs.initiate()"
Start-Sleep -s 2
& mongo.exe MNAB-DEV15L:30000 --eval "rs.add('MNAB-DEV15L:30001')"
Start-Sleep -s 2
& mongo.exe MNAB-DEV15L:30000 --eval "rs.addArb('MNAB-DEV15L:30002')"
Start-Sleep -s 2

& mongo.exe MNAB-DEV15L:30100 --eval "rs.initiate()"
Start-Sleep -s 2
& mongo.exe MNAB-DEV15L:30100 --eval "rs.add('MNAB-DEV15L:30101')"
Start-Sleep -s 2
& mongo.exe MNAB-DEV15L:30100 --eval "rs.addArb('MNAB-DEV15L:30102')"
Start-Sleep -s 2

& mongo.exe MNAB-DEV15L:40000 --eval "sh.addShard('shard-a/MNAB-DEV15L:30000,MNAB-DEV15L:30001,MNAB-DEV15L:30002')"
Start-Sleep -s 2
& mongo.exe MNAB-DEV15L:40000 --eval "sh.addShard('shard-b/MNAB-DEV15L:30100,MNAB-DEV15L:30101,MNAB-DEV15L:30102')"
Start-Sleep -s 2
