 1063  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1064  ll ./sparse.txt
 1065  sync
 1066  stat sync
 1067  stat sparse.txt 
 1068  ls sparse.txt
 1069  ls -l sparse.txt
 1070  vi hole.c
 1071  dd if=/dev/zero of=foo bs=1M count=1 seek=1
 1072  ls foo
 1073  ls -l foo
 1074  stat foo
 1075  sudo hdparm --fibmap ./foo
 1076  vi hole.c 
 1077  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1078  sudo hdparm --fibmap ./sparse.txt 
 1079  sync
 1080  sudo hdparm --fibmap ./sparse.txt 
 1081  vi hole.c 
 1082  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1083  sync; sudo hdparm --fibmap ./sparse.txt 
 1084  vi hole.c 
 1085  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1086  vi hole.c 
 1087  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1088  sync; sudo hdparm --fibmap ./sparse.txt 
 1089  vi hole.c 
 1090  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1091  sync; sudo hdparm --fibmap ./sparse.txt 
 1092  vi hole.c 
 1093  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1094  sync; sudo hdparm --fibmap ./sparse.txt 
 1095  vi hole.c 
 1096  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1097  sync; sudo hdparm --fibmap ./sparse.txt 
 1098  vi hole.c 
 1099  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1100  sync; sudo hdparm --fibmap ./sparse.txt 
 1101  ll sparse.txt 
 1102  vi hole.c 
 1103  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1104  sync; sudo hdparm --fibmap ./sparse.txt 
 1105  vi hole.c 
 1106  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1107  sync; sudo hdparm --fibmap ./sparse.txt 
 1108  vi hole.c 
 1109  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1110  sync; sudo hdparm --fibmap ./sparse.txt 
 1111  ll ./sparse.txt
 1112  vi hole.c 
 1113  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1114  sync; sudo hdparm --fibmap ./sparse.txt 
 1115  stat ./sparse.txt
 1116  vi hole.c 
 1117  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1118  vi hole.c 
 1119  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1120  sync; sudo hdparm --fibmap ./sparse.txt 
 1121  ll ./sparse.txt 
 1122  vi hole.c 
 1123  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1124  sync; sudo hdparm --fibmap ./sparse.txt 
 1125  ll ./sparse.txt
 1126  du -h ./sparse.txt
 1127  vi hole.c 
 1128  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1129  du -h ./sparse.txt
 1130  vi hole.c 
 1131  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1132  du -h ./sparse.txt
 1133  vi hole.c 
 1134  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1135  du -h ./sparse.txt
 1136  ll ./sparse.txt
 1137  stat ./sparse.txt
 1138  vi hole.c 
 1139  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1140  stat ./sparse.txt
 1141  du -h ./sparse.txt
 1142  vi hole.c 
 1143  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1144  du -h ./sparse.txt
 1145  stat ./sparse.txt
 1146  echo 1131066/1024
 1147  vi hole.c 
 1148  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1149  stat ./sparse.txt
 1150  du -h ./sparse.txt
 1151  vi hole.c 
 1152  stat ./sparse.txt
 1153  sync; sudo hdparm --fibmap ./sparse.txt 
 1154  ./a.out ./sparse.txt >block.list
 1155  vi block.list
 1156  ls
 1157  gcc -o fiemap fiemap.c 
 1158  ./fiemap sparse.txt 
 1159  ls -lrt
 1160  gcc -buftree buftree.c 
 1161  gcc -o buftree buftree.c 
 1162  ./buftree ./sparse.txt 
 1163  sudo ./buftree ./sparse.txt >block.list2
 1164  vi block.list2
 1165  vi block.list
 1166  vi hole.c 
 1167  ls -l sparse.txt 
 1168  du -h sparse.txt
 1169  stat sparse.txt
 1170  ls -lk sparse.txt 
 1171  ./buftree sparse.txt 
 1172  vi block.list2
 1173  vi block.list
 1174  vi hole.c
 1175  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1176  sync; sudo hdparm --fibmap ./sparse.txt 
 1177  ls -lk ./sparse.txt
 1178  du -h ./sparse.txt
 1179  ./buftree ./sparse.txt >block.list2
 1180  ./fiemap ./sparse.txt >block.list2
 1181  vi block.list2
 1182  vi block.list
 1183  vi block.list2
 1184  ./buftree ./sparse.txt >block.list
 1185  vi block.list
 1186  sudo ./buftree ./sparse.txt >block.list
 1187  vi block.list
 1188  vi hole.c
 1189  rm sparse.txt ; gcc -o holes.exe hole.c && ./holes.exe 
 1190  sync; sudo hdparm --fibmap ./sparse.txt 
 1191  sudo ./buftree ./sparse.txt >block.list
 1192  ./fiemap ./sparse.txt >block.list2
 1193  vi block.list2
 1194  vi block.list
 1195  cp hole.c hole2.c
 1196  vi hole2.c
 1197  gcc hole2.c
 1198  stat foo.txt
 1199  ls
 1200  gcc hole2.c
 1201  ./a.out 
 1202  stat foo.txt
 1203  ./fiemap ./foo.txt 
 1204  vi hole2.c 
 1205  gcc hole2.c
 1206  ./a.out 
 1207  rm foo.txt 
 1208  ./a.out 
 1209  stat foo.txt 
 1210  ls -l foo.txt
 1211  vi fiemap.c 
 1212  ./fiemap ./foo.txt 
 1213  vi hole2.c 
 1214  ls -l foo.txt 
 1215  du -h foo.txt
 1216  sync; sudo hdparm --fibmap ./foo.txt 
 1217  sync; sudo hdparm --fibmap ./sparse.txt 
 1218  vi hole.c 
 1219  ps -fu kanaujia|grep fire
 1220  kill -9 2205
 1221  my
 1222  ls
 1223  vi input.py 
 1224  cd Desktop/ToKeep/Downloads/firefox/
 1225  ls
 1226  pwd
 1227  top
 1228  ps -fu kanaujia|grep fire
 1229  kill -9 2834
 1230  swig
 1231  sudo apt-get install swig
 1232  sudo apt-get install python-dev
 1233  sudo apt-get install module-linux
 1234  cd Desktop/ToKeep/Downloads/libpfm-4.2.0/
 1235  c
 1236  ls
 1237  cat README 
 1238  vi README 
 1239  cd python/
 1240  ls
 1241  make
 1242  cd ../../
 1243  tar xvf module-linux-0.1.tar.gz 
 1244  cd module-linux-0.1/
 1245  ls
 1246  vi README 
 1247  ./setup.py build
 1248  sudo ./setup.py install
 1249  cd -
 1250  cd libpfm-4.2.0/
 1251  cd python/
 1252  vi README 
 1253  make
 1254  sudo make
 1255  cd ..
 1256  ls
 1257  vi README 
 1258  make
 1259  sudo make install
 1260  cd -
 1261  make
 1262  cd ..
 1263  ls
 1264  vi perf_examples/self_basic.c
 1265  ./perf_examples/self_basic 
 1266  ./perf_examples/notify_group 
 1267  ./perf_examples/task_cpu 
 1268  ./perf_examples/task_cpu ls /tmp
 1269  vi perf_examples/task_cpu.c 
 1270  cd python/
 1271  ls
 1272  vi README 
 1273  c
 1274  pwd
 1275  sudo mkdir -p /media/cdromsudo
 1276  mount -o loop ~/Desktop/ubuntu-11.10-alternate-i386.iso /media/cdrom
 1277  sudo mount -o loop ~/Desktop/ubuntu-11.10-alternate-i386.iso /media/cdrom
 1278  gksu "sh /media/cdrom/cdromupgrade"
 1279  sudo apt-get install gnome-tweak-tool
 1280  ls
 1281  ls
 1282  cat ./sysstat_destination.txt 
 1283  top
 1284  ls
 1285  ls
 1286  vi yy
 1287  wc yy
 1288  my
 1289  vi pointer.c
 1290  gcc pointer.c
 1291  vi pointer.c
 1292  gcc pointer.c
 1293  vi pointer.c
 1294  gcc pointer.c
 1295  vi pointer.c
 1296  gcc pointer.c
 1297  vi pointer.c
 1298  gcc pointer.c
 1299  ./a.out 
 1300  vi pointer.c
 1301  gcc pointer.c && ./a.out 
 1302  vi pointer.c
 1303  gcc pointer.c && ./a.out 
 1304  vi pointer.c
 1305  gcc pointer.c && ./a.out 
 1306  vi pointer.c
 1307  my
 1308  ls
 1309  vi trse/trse.c 
 1310  ps -fu kanaujia|grep fire
 1311  kill -9 11406
 1312  top
 1313  kill -9 2487
 1314  my
 1315  vi funcp.c
 1316  gcc funcp.c
 1317  date |tee 1 /tmp/txt
 1318  cat /tmp/txt 
 1319  cat /tmp/txt /tmp/txt3
 1320  uname -a
 1321  cat /etc/issue
 1322  rpcinfo -p hostname
 1323  rpcinfo -p ubuntu
 1324  hostname
 1325  rpcinfo -p ubuntu
 1326  my
 1327  ls
 1328  cd bits/
 1329  ls
 1330  vi avg.x
 1331  rpcgen avg.x
 1332  vi avg.x
 1333  rpcgen avg.x
 1334  vi avg.x
 1335  rpcgen avg.x
 1336  ls
 1337  vi avg_clnt.c 
 1338  vi avg.h 
 1339  vi avg_svc.c 
 1340  vi avg_xdr.c 
 1341  vi avg.h 
 1342  vi avg_svc_proc.c
 1343  vi avg_main.c
 1344  ls
 1345  gcc -o cl_avg avg_main.c avg_clnt.c avg_xdr.c 
 1346  gcc -o cl_avg avg_main.c avg_clnt.c avg_xdr.c -lnsl
 1347  gcc -o cl_avg  avg_clnt.c avg_xdr.c avg_main.c -lnsl
 1348  vi avg_main.c 
 1349  my
 1350  cd bits/
 1351  ls
 1352  vi avg.h
 1353  vi avg_svc.c 
 1354  ls
 1355  vi avg.x
 1356  cd ../../Downloads/
 1357  c
 1358  ls
 1359  cd rpcdemo/
 1360  ls
 1361  make
 1362  ls
 1363  rpcgen -c llist
 1364  rpcgen -c llist.x
 1365  ls
 1366  rpcgen  llist.x
 1367  ls
 1368  make
 1369  ls
 1370  ./llist
 1371  ./llist ubuntu
 1372  vi /etc/host
 1373  sudo vi /etc/host
 1374  ./llist ubuntu
 1375  ./llist localhost
 1376  sudo vi /etc/hostname 
 1377  sudo vi /etc/host
 1378  ./llist ubuntu
 1379  ls
 1380  ./llist_svc &
 1381  sudo ./llist_svc 
 1382  sudo ufw disable
 1383  sudo ./llist_svc 
 1384  service portmap restart 
 1385  sestatus
 1386  rpcinfo -p localhost
 1387  iptables -L
 1388  sudo iptables -L
 1389  sudo iptables -L 111
 1390  sudo rpcinfo -p localhost
 1391  sudo rpcinfo -p ubuntu
 1392  /usr/sbin/portmap
 1393  portmap
 1394  sudo rpcinfo -p 
 1395  vi /etc/hosts.allow
 1396  sudo vi /etc/hosts.allow
 1397  sudo rpcinfo -p 
 1398  sudo vi /etc/hosts.allow
 1399  man portmap 
 1400  portmap
 1401  sudo vi /etc/hosts.allow
 1402  portmap
 1403  df -T | awk '{print $1,$2,$NF}' | grep "^/dev"
 1404  pwd
 1405  ls
 1406  my
 1407  ls
 1408  sudo ./fiemap 
 1409  sudo ./fiemap ~/hole.tar 
 1410  ./holes.exe 
 1411  ./buftree ./holes.exe 
 1412  sudo ./buftree ./holes.exe 
 1413  sudo ./fiemap ./holes.exe
 1414  df -T
 1415  stat ./holes.exe 
 1416  ls
 1417  cd bits/
 1418  ls
 1419  mkdir clntsvc
 1420  cd clntsvc
 1421  ls
 1422  vi multicastServer.c
 1423  vi ~/.vimrc
 1424  vi multicastServer.c
 1425  gcc -o server multicastServer.c
 1426  vi multicastServer.c
 1427  gcc -o server multicastServer.c
 1428  alias c=clear
 1429  c
 1430  gcc -o server multicastServer.c
 1431  vi multicastServer.c
 1432  gcc -o server multicastServer.c
 1433  vi multicastServer.c
 1434  gcc -o server multicastServer.c
 1435  ./server 
 1436  vi multicastServer.c
 1437  vi client.c
 1438  gcc -o receiver client.c 
 1439  vi client.c
 1440  gcc -o receiver client.c 
 1441  vi client.c
 1442  gcc -o receiver client.c 
 1443  vi client.c
 1444  gcc -o receiver client.c 
 1445  ./receiver 
 1446  ./sender 
 1447  vi listener_exp.c 
 1448  ./sender 
 1449  ./sender &
 1450  ps -fu kanaujia
 1451  my
 1452  cd bits/
 1453  ls
 1454  mkdir UDP
 1455  cd UDP
 1456  vi server.c
 1457  vi MyHeader.h
 1458  vi UnixServer.c
 1459  vi UnixClient.c
 1460  gcc -o client UnixClient.c 
 1461  gcc -o server UnixServer.c 
 1462  ./server &
 1463  ./client 
 1464  kill -9 26610
 1465  cd ..
 1466  ls
 1467  cd UDP/
 1468  ls
 1469  vi sockpair.c
 1470  gcc sockpair.c
 1471  vi sockpair.c
 1472  gcc sockpair.c
 1473  ./a.out 
 1474  vi sockpair.c
 1475  gcc sockpair.c
 1476  ./a.out 
 1477  vi sockpair.c
 1478  ifconfig -a
 1479  my
 1480  cd bits/
 1481  cd clntsvc/
 1482  ls
 1483  vi multicastServer.c 
 1484  ./server 
 1485  ls
 1486  vi example.c
 1487  gcc example.c
 1488  vi example.c
 1489  vi sender_exp.c
 1490  vi listener_exp.c
 1491  gcc 0o sender sender_exp.c 
 1492  gcc -o sender sender_exp.c 
 1493  vi sender_exp.c
 1494  gcc -o sender sender_exp.c 
 1495  ls
 1496  gcc -o listener listener_exp.c 
 1497  vi listener_exp.c
 1498  gcc -o listener listener_exp.c 
 1499  ls
 1500  ./listener 
 1501  vi sender_exp.c 
 1502  gcc -o listener listener_exp.c 
 1503  ./listener 
 1504  ls
 1505  ./listener 
 1506  ps -fu kanaujia
 1507  kill -9 25927 25928 25929 25931 25932
 1508  ps -fu kanaujia
 1509  ps -fu knaaujia
 1510  top
 1511  kill -9 3488
 1512  my
 1513  vi tt
 1514  vi size.c
 1515  gcc size.c
 1516  ./
 1517  ./a.out 
 1518  vi size.c
 1519  gcc size.c
 1520  ./a.out 
 1521  vi size.c
 1522  my
 1523  vi struct.c 
 1524  gcc struct.c
 1525  vi struct.c 
 1526  gcc struct.c
 1527  ./a.out 
 1528  vi struct.c 
 1529  my
 1530  vi struct.c 
 1531  gcc struct.c
 1532  vi struct.c 
 1533  gcc struct.c
 1534  ./a.out 
 1535  vi struct.c 
 1536  gcc struct.c
 1537  ./a.out 
 1538  vi struct.c 
 1539  gcc struct.c
 1540  ./a.out 
 1541  vi struct.c 
 1542  gcc struct.c
 1543  ./a.out 
 1544  vi struct.c 
 1545  gcc struct.c
 1546  ./a
 1547  ./a.out 
 1548  vi struct.c 
 1549  gcc struct.c
 1550  ./a.out 
 1551  vi struct.c 
 1552  gcc struct.c
 1553  ./a.out 
 1554  vi struct.c 
 1555  gcc struct.c
 1556  vi struct.c 
 1557  gcc struct.c
 1558  vi struct.c 
 1559  gcc struct.c
 1560  vi struct.c 
 1561  gcc struct.c
 1562  vi struct.c 
 1563  gdb
 1564  pwd
 1565  my
 1566  cd pycon
 1567  ls
 1568  python trie.py 
 1569  gdb python 
 1570  vi jjk
 1571  vi jjkk
 1572  my
 1573  ls
 1574  vi -d hole.c hole.c 
 1575  vi -d hole.c hole2.c 
 1576  top
 1577  debugfs
 1578  sudo debugfs
 1579  istat
 1580  sudo apt-get install sleuthkit
 1581  istat
 1582  cd
 1583  istat ./holes/holed.file
 1584  ll
 1585  ll ./holes
 1586  ls -i ./holes
 1587  istat ./holes/holed.file
 1588  istat ./holes/holed.file 1070277
 1589  cd Desktop/ToKeep/
 1590  cd Downloads/
 1591  ls
 1592  mv linux-3.0.4.tar.bz2 ~/holes
 1593  cd ~/holes
 1594  ls
 1595  ll
 1596  bunzip2 linux-3.0.4.tar.bz2 
 1597  ls
 1598  tar xvf linux-3.0.4.tar 
 1599  ls
 1600  cd linux-3.0.4/
 1601  ls
 1602  cd fs
 1603  ls
 1604  cs
 1605  reboot
 1606  sudo reboot
 1607  my
 1608  cd pycon/
 1609  ls
 1610  cd
 1611  my
 1612  vi fuse/myfs.py
 1613  cd fuse
 1614  ls
 1615  cd dedupfs/
 1616  ls
 1617  vi fuse.py 
 1618  vi uuuu
 1619  my
 1620  ls
 1621  vi recur.c
 1622  gcc recur.c
 1623  vi recur.c
 1624  gcc recur.c
 1625  vi recur.c
 1626  gcc recur.c
 1627  vi recur.c
 1628  gcc recur.c
 1629  ./a.out 
 1630  vi recur.c
 1631  gcc recur.c
 1632  vi recur.c
 1633  gcc recur.c
 1634  ./a.out 
 1635  vi recur.c
 1636  gcc recur.c
 1637  ./a.out 
 1638  vi recur.c
 1639  ./a.out 
 1640  gcc recur.c
 1641  ./a.out 
 1642  vi recur.c
 1643  gcc recur.c
 1644  ./a.out 
 1645  vi uuuu
 1646  g++ uuuu
 1647  sudo apt-get install g++
 1648  sudo apt-get install gnome-shell
 1649  ps
 1650  top
 1651  kill -9  2462
 1652  my
 1653  ./pycon/
 1654  ls
 1655  cd pycon/
 1656  ls
 1657  vi paramiko.py
 1658  python paramiko.py
 1659  sudo apt-get install paramiko
 1660  my
 1661  cd pycon/
 1662  c
 1663  ls
 1664  vi ~/.vimrc
 1665  vi ~/.bashrc
 1666  source ~/.bashrc
 1667  ls
 1668  vi trie.py 
 1669  python trie.py
 1670  vi trie.py 
 1671  python trie.py
 1672  vi trie.py 
 1673  python trie.py
 1674  vi trie.py 
 1675  pwd
 1676  cd ../../
 1677  cd Bulb_/
 1678  ls
 1679  cd
 1680  ls
 1681  cd Desktop/
 1682  ls
 1683  cd Bulb_/
 1684  ls
 1685  cd src
 1686  cd Src/
 1687  ls
 1688  cs
 1689  \ls
 1690  cs
 1691  make 
 1692  make release_linux
 1693  make LINUX_BUILD_STATIC release_linux
 1694  make release_linux
 1695  vi adts/bit_vector.c
 1696  make release_linux
 1697  vi adts/dlist.c
 1698  make release_linux
 1699  vi Makefile 
 1700  cd /home/kanaujia/Desktop/Bulb_/Src
 1701  ls
 1702  cd _dbg_hpux_ipf/
 1703  ls
 1704  ./ca
 1705  ./caliper
 1706  file ./caliper
 1707  ll
 1708  gmake
 1709  cd ..
 1710  pwd
 1711  gmake
 1712  make
 1713  make debug_linux
 1714  l
 1715  ls
 1716  sudo make debug_linux
 1717  cd adts
 1718  sudo make debug_linux
 1719  vi ~/bashrc
 1720  vi ~/.bashrc
 1721  sudo make debug_linux
 1722  source  ~/.bashrc
 1723  sudo make debug_linux
 1724  vi ~/.bashrc
 1725  source ~/.bashrc
 1726  make debug_linux
 1727  gmake
 1728  make debug_linux
 1729  ls
 1730  cd ../
 1731  make debug_linux
 1732  vi adts/bit_vector.h
 1733  vi adts/bit_vector.c
 1734  vi adts/bit_vector.h
 1735  make debug_linux
 1736  vi Makefile 
 1737  ps -fu kanaujia
 1738  top
 1739  kill -9 2263
 1740  my
 1741  vi struct.c 
 1742  gcc struct.c
 1743  vi struct.c 
 1744  gcc struct.c
 1745  vi struct.c 
 1746  gcc struct.c
 1747  vi struct.c 
 1748  vi test.sh
 1749  chmod +x test.sh 
 1750  ./test.sh 
 1751  ps -aef|grep -i sleep
 1752  my
 1753  cd pycon/
 1754  ls
 1755  vi max.py
 1756  vi uuuuu
 1757  cflow
 1758  sudo apt-get install cflow
 1759  cflow
 1760  my
 1761  ls
 1762  vi threadqueue.c
 1763  cflow threadqueue.c
 1764  sudo apt-get install cflow2dot 
 1765  cd ~/Desktop/ToKeep/
 1766  ls -ltr
 1767  cd Downloads/
 1768  ls
 1769  ls -ltr
 1770  gunzip cflow2vcg-0.5.tar.gz 
 1771  tar -xvf cflow2vcg-0.5.tar 
 1772  cd cflow2vcg-0.5/
 1773  ls -ltr
 1774  ./configure 
 1775  make
 1776  sudo make
 1777  ls -ltr
 1778  cat README
 1779  cat INSTALL 
 1780  ls
 1781  sudo make install
 1782  sudo apt-get install dot 
 1783  sudo apt-get install graphviz
 1784  vi l
 1785  cd
 1786  vi l
 1787  cat l
 1788  my
 1789  cflow --format=posix --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' threadqueue.c 
 1790  cflow --format=posix --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' threadqueue.c out.cf
 1791  cflow --format=posix --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' threadqueue.c > out.cf
 1792  cat l
 1793  cat ~/l
 1794  cflow2dot < "out.cf" > "out.dot"
 1795  dot -Tjpg "out.dot" -o "image.jpg"
 1796  cflow 
 1797  cflow --help
 1798  cflow --usage
 1799  cflow 
 1800  cflow threadqueue.c
 1801  cflow --main=producer 
 1802  cflow --main=producer threadqueue.c > out.cf
 1803  cflow2dot < "out.cf" > "out.dot"
 1804  cflow --main=producer threadqueue.c --format=posix> out.cf
 1805  cflow2dot < "out.cf" > "out.dot"
 1806  vi out.cf 
 1807  cflow --main=producer --format=posix --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' threadqueue.c --format=posix> out.cf
 1808  cflow2dot < "out.cf" > "out.dot"
 1809  dot -Tjpg "out.dot" -o "image1.jpg"
 1810  history 
 1811  cflow --usage
 1812  sudo apt-get install tint
 1813  ping  cyclnb18.eng.btc.netapp.in
 1814  scp -r samana@cyclnb18.eng.btc.netapp.in:~/p4/*reve/onta*/pro*/comm*/ib/ ./
 1815  ls -ltr
 1816  cd ib/
 1817  ls
 1818  history 
 1819  ls
 1820  cflow --format=posix --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_mgr.c > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1821  cflow --format=posix -I ./ --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_mgr.c > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1822  cflow --format=posix --include-dir=./ --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_mgr.c > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1823  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_tapehandlers.*  > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1824  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_tape* > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1825  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_*[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1826  gnome-panel
 1827  gnom\
 1828  gnome-control-center 
 1829  tint 
 1830  logout 
 1831  reboot
 1832  sudo reboot
 1833  gnome-session-quit 
 1834  history 
 1835  cd my
 1836  my
 1837  cd ib
 1838  cd
 1839  cd ib
 1840  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_ta*[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1841  ls ib_tap*
 1842  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_tape_packer.*[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1843  cflow --usage
 1844  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' --omit-symbol-names ENTER ib_tape_packer.*[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1845  vi ENTER
 1846  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' --omit-symbol-names ENTER ib_tape_packer.*[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1847  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' --omit-symbol-names=ENTER ib_tape_packer.*[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1848  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' --undefine=ENTER ib_tape_packer.*[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1849  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' --undefine=ENTER ib_tape_packer.*[ch] > out.cf;
 1850  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' -U=ENTER ib_tape_packer.*[ch] > out.cf;
 1851  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_tape_packer.*[ch] > out.cf;
 1852  vi out.cf 
 1853  cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1854  vi out.cf 
 1855  cflow2dot < "in" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1856  vi in 
 1857  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_tape_packer.*[ch] > out.cf;
 1858  diff3 
 1859  vimdiff out.cf in 
 1860  cflow --usage
 1861  cflow man
 1862  cflow help
 1863  cflow --help
 1864  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' -T ib_tape_packer.*[ch] 
 1865  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' ib_tape_packer.*[ch] 
 1866  cflow --help
 1867  vi out.cf 
 1868  vi in 
 1869  cflow --help
 1870  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' -i ENTER ib_tape_packer.*[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1871  cd
 1872  my
 1873  cd
 1874  my 
 1875  cd ..
 1876  ls
 1877  cd Downloads/
 1878  ls
 1879  ls -ltr
 1880  bunzip2 cflow-1.0.tar.bz2 
 1881  tar -xvf cflow-1.0.tar 
 1882  cd cflow
 1883  cd cflow-1.0/
 1884  ls
 1885  cd src/
 1886  ls
 1887  vi cflow.c
 1888  cscope
 1889  ls -ltr
 1890  find > l
 1891  vi l
 1892  ctags -L l
 1893  cscope
 1894  ls -ltr
 1895  vi cflow.h 
 1896  vi cflow.rc 
 1897  vi symbol.c 
 1898  grep omit *
 1899  vi main.c 
 1900  cflow --usage
 1901  grep preprocess *
 1902  vi main.c 
 1903  cscope
 1904  history 
 1905  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' *[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1906  ls -ltr
 1907  ls -ltrh
 1908  cscope
 1909  cflow -usage
 1910  cflow --usage
 1911  cflow -d 5 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' *[ch] > out.cf; cflow2dot < "out.cf" > "out.dot"; dot -Tjpg "out.dot" -o "image.jpg"
 1912  cflow -d 5 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' *[ch] > out.cf
 1913  my
 1914  pwd
 1915  cd -
 1916  cflow -d 5 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs 
 1917  cflow -d 5 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs/test.cpp 
 1918  cflow -d 5 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs/queue.c
 1919  cflow -d 5 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1920  cflow --usage
 1921  cflow --debug 5 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1922  cflow --debug 1 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1923  cflow --debug 2 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1924  cscope
 1925  cd ..
 1926  ls
 1927  ./configure 
 1928  make intall
 1929  make install
 1930  sudo  make install
 1931  cflow --debug 2 --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1932  cflow --format=posix  --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1933  which cflow
 1934  /usr/local/bin/cflow /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c
 1935  ls
 1936  finf
 1937  find
 1938  find|grep cflow
 1939  ./src/cflow
 1940  ./src/cflow /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1941  cd src/
 1942  cscope
 1943  cd ..
 1944  ./src/cflow -d /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1945  ./src/cflow -d 1 /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1946  ./src/cflow  /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1947  ./src/cflow --debug=4 /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c 
 1948  ./src/cflow --debug=4 /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c  > l
 1949  ./src/cflow --debug=4 /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c  1> l
 1950  ./src/cflow --debug=4 /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c  2> l
 1951  vi l
 1952  cd src/
 1953  cscope
 1954  grep typedef *
 1955  vi parser.c 
 1956  ls
 1957  grep "typedef" *.c
 1958  grep "union" *.c
 1959  vi c.c
 1960  vi c.l
 1961  vi c.c
 1962  vi parser.c 
 1963  cscope
 1964  ls -ltr
 1965  ./src/cflow --debug=4 /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c  
 1966  ./src/cflow  /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c  
 1967  ./cflow  /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c  
 1968  q
 1969  grep at *
 1970  grep  ' at ' *
 1971  vi gnu.c 
 1972  cd ..
 1973  make instal
 1974  make install
 1975  sudo make install
 1976  cd src/
 1977  ./cflow  /home/kanaujia/Desktop/ToKeep/cprogs/threadqueue.c  
 1978  vi gnu.c 
 1979  cscope
 1980  grep " at " *
 1981  grep vishal *
 1982  vi gnu.c 
 1983  cscope
 1984  apt-get unistall
 1985  apt-get
 1986  apt-get remove zfs-fuse
 1987  sudo apt-get remove zfs-fuse
 1988  vim
 1989  gksu vim /etc/init.d/rc
 1990  gksu gedit /etc/init.d/rc
 1991  /etc/modprobe.d/aliases > alias net-pf-10 off 
 1992  sysv-rc-conf 
 1993  sudo apt-get install sysv-rc-conf
 1994  sysv-rc-conf 
 1995  sudo sysv-rc-conf 
 1996  sudo apt-get install prelink
 1997  gksu gedit /etc/init.d/rc
 1998  gksu vi /etc/init.d/rc
 1999  top
 2000  cd Desktop/ToKeep/Bulb_/
 2001  cd cflow-1.0/
 2002  cd src/
 2003  ls
 2004  make
 2005  ./configure
 2006  ls
 2007  cd ..
 2008  ./configure
 2009  make
 2010  pwd
 2011  mv ~/Desktop/ToKeep/Downloads/cflow-1.0.tar .
 2012  ls
 2013  cd ..
 2014  mkdir cflow
 2015  ls
 2016  mv cflow-1.0/ cflow
 2017  cd cflow
 2018  ls
 2019  mv ./cflow-1.0/cflow-1.0.tar .
 2020  ls
 2021  mv cflow-1.0 cflow-1.0.ols
 2022  tar xvf cflow-1.0.tar 
 2023  cd cflow-1.0
 2024  ls
 2025  ./configure 
 2026  make
 2027  sudo make install
 2028  make
 2029  ll ./src/cflow 
 2030  date
 2031  pushd .
 2032  my
 2033  ls
 2034  vi str.c 
 2035  pw
 2036  d
 2037  pwd
 2038  popd
 2039  ./src/cflow /home/kanaujia/Desktop/ToKeep/cprogs/str.c
 2040  make
 2041  ./src/cflow 
 2042  ./src/cflow /home/kanaujia/ib/ib_tapehandlers.*
 2043  ./src/cflow /home/kanaujia/ib/ib_tapehandlers.* >out
 2044  vi out
 2045  ./src/cflow /home/kanaujia/ib/ib_trse/ib_trse_bkp_session* >out
 2046  vi out
 2047  cflow2dot out out.dot
 2048  ./src/cflow /home/kanaujia/ib/ib_trse/ib_trse_bkp_session* >out.cf
 2049  cflow2dot out.cf out.dot
 2050  cflow /home/kanaujia/ib/ib_trse/ib_trse_bkp_session* >out.cf
 2051  cflow2dot out.cf out.dot
 2052  ./src/cflow --format=posix --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/ib/ib_trse/ib_trse_bkp_session* >out.cf
 2053  cflow2dot out.cf out.dot
 2054  vi out.cf 
 2055  cflow2dot out.cf out.dot
 2056  vi out.cf 
 2057  cflow2dot out.cf out.dot
 2058  cflow2dot 
 2059  ./src/cflow --format=posix --omit-arguments --level-indent='0=\t' --level-indent='1=\t' --level-indent=start='\t' /home/kanaujia/ib/ib_trse/ib_trse_bkp_session* >out.cf
 2060  vi out.cf 
 2061  history 
 2062  history > ll
