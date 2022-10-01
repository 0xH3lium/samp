// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>


new g_Vehicle[1790];

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Blank Filterscript by your name here");
	print("--------------------------------------\n");

	g_Vehicle[0] = CreateVehicle(538, 1462.0744, 2630.8786, 10.8203, 200.0000, -1, -1, 60); //Streak
	//(g_Vehicle[0], 0);
	g_Vehicle[1] = CreateVehicle(570, 1462.0744, 2630.8786, 10.8203, 200.0000, -1, -1, 60); //Trailer
	//(g_Vehicle[1], 0);
	g_Vehicle[2] = CreateVehicle(570, 1462.0744, 2630.8786, 10.8203, 200.0000, -1, -1, 60); //Trailer
	//(g_Vehicle[2], 0);
	g_Vehicle[3] = CreateVehicle(570, 1462.0744, 2630.8786, 10.8203, 200.0000, -1, -1, 60); //Trailer
	g_Vehicle[4] = CreateVehicle(538, -1942.7950, 168.4163, 27.0006, 200.0000, -1, -1, 60); //Streak
	//(g_Vehicle[4], 0);
	g_Vehicle[5] = CreateVehicle(570, -1942.7950, 168.4163, 27.0006, 200.0000, -1, -1, 60); //Trailer
	//(g_Vehicle[5], 0);
	g_Vehicle[6] = CreateVehicle(570, -1942.7950, 168.4163, 27.0006, 200.0000, -1, -1, 60); //Trailer
	//(g_Vehicle[6], 0);
	g_Vehicle[7] = CreateVehicle(570, -1942.7950, 168.4163, 27.0006, 200.0000, -1, -1, 60); //Trailer
	g_Vehicle[8] = CreateVehicle(538, 1700.7551, -1953.6530, 14.8755, 200.0000, -1, -1, 60); //Streak
	//(g_Vehicle[8], 0);
	g_Vehicle[9] = CreateVehicle(570, 1700.7551, -1953.6530, 14.8755, 200.0000, -1, -1, 60); //Trailer
	//(g_Vehicle[9], 0);
	g_Vehicle[10] = CreateVehicle(570, 1700.7551, -1953.6530, 14.8755, 200.0000, -1, -1, 60); //Trailer
	//(g_Vehicle[10], 0);
	g_Vehicle[11] = CreateVehicle(570, 1700.7551, -1953.6530, 14.8755, 200.0000, -1, -1, 60); //Trailer
	g_Vehicle[12] = CreateVehicle(577, 1477.4631, 1647.4588, 10.7280, 180.2740, -1, -1, 60); //AT-400
	//(g_Vehicle[12], 0);
	g_Vehicle[13] = CreateVehicle(577, -1513.0963, -21.4589, 14.0641, 314.4914, -1, -1, 60); //AT-400
	//(g_Vehicle[13], 0);
	g_Vehicle[14] = CreateVehicle(577, 2014.6605, -2493.9667, 13.4886, 89.6532, -1, -1, 60); //AT-400
	//(g_Vehicle[14], 0);
	g_Vehicle[15] = CreateVehicle(598, 2269.0366, 2460.2316, 8.2673, 181.9338, -1, -1, 60); //Police Car (LVPD)
	g_Vehicle[16] = CreateVehicle(490, 2278.0327, 2459.1831, 8.9495, 1.6668, -1, -1, 60); //FBI Rancher
	//(g_Vehicle[16], 0);
	g_Vehicle[17] = CreateVehicle(490, 2255.8300, 2443.1005, 8.2475, 179.7458, -1, -1, 60); //FBI Rancher
	//(g_Vehicle[17], 0);
	g_Vehicle[18] = CreateVehicle(490, 2239.7316, 2456.6293, 1.4035, 88.4757, -1, -1, 60); //FBI Rancher
	//(g_Vehicle[18], 0);
	g_Vehicle[19] = CreateVehicle(598, 2276.6789, 2473.7705, 1.0200, 184.7489, -1, -1, 60); //Police Car (LVPD)
	g_Vehicle[20] = CreateVehicle(598, 2315.3212, 2464.7902, 1.0219, 270.0936, -1, -1, 60); //Police Car (LVPD)
	//(g_Vehicle[20], 0);
	g_Vehicle[21] = CreateVehicle(523, 2297.4980, 2464.5881, 1.0000, 88.5559, -1, -1, 60); //HPV1000
	//(g_Vehicle[21], 0);
	g_Vehicle[22] = CreateVehicle(490, 2314.2158, 2484.8979, 3.3993, 92.8849, -1, -1, 60); //FBI Rancher
	//(g_Vehicle[22], 0);
	g_Vehicle[23] = CreateVehicle(490, 2240.0922, 2436.7124, 3.4017, 91.8532, -1, -1, 60); //FBI Rancher
	g_Vehicle[24] = CreateVehicle(598, 2299.4770, 2451.7512, 3.0199, 270.3330, -1, -1, 60); //Police Car (LVPD)
	//(g_Vehicle[24], 0);
	g_Vehicle[25] = CreateVehicle(416, 1590.5469, 1849.9899, 10.9689, 359.8598, -1, -1, 60); //Ambulance
	//(g_Vehicle[25], 0);
	g_Vehicle[26] = CreateVehicle(544, 1769.6176, 2075.1940, 11.0566, 179.5682, -1, -1, 60); //Firetruck
	//(g_Vehicle[26], 0);
	g_Vehicle[27] = CreateVehicle(544, 1750.6584, 2077.1130, 11.0558, 180.0440, -1, -1, 60); //Firetruck
	g_Vehicle[28] = CreateVehicle(544, 1763.4852, 2076.7075, 11.0524, 179.6719, -1, -1, 60); //Firetruck
	//(g_Vehicle[28], 0);
	g_Vehicle[29] = CreateVehicle(544, 1757.0782, 2075.0397, 11.0567, 177.5558, -1, -1, 60); //Firetruck
	//(g_Vehicle[29], 0);
	g_Vehicle[30] = CreateVehicle(519, 1328.6196, 1612.2500, 11.7437, 270.0000, -1, -1, 60); //Shamal
	//(g_Vehicle[30], 0);
	g_Vehicle[31] = CreateVehicle(593, 1352.1102, 1779.0000, 11.2880, 270.0000, -1, -1, 60); //Dodo
	g_Vehicle[32] = CreateVehicle(593, 1352.1115, 1801.5000, 11.2862, 269.9999, -1, -1, 60); //Dodo
	//(g_Vehicle[32], 0);
	g_Vehicle[33] = CreateVehicle(522, 1676.4334, 1322.1591, 10.3319, 87.7189, -1, -1, 60); //NRG-500
	//(g_Vehicle[33], 0);
	g_Vehicle[34] = CreateVehicle(417, 1286.8724, 1449.6250, 10.8722, 270.0000, -1, -1, 60); //Leviathan
	//(g_Vehicle[34], 0);
	g_Vehicle[35] = CreateVehicle(553, 1571.4384, 1487.7513, 12.1684, 311.1577, -1, -1, 60); //Nevada
	g_Vehicle[36] = CreateVehicle(553, 1597.4108, 1342.6934, 12.1864, 344.8449, -1, -1, 60); //Nevada
	//(g_Vehicle[36], 0);
	g_Vehicle[37] = CreateVehicle(487, 1655.0576, 1554.5649, 10.9878, 64.4210, -1, -1, 60); //Maverick
	//(g_Vehicle[37], 0);
	g_Vehicle[38] = CreateVehicle(487, 1397.5689, 1770.0474, 10.9970, 269.3059, -1, -1, 60); //Maverick
	//(g_Vehicle[38], 0);
	g_Vehicle[39] = CreateVehicle(487, 1618.4143, 1357.5428, 10.9892, 169.4555, -1, -1, 60); //Maverick
	g_Vehicle[40] = CreateVehicle(469, 1358.1188, 1253.5435, 10.8284, 358.5787, -1, -1, 60); //Sparrow
	//(g_Vehicle[40], 0);
	g_Vehicle[41] = CreateVehicle(609, 1341.5886, 1729.4564, 10.8864, 91.6427, -1, -1, 60); //Boxville
	//(g_Vehicle[41], 0);
	g_Vehicle[42] = CreateVehicle(519, 1303.7971, 1360.9348, 11.7405, 267.7907, -1, -1, 60); //Shamal
	//(g_Vehicle[42], 0);
	g_Vehicle[43] = CreateVehicle(511, 1341.3031, 1682.6431, 12.1967, 268.5870, -1, -1, 60); //Beagle
	g_Vehicle[44] = CreateVehicle(512, 1326.1611, 1420.4333, 11.1029, 178.1441, -1, -1, 60); //Cropdust
	//(g_Vehicle[44], 0);
	g_Vehicle[45] = CreateVehicle(513, 1280.1280, 1411.8032, 11.3653, 223.4432, -1, -1, 60); //Stunt
	//(g_Vehicle[45], 0);
	g_Vehicle[46] = CreateVehicle(515, 1573.4801, 1654.4057, 11.8422, 91.4975, -1, -1, 60); //RoadTrain
	//(g_Vehicle[46], 0);
	g_Vehicle[47] = CreateVehicle(435, 1554.5338, 1669.4783, 11.4541, 180.0000, -1, -1, 60); //Trailer
	g_Vehicle[48] = CreateVehicle(435, 1581.9742, 1664.0665, 11.4525, 180.0000, -1, -1, 60); //Trailer
	//(g_Vehicle[48], 0);
	g_Vehicle[49] = CreateVehicle(404, 1309.7847, 1279.5734, 10.5544, 359.2680, -1, -1, 60); //Pereniel
	//(g_Vehicle[49], 0);
	g_Vehicle[50] = CreateVehicle(411, 1682.5769, 1316.6561, 10.5474, 358.3994, -1, -1, 60); //Infernus
	//(g_Vehicle[50], 0);
	g_Vehicle[51] = CreateVehicle(436, 1663.4025, 1297.1320, 10.5876, 359.4866, -1, -1, 60); //Previon
	g_Vehicle[52] = CreateVehicle(439, 1642.0035, 1293.2331, 10.7156, 268.6614, -1, -1, 60); //Stallion
	//(g_Vehicle[52], 0);
	g_Vehicle[53] = CreateVehicle(462, 1713.8117, 1319.2558, 10.4165, 268.4222, -1, -1, 60); //Faggio
	//(g_Vehicle[53], 0);
	g_Vehicle[54] = CreateVehicle(474, 1695.4329, 1306.1843, 10.5853, 179.3890, -1, -1, 60); //Hermes
	//(g_Vehicle[54], 0);
	g_Vehicle[55] = CreateVehicle(480, 1682.4532, 1286.9057, 10.5944, 179.2039, -1, -1, 60); //Comet
	g_Vehicle[56] = CreateVehicle(420, 1723.8730, 1501.4979, 10.5186, 167.0140, -1, -1, 60); //Taxi
	//(g_Vehicle[56], 0);
	g_Vehicle[57] = CreateVehicle(420, 1712.5610, 1461.2470, 10.5375, 162.1932, -1, -1, 60); //Taxi
	//(g_Vehicle[57], 0);
	g_Vehicle[58] = CreateVehicle(420, 1707.1066, 1437.8786, 10.4500, 182.4505, -1, -1, 60); //Taxi
	//(g_Vehicle[58], 0);
	g_Vehicle[59] = CreateVehicle(438, 1717.6479, 1479.1417, 10.7440, 163.7234, -1, -1, 60); //Cabbie
	g_Vehicle[60] = CreateVehicle(438, 1707.2536, 1415.7249, 10.5640, 189.8016, -1, -1, 60); //Cabbie
	//(g_Vehicle[60], 0);
	g_Vehicle[61] = CreateVehicle(437, 1719.1062, 1381.2042, 10.6255, 197.7496, -1, -1, 60); //Coach
	//(g_Vehicle[61], 0);
	g_Vehicle[62] = CreateVehicle(485, 1537.6528, 1211.1794, 10.4701, 0.8907, -1, -1, 60); //Baggage
	//(g_Vehicle[62], 0);
	g_Vehicle[63] = CreateVehicle(592, 1340.5054, 1495.6396, 12.0169, 270.7770, -1, -1, 60); //Andromada
	g_Vehicle[64] = CreateVehicle(485, 1353.3430, 1642.0270, 10.4825, 175.0001, -1, -1, 60); //Baggage
	//(g_Vehicle[64], 0);
	g_Vehicle[65] = CreateVehicle(422, 1325.3157, 1278.7189, 10.8037, 180.6936, -1, -1, 60); //Bobcat
	//(g_Vehicle[65], 0);
	g_Vehicle[66] = CreateVehicle(505, 1282.6981, 1304.3753, 10.9646, 82.8840, -1, -1, 60); //Rancher
	//(g_Vehicle[66], 0);
	g_Vehicle[67] = CreateVehicle(407, 1282.0891, 1477.3780, 11.0577, 244.1416, -1, -1, 60); //Firetruck
	g_Vehicle[68] = CreateVehicle(407, 1312.9038, 1580.9365, 11.0562, 272.9746, -1, -1, 60); //Firetruck
	//(g_Vehicle[68], 0);
	g_Vehicle[69] = CreateVehicle(409, 1944.0601, 1346.0485, 8.9092, 180.2597, -1, -1, 60); //Stretch
	//(g_Vehicle[69], 0);
	g_Vehicle[70] = CreateVehicle(409, 1944.3724, 1335.7692, 8.9093, 178.7635, -1, -1, 60); //Stretch
	//(g_Vehicle[70], 0);
	g_Vehicle[71] = CreateVehicle(409, 2039.6442, 1008.3372, 10.4716, 178.7756, -1, -1, 60); //Stretch
	g_Vehicle[72] = CreateVehicle(409, 2108.1513, 1440.6623, 10.6203, 268.1557, -1, -1, 60); //Stretch
	//(g_Vehicle[72], 0);
	g_Vehicle[73] = CreateVehicle(409, 2176.3466, 1676.1738, 10.6203, 179.9264, -1, -1, 60); //Stretch
	//(g_Vehicle[73], 0);
	g_Vehicle[74] = CreateVehicle(409, 2035.1098, 1917.6453, 11.9762, 180.5780, -1, -1, 60); //Stretch
	//(g_Vehicle[74], 0);
	g_Vehicle[75] = CreateVehicle(587, 2075.4963, 1490.6589, 10.3972, 0.9207, -1, -1, 60); //Euros
	g_Vehicle[76] = CreateVehicle(451, 2148.8706, 1398.3687, 10.5207, 359.6848, -1, -1, 60); //Turismo
	//(g_Vehicle[76], 0);
	g_Vehicle[77] = CreateVehicle(558, 2132.6252, 1409.2678, 10.4505, 180.3099, -1, -1, 60); //Uranus
	//(g_Vehicle[77], 0);
	g_Vehicle[78] = CreateVehicle(420, 2039.7207, 1335.4227, 10.4504, 178.9214, -1, -1, 60); //Taxi
	//(g_Vehicle[78], 0);
	g_Vehicle[79] = CreateVehicle(420, 2159.9782, 1687.9427, 10.5331, 15.7069, -1, -1, 60); //Taxi
	g_Vehicle[80] = CreateVehicle(420, 2217.6040, 1838.1330, 10.5979, 180.3271, -1, -1, 60); //Taxi
	//(g_Vehicle[80], 0);
	g_Vehicle[81] = CreateVehicle(420, 2040.1989, 1344.9267, 10.4491, 178.6027, -1, -1, 60); //Taxi
	//(g_Vehicle[81], 0);
	g_Vehicle[82] = CreateVehicle(562, 2039.9256, 1019.8728, 10.3308, 179.7790, -1, -1, 60); //Elegy
	//(g_Vehicle[82], 0);
	g_Vehicle[83] = CreateVehicle(562, 1881.7867, 964.0424, 10.4797, 89.3164, -1, -1, 60); //Elegy
	g_Vehicle[84] = CreateVehicle(562, 1881.5302, 991.9348, 10.4788, 88.5594, -1, -1, 60); //Elegy
	//(g_Vehicle[84], 0);
	g_Vehicle[85] = CreateVehicle(562, 1881.8262, 1035.1031, 10.4787, 90.5642, -1, -1, 60); //Elegy
	//(g_Vehicle[85], 0);
	g_Vehicle[86] = CreateVehicle(562, 1882.0393, 1054.4158, 10.4798, 90.3891, -1, -1, 60); //Elegy
	//(g_Vehicle[86], 0);
	g_Vehicle[87] = CreateVehicle(543, 1665.9182, 900.6049, 10.6178, 154.1468, -1, -1, 60); //Sadler
	g_Vehicle[88] = CreateVehicle(561, 1655.6387, 999.3278, 10.6343, 1.6394, -1, -1, 60); //Stratum
	//(g_Vehicle[88], 0);
	g_Vehicle[89] = CreateVehicle(516, 1677.3664, 988.1375, 10.6021, 359.7391, -1, -1, 60); //Nebula
	//(g_Vehicle[89], 0);
	g_Vehicle[90] = CreateVehicle(411, 1889.2764, 1934.0405, 13.5118, 180.0615, -1, -1, 60); //Infernus
	//(g_Vehicle[90], 0);
	g_Vehicle[91] = CreateVehicle(422, 2791.8364, 1997.4440, 10.8079, 358.2167, -1, -1, 60); //Bobcat
	g_Vehicle[92] = CreateVehicle(402, 2812.9853, 2026.3201, 10.5869, 181.2861, -1, -1, 60); //Buffalo
	//(g_Vehicle[92], 0);
	g_Vehicle[93] = CreateVehicle(401, 2822.0800, 2169.3891, 10.5974, 270.8597, -1, -1, 60); //Bravura
	//(g_Vehicle[93], 0);
	g_Vehicle[94] = CreateVehicle(402, 2582.8459, 2271.9074, 10.6526, 89.7938, -1, -1, 60); //Buffalo
	//(g_Vehicle[94], 0);
	g_Vehicle[95] = CreateVehicle(561, 2764.5786, 1281.6990, 10.4819, 91.0992, -1, -1, 60); //Stratum
	g_Vehicle[96] = CreateVehicle(405, 2782.1955, 1295.4827, 10.6250, 179.4644, -1, -1, 60); //Sentinel
	//(g_Vehicle[96], 0);
	g_Vehicle[97] = CreateVehicle(414, 2624.3725, 1104.1190, 10.8044, 269.3916, -1, -1, 60); //Mule
	//(g_Vehicle[97], 0);
	g_Vehicle[98] = CreateVehicle(463, 2437.9824, 2060.0773, 10.3605, 321.5249, -1, -1, 60); //Freeway
	//(g_Vehicle[98], 0);
	g_Vehicle[99] = CreateVehicle(463, 2439.4592, 2059.3762, 10.3572, 317.0827, -1, -1, 60); //Freeway
	g_Vehicle[100] = CreateVehicle(463, 2436.2812, 2060.5949, 10.3597, 324.4646, -1, -1, 60); //Freeway
	//(g_Vehicle[100], 0);
	g_Vehicle[101] = CreateVehicle(533, 2444.2741, 1990.9354, 10.5293, 359.2698, -1, -1, 60); //Feltzer
	//(g_Vehicle[101], 0);
	g_Vehicle[102] = CreateVehicle(480, 2458.2346, 1992.2141, 10.5043, 180.6470, -1, -1, 60); //Comet
	//(g_Vehicle[102], 0);
	g_Vehicle[103] = CreateVehicle(482, 2170.9218, 1981.6817, 10.8809, 90.0916, -1, -1, 60); //Burrito
	g_Vehicle[104] = CreateVehicle(402, 2231.9128, 1277.3851, 10.5745, 1.2022, -1, -1, 60); //Buffalo
	//(g_Vehicle[104], 0);
	g_Vehicle[105] = CreateVehicle(451, 2182.8376, 1287.8752, 10.4708, 180.3701, -1, -1, 60); //Turismo
	//(g_Vehicle[105], 0);
	g_Vehicle[106] = CreateVehicle(415, 2171.9433, 1118.7879, 12.3942, 333.4859, -1, -1, 60); //Cheetah
	//(g_Vehicle[106], 0);
	g_Vehicle[107] = CreateVehicle(429, 2141.7614, 1022.6918, 10.5000, 90.9347, -1, -1, 60); //Banshee
	g_Vehicle[108] = CreateVehicle(436, 2150.9562, 987.4215, 10.5865, 180.8703, -1, -1, 60); //Previon
	//(g_Vehicle[108], 0);
	g_Vehicle[109] = CreateVehicle(439, 2133.0083, 1006.8494, 10.7159, 89.0047, -1, -1, 60); //Stallion
	//(g_Vehicle[109], 0);
	g_Vehicle[110] = CreateVehicle(561, 2163.0319, 1006.4871, 10.6988, 270.5458, -1, -1, 60); //Stratum
	//(g_Vehicle[110], 0);
	g_Vehicle[111] = CreateVehicle(461, 2132.7265, 899.1527, 10.4046, 270.7792, -1, -1, 60); //PCJ-600
	g_Vehicle[112] = CreateVehicle(462, 2132.7463, 906.0122, 10.4195, 268.0389, -1, -1, 60); //Faggio
	//(g_Vehicle[112], 0);
	g_Vehicle[113] = CreateVehicle(463, 2475.0217, 992.2780, 10.3601, 206.1177, -1, -1, 60); //Freeway
	//(g_Vehicle[113], 0);
	g_Vehicle[114] = CreateVehicle(474, 2197.8374, 936.0216, 10.5829, 185.2772, -1, -1, 60); //Hermes
	//(g_Vehicle[114], 0);
	g_Vehicle[115] = CreateVehicle(442, 2485.1379, 936.2084, 10.6624, 0.1062, -1, -1, 60); //Romero
	g_Vehicle[116] = CreateVehicle(587, 2460.3796, 918.7191, 10.5354, 90.4610, -1, -1, 60); //Euros
	//(g_Vehicle[116], 0);
	g_Vehicle[117] = CreateVehicle(535, 2455.4519, 1275.5571, 10.5843, 270.0744, -1, -1, 60); //Slamvan
	//(g_Vehicle[117], 0);
	g_Vehicle[118] = CreateVehicle(603, 2389.2189, 1658.2741, 10.4453, 358.7757, -1, -1, 60); //Phoenix
	//(g_Vehicle[118], 0);
	g_Vehicle[119] = CreateVehicle(560, 2039.5766, 1560.1607, 10.3773, 179.5951, -1, -1, 60); //Sultan
	g_Vehicle[120] = CreateVehicle(545, 2075.7207, 1482.4139, 10.4828, 359.4229, -1, -1, 60); //Hustler
	//(g_Vehicle[120], 0);
	g_Vehicle[121] = CreateVehicle(579, 2168.6728, 1412.4141, 10.7455, 179.3802, -1, -1, 60); //Huntley
	//(g_Vehicle[121], 0);
	g_Vehicle[122] = CreateVehicle(581, 2353.1149, 1405.4799, 10.4147, 272.0892, -1, -1, 60); //BF-400
	//(g_Vehicle[122], 0);
	g_Vehicle[123] = CreateVehicle(477, 2352.6645, 1436.9703, 10.5495, 269.3465, -1, -1, 60); //ZR3 50
	g_Vehicle[124] = CreateVehicle(603, 2300.3598, 1466.0363, 10.4462, 90.1237, -1, -1, 60); //Phoenix
	//(g_Vehicle[124], 0);
	g_Vehicle[125] = CreateVehicle(558, 2300.8754, 1458.6439, 10.4778, 90.3777, -1, -1, 60); //Uranus
	//(g_Vehicle[125], 0);
	g_Vehicle[126] = CreateVehicle(480, 2292.5034, 1454.7678, 13.8155, 270.6444, -1, -1, 60); //Comet
	//(g_Vehicle[126], 0);
	g_Vehicle[127] = CreateVehicle(558, 2285.8659, 1518.0089, 16.9277, 0.2347, -1, -1, 60); //Uranus
	g_Vehicle[128] = CreateVehicle(521, 2351.9589, 1487.6743, 17.7851, 268.5520, -1, -1, 60); //FCR-900
	//(g_Vehicle[128], 0);
	g_Vehicle[129] = CreateVehicle(516, 2322.5888, 1423.0114, 22.1984, 89.6000, -1, -1, 60); //Nebula
	//(g_Vehicle[129], 0);
	g_Vehicle[130] = CreateVehicle(579, 2352.2910, 1472.8544, 32.0778, 268.4590, -1, -1, 60); //Huntley
	//(g_Vehicle[130], 0);
	g_Vehicle[131] = CreateVehicle(418, 2332.3298, 1387.9061, 36.5387, 179.0473, -1, -1, 60); //Moonbeam
	g_Vehicle[132] = CreateVehicle(477, 2293.1245, 1455.2215, 39.5111, 270.0950, -1, -1, 60); //ZR3 50
	//(g_Vehicle[132], 0);
	g_Vehicle[133] = CreateVehicle(461, 2279.1494, 1387.7221, 42.4053, 181.3634, -1, -1, 60); //PCJ-600
	//(g_Vehicle[133], 0);
	g_Vehicle[134] = CreateVehicle(451, 2351.6416, 1415.7268, 42.5269, 269.3743, -1, -1, 60); //Turismo
	//(g_Vehicle[134], 0);
	g_Vehicle[135] = CreateVehicle(448, 2631.0559, 1845.8616, 10.4163, 264.5008, -1, -1, 60); //Pizzaboy
	g_Vehicle[136] = CreateVehicle(561, 2632.0136, 1858.2656, 10.6989, 270.9765, -1, -1, 60); //Stratum
	//(g_Vehicle[136], 0);
	g_Vehicle[137] = CreateVehicle(477, 2602.6127, 1846.6436, 10.5728, 90.5212, -1, -1, 60); //ZR3 50
	//(g_Vehicle[137], 0);
	g_Vehicle[138] = CreateVehicle(479, 2631.2253, 1794.8120, 10.6166, 270.0365, -1, -1, 60); //Regina
	//(g_Vehicle[138], 0);
	g_Vehicle[139] = CreateVehicle(581, 2600.0812, 1691.2464, 10.4107, 89.1783, -1, -1, 60); //BF-400
	g_Vehicle[140] = CreateVehicle(496, 2631.7998, 1681.1657, 10.4784, 271.2009, -1, -1, 60); //Blista Compact
	//(g_Vehicle[140], 0);
	g_Vehicle[141] = CreateVehicle(402, 2214.7441, 1512.2835, 10.6519, 269.6814, -1, -1, 60); //Buffalo
	//(g_Vehicle[141], 0);
	g_Vehicle[142] = CreateVehicle(410, 2038.7774, 1588.8406, 10.3257, 179.6040, -1, -1, 60); //Manana
	//(g_Vehicle[142], 0);
	g_Vehicle[143] = CreateVehicle(418, 1742.2191, 1906.1679, 10.9135, 90.2074, -1, -1, 60); //Moonbeam
	g_Vehicle[144] = CreateVehicle(420, 1731.2714, 1974.9577, 10.5993, 273.0415, -1, -1, 60); //Taxi
	//(g_Vehicle[144], 0);
	g_Vehicle[145] = CreateVehicle(437, 1736.9499, 1878.4279, 10.9182, 269.9014, -1, -1, 60); //Coach
	//(g_Vehicle[145], 0);
	g_Vehicle[146] = CreateVehicle(429, 1702.7047, 1804.3765, 10.5000, 359.9711, -1, -1, 60); //Banshee
	//(g_Vehicle[146], 0);
	g_Vehicle[147] = CreateVehicle(421, 1602.3924, 1839.9454, 10.7027, 178.4761, -1, -1, 60); //Washington
	g_Vehicle[148] = CreateVehicle(402, 1471.5048, 1928.6152, 11.1104, 91.6436, -1, -1, 60); //Buffalo
	//(g_Vehicle[148], 0);
	g_Vehicle[149] = CreateVehicle(482, 1450.1931, 2017.9884, 10.9038, 90.8725, -1, -1, 60); //Burrito
	//(g_Vehicle[149], 0);
	g_Vehicle[150] = CreateVehicle(426, 1453.9976, 1957.7761, 10.9630, 179.0628, -1, -1, 60); //Premier
	//(g_Vehicle[150], 0);
	g_Vehicle[151] = CreateVehicle(436, 1368.7288, 2020.8182, 11.2117, 88.9614, -1, -1, 60); //Previon
	g_Vehicle[152] = CreateVehicle(483, 1117.3785, 2112.5373, 10.8093, 0.4216, -1, -1, 60); //Camper
	//(g_Vehicle[152], 0);
	g_Vehicle[153] = CreateVehicle(498, 1049.3366, 2135.9787, 10.8915, 87.9624, -1, -1, 60); //Boxville
	//(g_Vehicle[153], 0);
	g_Vehicle[154] = CreateVehicle(530, 980.7039, 2060.1577, 10.5855, 159.6553, -1, -1, 60); //Forklift
	//(g_Vehicle[154], 0);
	g_Vehicle[155] = CreateVehicle(542, 1023.1682, 2019.7904, 10.9840, 272.4500, -1, -1, 60); //Clover
	g_Vehicle[156] = CreateVehicle(554, 991.6674, 1886.8708, 11.3290, 270.6091, -1, -1, 60); //Yosemite
	//(g_Vehicle[156], 0);
	g_Vehicle[157] = CreateVehicle(558, 984.5507, 1719.9062, 8.2853, 270.4342, -1, -1, 60); //Uranus
	//(g_Vehicle[157], 0);
	g_Vehicle[158] = CreateVehicle(522, 949.3911, 1662.1197, 8.4159, 269.5885, -1, -1, 60); //NRG-500
	//(g_Vehicle[158], 0);
	g_Vehicle[159] = CreateVehicle(541, 1113.0668, 1726.9880, 10.4450, 179.9989, -1, -1, 60); //Bullet
	g_Vehicle[160] = CreateVehicle(521, 1024.1970, 1724.4652, 10.3910, 93.4605, -1, -1, 60); //FCR-900
	//(g_Vehicle[160], 0);
	g_Vehicle[161] = CreateVehicle(506, 1041.7158, 1357.1357, 10.5246, 85.3610, -1, -1, 60); //Super GT
	//(g_Vehicle[161], 0);
	g_Vehicle[162] = CreateVehicle(500, 1042.7310, 1346.4716, 10.9230, 81.1408, -1, -1, 60); //Mesa
	//(g_Vehicle[162], 0);
	g_Vehicle[163] = CreateVehicle(496, 979.9923, 1080.0502, 10.5292, 91.2658, -1, -1, 60); //Blista Compact
	g_Vehicle[164] = CreateVehicle(482, 979.7034, 1104.7272, 10.9448, 90.7614, -1, -1, 60); //Burrito
	//(g_Vehicle[164], 0);
	g_Vehicle[165] = CreateVehicle(414, 1425.6674, 1039.2935, 10.4327, 90.1854, -1, -1, 60); //Mule
	//(g_Vehicle[165], 0);
	g_Vehicle[166] = CreateVehicle(414, 1451.7877, 976.0687, 10.4987, 0.3869, -1, -1, 60); //Mule
	//(g_Vehicle[166], 0);
	g_Vehicle[167] = CreateVehicle(410, 2004.4067, 735.3056, 11.0296, 180.8574, -1, -1, 60); //Manana
	g_Vehicle[168] = CreateVehicle(418, 2168.8989, 695.7341, 11.4582, 182.7091, -1, -1, 60); //Moonbeam
	//(g_Vehicle[168], 0);
	g_Vehicle[169] = CreateVehicle(429, 2362.0627, 731.0701, 11.0944, 0.1727, -1, -1, 60); //Banshee
	//(g_Vehicle[169], 0);
	g_Vehicle[170] = CreateVehicle(439, 2362.4011, 648.3925, 11.2058, 358.5357, -1, -1, 60); //Stallion
	//(g_Vehicle[170], 0);
	g_Vehicle[171] = CreateVehicle(460, 2358.0769, 519.0576, 1.7602, 270.6637, -1, -1, 60); //Skimmer
	g_Vehicle[172] = CreateVehicle(493, 2292.9006, 518.9940, -0.2126, 269.6578, -1, -1, 60); //Jetmax
	//(g_Vehicle[172], 0);
	g_Vehicle[173] = CreateVehicle(496, 2086.2353, 658.9542, 10.8916, 180.3410, -1, -1, 60); //Blista Compact
	//(g_Vehicle[173], 0);
	g_Vehicle[174] = CreateVehicle(506, 1916.4234, 698.4152, 10.5368, 359.5924, -1, -1, 60); //Super GT
	//(g_Vehicle[174], 0);
	g_Vehicle[175] = CreateVehicle(516, 1852.8835, 698.9276, 11.0088, 92.2718, -1, -1, 60); //Nebula
	g_Vehicle[176] = CreateVehicle(521, 1413.7998, 772.0427, 10.3920, 92.6899, -1, -1, 60); //FCR-900
	//(g_Vehicle[176], 0);
	g_Vehicle[177] = CreateVehicle(533, 1484.0516, 787.6008, 10.5293, 359.4021, -1, -1, 60); //Feltzer
	//(g_Vehicle[177], 0);
	g_Vehicle[178] = CreateVehicle(545, 1535.0472, 787.3861, 10.6314, 0.8389, -1, -1, 60); //Hustler
	//(g_Vehicle[178], 0);
	g_Vehicle[179] = CreateVehicle(578, 1645.1520, 740.4365, 11.4446, 357.8963, -1, -1, 60); //DFT-30
	g_Vehicle[180] = CreateVehicle(484, 1628.1273, 571.8071, 0.1587, 269.3262, -1, -1, 60); //Marquis
	//(g_Vehicle[180], 0);
	g_Vehicle[181] = CreateVehicle(477, 1544.6928, 2132.2333, 11.1513, 269.0968, -1, -1, 60); //ZR3 50
	//(g_Vehicle[181], 0);
	g_Vehicle[182] = CreateVehicle(480, 1613.6010, 2207.0527, 10.5918, 271.9736, -1, -1, 60); //Comet
	//(g_Vehicle[182], 0);
	g_Vehicle[183] = CreateVehicle(479, 1519.2011, 2291.0112, 10.6330, 0.9599, -1, -1, 60); //Regina
	g_Vehicle[184] = CreateVehicle(419, 1340.8719, 2246.3386, 10.6215, 92.0409, -1, -1, 60); //Esperanto
	//(g_Vehicle[184], 0);
	g_Vehicle[185] = CreateVehicle(462, 1431.4543, 2237.3439, 10.6230, 267.7669, -1, -1, 60); //Faggio
	//(g_Vehicle[185], 0);
	g_Vehicle[186] = CreateVehicle(401, 1508.7908, 2091.1386, 10.6953, 271.2131, -1, -1, 60); //Bravura
	//(g_Vehicle[186], 0);
	g_Vehicle[187] = CreateVehicle(439, 1068.4608, 2185.2995, 16.6151, 91.1135, -1, -1, 60); //Stallion
	g_Vehicle[188] = CreateVehicle(426, 1126.5606, 2323.6711, 16.4615, 90.0849, -1, -1, 60); //Premier
	//(g_Vehicle[188], 0);
	g_Vehicle[189] = CreateVehicle(421, 1135.4621, 2253.0495, 16.6012, 270.1440, -1, -1, 60); //Washington
	//(g_Vehicle[189], 0);
	g_Vehicle[190] = CreateVehicle(419, 1115.4998, 2310.4091, 10.6371, 267.7344, -1, -1, 60); //Esperanto
	//(g_Vehicle[190], 0);
	g_Vehicle[191] = CreateVehicle(561, 990.2858, 2307.3046, 11.1294, 89.9585, -1, -1, 60); //Stratum
	g_Vehicle[192] = CreateVehicle(400, 1108.1197, 1903.8444, 10.9125, 269.1944, -1, -1, 60); //Landstalker
	//(g_Vehicle[192], 0);
	g_Vehicle[193] = CreateVehicle(403, 1059.6800, 1916.6881, 11.4272, 0.6037, -1, -1, 60); //Linerunner
	//(g_Vehicle[193], 0);
	g_Vehicle[194] = CreateVehicle(402, 2039.0864, 1160.6542, 10.5032, 179.5146, -1, -1, 60); //Buffalo
	//(g_Vehicle[194], 0);
	g_Vehicle[195] = CreateVehicle(411, 1844.4285, 1209.7379, 10.5595, 91.1955, -1, -1, 60); //Infernus
	g_Vehicle[196] = CreateVehicle(522, 1843.6981, 1255.3601, 10.3901, 89.6381, -1, -1, 60); //NRG-500
	//(g_Vehicle[196], 0);
	g_Vehicle[197] = CreateVehicle(439, 1866.8518, 1179.2153, 10.7348, 0.1706, -1, -1, 60); //Stallion
	//(g_Vehicle[197], 0);
	g_Vehicle[198] = CreateVehicle(587, 1552.6905, 1025.6267, 10.5355, 267.4064, -1, -1, 60); //Euros
	//(g_Vehicle[198], 0);
	g_Vehicle[199] = CreateVehicle(543, 1332.6005, 1159.0437, 10.6289, 270.0148, -1, -1, 60); //Sadler
	g_Vehicle[200] = CreateVehicle(545, 1281.1134, 2545.5876, 10.6315, 90.4074, -1, -1, 60); //Hustler
	//(g_Vehicle[200], 0);
	g_Vehicle[201] = CreateVehicle(420, 1433.6540, 2608.7395, 10.6772, 89.2627, -1, -1, 60); //Taxi
	//(g_Vehicle[201], 0);
	g_Vehicle[202] = CreateVehicle(508, 1374.0249, 2644.2893, 11.1955, 179.4467, -1, -1, 60); //Journey
	//(g_Vehicle[202], 0);
	g_Vehicle[203] = CreateVehicle(437, 1352.3560, 2647.1230, 10.9442, 180.4328, -1, -1, 60); //Coach
	g_Vehicle[204] = CreateVehicle(451, 1319.5607, 2697.6628, 10.5268, 0.7027, -1, -1, 60); //Turismo
	//(g_Vehicle[204], 0);
	g_Vehicle[205] = CreateVehicle(437, 1296.4653, 2646.8471, 10.9535, 1.1869, -1, -1, 60); //Coach
	//(g_Vehicle[205], 0);
	g_Vehicle[206] = CreateVehicle(506, 1464.4520, 2773.0771, 10.3763, 181.1781, -1, -1, 60); //Super GT
	//(g_Vehicle[206], 0);
	g_Vehicle[207] = CreateVehicle(546, 1475.3709, 2839.5517, 10.6443, 181.0346, -1, -1, 60); //Intruder
	g_Vehicle[208] = CreateVehicle(541, 1455.9503, 2878.8361, 10.4448, 0.1368, -1, -1, 60); //Bullet
	//(g_Vehicle[208], 0);
	g_Vehicle[209] = CreateVehicle(545, 1529.5755, 2867.6501, 10.6314, 268.0443, -1, -1, 60); //Hustler
	//(g_Vehicle[209], 0);
	g_Vehicle[210] = CreateVehicle(421, 1529.6301, 2835.7375, 10.6408, 269.9234, -1, -1, 60); //Washington
	//(g_Vehicle[210], 0);
	g_Vehicle[211] = CreateVehicle(457, 1422.7972, 2830.8291, 10.4471, 91.4125, -1, -1, 60); //Caddy
	g_Vehicle[212] = CreateVehicle(457, 1369.0236, 2784.1589, 10.4469, 94.3731, -1, -1, 60); //Caddy
	//(g_Vehicle[212], 0);
	g_Vehicle[213] = CreateVehicle(457, 1423.0650, 2835.1398, 10.4470, 92.8883, -1, -1, 60); //Caddy
	//(g_Vehicle[213], 0);
	g_Vehicle[214] = CreateVehicle(572, 1420.3007, 2802.6374, 10.4001, 179.9107, -1, -1, 60); //Mower
	//(g_Vehicle[214], 0);
	g_Vehicle[215] = CreateVehicle(561, 1618.5776, 2834.7360, 10.6343, 359.5820, -1, -1, 60); //Stratum
	g_Vehicle[216] = CreateVehicle(581, 1737.6124, 2780.0356, 10.6454, 100.8438, -1, -1, 60); //BF-400
	//(g_Vehicle[216], 0);
	g_Vehicle[217] = CreateVehicle(579, 1673.0440, 2696.7333, 10.7645, 2.8550, -1, -1, 60); //Huntley
	//(g_Vehicle[217], 0);
	g_Vehicle[218] = CreateVehicle(522, 1927.4393, 2729.9841, 10.3923, 182.5767, -1, -1, 60); //NRG-500
	//(g_Vehicle[218], 0);
	g_Vehicle[219] = CreateVehicle(562, 1998.1213, 2758.4885, 10.4821, 0.3794, -1, -1, 60); //Elegy
	g_Vehicle[220] = CreateVehicle(542, 2260.1184, 2737.8930, 10.5637, 271.1406, -1, -1, 60); //Clover
	//(g_Vehicle[220], 0);
	g_Vehicle[221] = CreateVehicle(498, 2311.9609, 2763.3215, 10.8879, 272.1044, -1, -1, 60); //Boxville
	//(g_Vehicle[221], 0);
	g_Vehicle[222] = CreateVehicle(421, 2143.1142, 2807.1777, 10.5764, 92.5021, -1, -1, 60); //Washington
	//(g_Vehicle[222], 0);
	g_Vehicle[223] = CreateVehicle(480, 2167.2463, 2750.6987, 10.5947, 271.0784, -1, -1, 60); //Comet
	g_Vehicle[224] = CreateVehicle(419, 2349.0527, 2578.4848, 10.6134, 0.1656, -1, -1, 60); //Esperanto
	//(g_Vehicle[224], 0);
	g_Vehicle[225] = CreateVehicle(448, 2363.0668, 2531.9736, 10.4173, 267.6789, -1, -1, 60); //Pizzaboy
	//(g_Vehicle[225], 0);
	g_Vehicle[226] = CreateVehicle(541, 2417.8662, 2529.0085, 10.4449, 178.9855, -1, -1, 60); //Bullet
	//(g_Vehicle[226], 0);
	g_Vehicle[227] = CreateVehicle(415, 2455.1401, 2531.6059, 21.6457, 179.4472, -1, -1, 60); //Cheetah
	g_Vehicle[228] = CreateVehicle(418, 2530.6252, 2535.9523, 21.9678, 268.5748, -1, -1, 60); //Moonbeam
	//(g_Vehicle[228], 0);
	g_Vehicle[229] = CreateVehicle(436, 2506.2001, 2515.6662, 21.6410, 88.9684, -1, -1, 60); //Previon
	//(g_Vehicle[229], 0);
	g_Vehicle[230] = CreateVehicle(429, 2537.9023, 2397.2529, 3.8905, 0.5157, -1, -1, 60); //Banshee
	//(g_Vehicle[230], 0);
	g_Vehicle[231] = CreateVehicle(474, 2511.0983, 2394.3940, 10.5827, 269.3659, -1, -1, 60); //Hermes
	g_Vehicle[232] = CreateVehicle(477, 2501.1005, 2131.0410, 10.4987, 269.4453, -1, -1, 60); //ZR3 50
	//(g_Vehicle[232], 0);
	g_Vehicle[233] = CreateVehicle(518, 2589.0197, 2166.3142, 10.4839, 1.1502, -1, -1, 60); //Buccaneer
	//(g_Vehicle[233], 0);
	g_Vehicle[234] = CreateVehicle(533, 2620.0979, 2086.9113, 10.5281, 180.6504, -1, -1, 60); //Feltzer
	//(g_Vehicle[234], 0);
	g_Vehicle[235] = CreateVehicle(535, 2567.6166, 2059.1948, 10.5846, 0.8758, -1, -1, 60); //Slamvan
	g_Vehicle[236] = CreateVehicle(541, 2075.6462, 1312.3135, 10.2966, 359.4287, -1, -1, 60); //Bullet
	//(g_Vehicle[236], 0);
	g_Vehicle[237] = CreateVehicle(546, 2183.6970, 1878.7114, 10.5447, 359.9917, -1, -1, 60); //Intruder
	//(g_Vehicle[237], 0);
	g_Vehicle[238] = CreateVehicle(410, 2192.2409, 1856.6901, 10.6209, 181.3347, -1, -1, 60); //Manana
	//(g_Vehicle[238], 0);
	g_Vehicle[239] = CreateVehicle(480, 2203.4362, 1787.9411, 10.5033, 179.6947, -1, -1, 60); //Comet
	g_Vehicle[240] = CreateVehicle(541, 2181.5310, 1821.7204, 10.4450, 0.6193, -1, -1, 60); //Bullet
	//(g_Vehicle[240], 0);
	g_Vehicle[241] = CreateVehicle(533, 2129.1848, 1810.2719, 10.3809, 332.9410, -1, -1, 60); //Feltzer
	//(g_Vehicle[241], 0);
	g_Vehicle[242] = CreateVehicle(477, 2118.6621, 1892.0770, 10.3762, 181.2667, -1, -1, 60); //ZR3 50
	//(g_Vehicle[242], 0);
	g_Vehicle[243] = CreateVehicle(410, 2118.6232, 1910.1948, 10.7687, 180.4237, -1, -1, 60); //Manana
	g_Vehicle[244] = CreateVehicle(496, 2102.4213, 2066.0053, 10.5366, 270.8547, -1, -1, 60); //Blista Compact
	//(g_Vehicle[244], 0);
	g_Vehicle[245] = CreateVehicle(477, 2103.5483, 2089.0322, 10.5740, 269.2954, -1, -1, 60); //ZR3 50
	//(g_Vehicle[245], 0);
	g_Vehicle[246] = CreateVehicle(516, 2028.6848, 2155.9724, 10.6247, 264.3125, -1, -1, 60); //Nebula
	//(g_Vehicle[246], 0);
	g_Vehicle[247] = CreateVehicle(522, 1995.4116, 2185.7836, 10.3812, 183.3890, -1, -1, 60); //NRG-500
	g_Vehicle[248] = CreateVehicle(508, 2010.5963, 2137.1594, 11.1969, 270.0610, -1, -1, 60); //Journey
	//(g_Vehicle[248], 0);
	g_Vehicle[249] = CreateVehicle(414, 2005.9337, 2059.6008, 10.9940, 181.8287, -1, -1, 60); //Mule
	//(g_Vehicle[249], 0);
	g_Vehicle[250] = CreateVehicle(414, 2060.3393, 2237.0126, 10.5446, 89.3481, -1, -1, 60); //Mule
	//(g_Vehicle[250], 0);
	g_Vehicle[251] = CreateVehicle(448, 2077.0783, 2226.7165, 10.4141, 3.1700, -1, -1, 60); //Pizzaboy
	g_Vehicle[252] = CreateVehicle(420, 2107.7360, 2206.7978, 10.8238, 178.2615, -1, -1, 60); //Taxi
	//(g_Vehicle[252], 0);
	g_Vehicle[253] = CreateVehicle(516, 2094.5529, 2206.6325, 10.5903, 178.8516, -1, -1, 60); //Nebula
	//(g_Vehicle[253], 0);
	g_Vehicle[254] = CreateVehicle(477, 2156.2788, 2188.8767, 10.3515, 358.4281, -1, -1, 60); //ZR3 50
	//(g_Vehicle[254], 0);
	g_Vehicle[255] = CreateVehicle(415, 2339.1323, 2114.0561, 10.4511, 177.1575, -1, -1, 60); //Cheetah
	g_Vehicle[256] = CreateVehicle(409, 2361.3320, 2170.0617, 10.5250, 359.3093, -1, -1, 60); //Stretch
	//(g_Vehicle[256], 0);
	g_Vehicle[257] = CreateVehicle(461, 2380.3522, 2018.2645, 10.3402, 272.1906, -1, -1, 60); //PCJ-600
	//(g_Vehicle[257], 0);
	g_Vehicle[258] = CreateVehicle(587, 2338.7590, 1943.9525, 10.4102, 182.1739, -1, -1, 60); //Euros
	//(g_Vehicle[258], 0);
	g_Vehicle[259] = CreateVehicle(482, 2221.3479, 1944.5292, 9.7951, 87.2554, -1, -1, 60); //Burrito
	g_Vehicle[260] = CreateVehicle(479, 2272.5029, 1953.1041, 9.4898, 179.0292, -1, -1, 60); //Regina
	//(g_Vehicle[260], 0);
	g_Vehicle[261] = CreateVehicle(541, 2244.7246, 1997.9194, 15.4281, 0.8475, -1, -1, 60); //Bullet
	//(g_Vehicle[261], 0);
	g_Vehicle[262] = CreateVehicle(541, 2222.4797, 1936.1878, 25.9241, 88.7210, -1, -1, 60); //Bullet
	//(g_Vehicle[262], 0);
	g_Vehicle[263] = CreateVehicle(415, 2294.6262, 1952.2435, 26.0251, 268.4258, -1, -1, 60); //Cheetah
	g_Vehicle[264] = CreateVehicle(436, 2246.8061, 1939.5152, 31.5463, 179.6696, -1, -1, 60); //Previon
	//(g_Vehicle[264], 0);
	g_Vehicle[265] = CreateVehicle(461, 2283.6469, 1975.2380, 28.4011, 180.9682, -1, -1, 60); //PCJ-600
	//(g_Vehicle[265], 0);
	g_Vehicle[266] = CreateVehicle(482, 2217.0319, 2048.4802, 10.9455, 89.9095, -1, -1, 60); //Burrito
	//(g_Vehicle[266], 0);
	g_Vehicle[267] = CreateVehicle(479, 2296.6074, 2046.1453, 10.6169, 271.5166, -1, -1, 60); //Regina
	g_Vehicle[268] = CreateVehicle(461, 2259.0544, 2065.4904, 10.3872, 2.1429, -1, -1, 60); //PCJ-600
	//(g_Vehicle[268], 0);
	g_Vehicle[269] = CreateVehicle(477, 2272.6032, 2326.2434, 10.5271, 88.5972, -1, -1, 60); //ZR3 50
	//(g_Vehicle[269], 0);
	g_Vehicle[270] = CreateVehicle(401, 2464.2082, 2236.9704, 10.5507, 88.6524, -1, -1, 60); //Bravura
	//(g_Vehicle[270], 0);
	g_Vehicle[271] = CreateVehicle(428, 2242.5024, 2231.3747, 10.9010, 270.8859, -1, -1, 60); //Securicar
	g_Vehicle[272] = CreateVehicle(516, 2007.5070, 2263.2092, 17.6074, 2.4052, -1, -1, 60); //Nebula
	//(g_Vehicle[272], 0);
	g_Vehicle[273] = CreateVehicle(522, 2014.7938, 2244.9580, 23.4848, 269.4012, -1, -1, 60); //NRG-500
	//(g_Vehicle[273], 0);
	g_Vehicle[274] = CreateVehicle(436, 1907.2633, 2290.8405, 11.0000, 180.4904, -1, -1, 60); //Previon
	//(g_Vehicle[274], 0);
	g_Vehicle[275] = CreateVehicle(480, 1705.0334, 2242.9836, 10.5940, 179.6408, -1, -1, 60); //Comet
	g_Vehicle[276] = CreateVehicle(436, 1691.1773, 2131.1425, 11.0799, 91.2324, -1, -1, 60); //Previon
	//(g_Vehicle[276], 0);
	g_Vehicle[277] = CreateVehicle(414, 1842.6187, 2090.4555, 10.8907, 176.3065, -1, -1, 60); //Mule
	//(g_Vehicle[277], 0);
	g_Vehicle[278] = CreateVehicle(436, 1908.1818, 2078.6569, 10.5694, 270.3529, -1, -1, 60); //Previon
	//(g_Vehicle[278], 0);
	g_Vehicle[279] = CreateVehicle(516, 1912.8294, 2158.5737, 10.6164, 271.8315, -1, -1, 60); //Nebula
	g_Vehicle[280] = CreateVehicle(525, 1963.4599, 2171.0207, 10.6913, 257.1353, -1, -1, 60); //Tow Truck
	//(g_Vehicle[280], 0);
	g_Vehicle[281] = CreateVehicle(496, 1993.2475, 2058.3520, 10.5367, 357.2019, -1, -1, 60); //Blista Compact
	//(g_Vehicle[281], 0);
	g_Vehicle[282] = CreateVehicle(535, 2075.9631, 1677.7249, 10.4350, 0.1849, -1, -1, 60); //Slamvan
	//(g_Vehicle[282], 0);
	g_Vehicle[283] = CreateVehicle(418, 2452.3093, 1357.8304, 10.9133, 359.7694, -1, -1, 60); //Moonbeam
	g_Vehicle[284] = CreateVehicle(415, 2447.5729, 1327.1135, 10.5908, 179.6455, -1, -1, 60); //Cheetah
	//(g_Vehicle[284], 0);
	g_Vehicle[285] = CreateVehicle(414, 2612.0541, 1429.5335, 10.9139, 183.7790, -1, -1, 60); //Mule
	//(g_Vehicle[285], 0);
	g_Vehicle[286] = CreateVehicle(420, 2488.5161, 1534.1761, 10.5240, 231.4537, -1, -1, 60); //Taxi
	//(g_Vehicle[286], 0);
	g_Vehicle[287] = CreateVehicle(409, 2481.3876, 1544.0385, 10.5122, 202.9676, -1, -1, 60); //Stretch
	g_Vehicle[288] = CreateVehicle(579, 2498.4194, 1676.3018, 10.5523, 1.3521, -1, -1, 60); //Huntley
	//(g_Vehicle[288], 0);
	g_Vehicle[289] = CreateVehicle(474, 2463.0219, 1676.7266, 10.5831, 359.3128, -1, -1, 60); //Hermes
	//(g_Vehicle[289], 0);
	g_Vehicle[290] = CreateVehicle(518, 2788.6518, 2431.3220, 10.4912, 314.8942, -1, -1, 60); //Buccaneer
	//(g_Vehicle[290], 0);
	g_Vehicle[291] = CreateVehicle(516, 2815.1464, 2406.8417, 10.6541, 315.8334, -1, -1, 60); //Nebula
	g_Vehicle[292] = CreateVehicle(506, 2833.4592, 2309.8750, 10.5247, 179.7436, -1, -1, 60); //Super GT
	//(g_Vehicle[292], 0);
	g_Vehicle[293] = CreateVehicle(516, 2891.3559, 2379.1252, 10.6230, 270.9465, -1, -1, 60); //Nebula
	//(g_Vehicle[293], 0);
	g_Vehicle[294] = CreateVehicle(417, 2093.3754, 2415.1582, 74.7677, 94.3180, -1, -1, 60); //Leviathan
	//(g_Vehicle[294], 0);
	g_Vehicle[295] = CreateVehicle(402, 2095.8645, 2410.8190, 45.0503, 267.7614, -1, -1, 60); //Buffalo
	g_Vehicle[296] = CreateVehicle(516, 2104.4489, 2396.0524, 40.6341, 271.3880, -1, -1, 60); //Nebula
	//(g_Vehicle[296], 0);
	g_Vehicle[297] = CreateVehicle(402, 2095.8437, 2398.7416, 27.8897, 268.8988, -1, -1, 60); //Buffalo
	//(g_Vehicle[297], 0);
	g_Vehicle[298] = CreateVehicle(477, 2086.5783, 2416.6394, 23.4230, 90.8220, -1, -1, 60); //ZR3 50
	//(g_Vehicle[298], 0);
	g_Vehicle[299] = CreateVehicle(516, 2103.9829, 2419.3713, 14.8978, 270.8128, -1, -1, 60); //Nebula
	g_Vehicle[300] = CreateVehicle(561, 2065.8535, 2479.7612, 10.6989, 359.7304, -1, -1, 60); //Stratum
	//(g_Vehicle[300], 0);
	g_Vehicle[301] = CreateVehicle(414, 2130.8403, 2514.2133, 10.9139, 193.6681, -1, -1, 60); //Mule
	//(g_Vehicle[301], 0);
	g_Vehicle[302] = CreateVehicle(410, 1900.4617, 2437.4228, 10.4739, 92.5165, -1, -1, 60); //Manana
	//(g_Vehicle[302], 0);
	g_Vehicle[303] = CreateVehicle(408, 1730.6009, 2336.2702, 11.3684, 2.6345, -1, -1, 60); //Trashmaster
	g_Vehicle[304] = CreateVehicle(486, 2707.1850, 822.1657, 10.7179, 2.5506, -1, -1, 60); //Dozer
	//(g_Vehicle[304], 0);
	g_Vehicle[305] = CreateVehicle(486, 2707.0009, 908.6336, 10.8979, 176.3524, -1, -1, 60); //Dozer
	//(g_Vehicle[305], 0);
	g_Vehicle[306] = CreateVehicle(482, 2697.6645, 885.6911, 10.3113, 271.4880, -1, -1, 60); //Burrito
	//(g_Vehicle[306], 0);
	g_Vehicle[307] = CreateVehicle(554, 2701.6408, 828.3740, 10.1758, 359.8369, -1, -1, 60); //Yosemite
	g_Vehicle[308] = CreateVehicle(524, 2635.2407, 848.0072, 6.7986, 311.1719, -1, -1, 60); //Cement Truck
	//(g_Vehicle[308], 0);
	g_Vehicle[309] = CreateVehicle(524, 2630.1240, 851.0532, 6.9724, 315.8478, -1, -1, 60); //Cement Truck
	//(g_Vehicle[309], 0);
	g_Vehicle[310] = CreateVehicle(530, 2687.1552, 909.9475, 10.4912, 199.4376, -1, -1, 60); //Forklift
	//(g_Vehicle[310], 0);
	g_Vehicle[311] = CreateVehicle(530, 2683.3469, 908.7888, 10.4567, 197.7386, -1, -1, 60); //Forklift
	g_Vehicle[312] = CreateVehicle(455, 2685.8137, 864.3541, 10.3587, 358.5817, -1, -1, 60); //Flatbed
	//(g_Vehicle[312], 0);
	g_Vehicle[313] = CreateVehicle(560, 2705.9064, 788.8524, 10.6036, 359.2398, -1, -1, 60); //Sultan
	//(g_Vehicle[313], 0);
	g_Vehicle[314] = CreateVehicle(403, 2873.0920, 920.3176, 11.3571, 94.3495, -1, -1, 60); //Linerunner
	//(g_Vehicle[314], 0);
	g_Vehicle[315] = CreateVehicle(403, 2873.2282, 913.3621, 11.7676, 85.7951, -1, -1, 60); //Linerunner
	g_Vehicle[316] = CreateVehicle(435, 2855.4206, 896.0324, 11.1716, 359.7547, -1, -1, 60); //Trailer
	//(g_Vehicle[316], 0);
	g_Vehicle[317] = CreateVehicle(435, 2818.0834, 897.6704, 11.3011, 359.2284, -1, -1, 60); //Trailer
	//(g_Vehicle[317], 0);
	g_Vehicle[318] = CreateVehicle(435, 2827.5466, 897.5560, 11.2943, 0.9413, -1, -1, 60); //Trailer
	//(g_Vehicle[318], 0);
	g_Vehicle[319] = CreateVehicle(530, 2884.7033, 941.7673, 10.5160, 90.4366, -1, -1, 60); //Forklift
	g_Vehicle[320] = CreateVehicle(530, 2833.1491, 996.5211, 10.5143, 173.6815, -1, -1, 60); //Forklift
	//(g_Vehicle[320], 0);
	g_Vehicle[321] = CreateVehicle(482, 2805.1533, 968.8242, 10.8708, 178.9078, -1, -1, 60); //Burrito
	//(g_Vehicle[321], 0);
	g_Vehicle[322] = CreateVehicle(560, 2817.4511, 941.4572, 10.4555, 0.9883, -1, -1, 60); //Sultan
	//(g_Vehicle[322], 0);
	g_Vehicle[323] = CreateVehicle(578, 2840.3525, 994.4777, 11.3743, 176.8262, -1, -1, 60); //DFT-30
	g_Vehicle[324] = CreateVehicle(470, -1493.2729, 466.8753, 7.1792, 359.6405, -1, -1, 60); //Patriot
	//(g_Vehicle[324], 0);
	g_Vehicle[325] = CreateVehicle(470, -1456.7275, 456.4802, 7.1827, 1.8611, -1, -1, 60); //Patriot
	//(g_Vehicle[325], 0);
	g_Vehicle[326] = CreateVehicle(470, -1433.3400, 455.8417, 7.1753, 359.2850, -1, -1, 60); //Patriot
	//(g_Vehicle[326], 0);
	g_Vehicle[327] = CreateVehicle(433, -1424.8402, 457.6087, 7.6209, 359.6163, -1, -1, 60); //Barracks
	g_Vehicle[328] = CreateVehicle(433, -1402.0039, 460.9283, 7.6209, 0.1365, -1, -1, 60); //Barracks
	//(g_Vehicle[328], 0);
	g_Vehicle[329] = CreateVehicle(470, -1387.7540, 457.1160, 7.1785, 356.7607, -1, -1, 60); //Patriot
	//(g_Vehicle[329], 0);
	g_Vehicle[330] = CreateVehicle(548, -1269.9818, 501.5400, 18.8271, 88.8878, -1, -1, 60); //Cargobob
	//(g_Vehicle[330], 0);
	g_Vehicle[331] = CreateVehicle(548, -1415.5240, 517.8834, 19.8976, 270.0523, -1, -1, 60); //Cargobob
	g_Vehicle[332] = CreateVehicle(497, -1679.7034, 706.0007, 30.7780, 89.8723, -1, -1, 60); //Police Maverick
	//(g_Vehicle[332], 0);
	g_Vehicle[333] = CreateVehicle(523, -1576.0360, 673.7034, 6.7562, 174.5966, -1, -1, 60); //HPV1000
	//(g_Vehicle[333], 0);
	g_Vehicle[334] = CreateVehicle(523, -1575.9230, 650.4583, 6.7582, 0.9075, -1, -1, 60); //HPV1000
	//(g_Vehicle[334], 0);
	g_Vehicle[335] = CreateVehicle(597, -1593.6232, 651.7213, 6.9566, 1.3898, -1, -1, 60); //Police Car (SFPD)
	g_Vehicle[336] = CreateVehicle(597, -1622.5197, 651.7484, 6.9555, 359.8125, -1, -1, 60); //Police Car (SFPD)
	//(g_Vehicle[336], 0);
	g_Vehicle[337] = CreateVehicle(427, -1634.3652, 653.2299, 7.3194, 359.8378, -1, -1, 60); //Enforcer
	//(g_Vehicle[337], 0);
	g_Vehicle[338] = CreateVehicle(597, -1573.9720, 726.4003, -5.4721, 91.1968, -1, -1, 60); //Police Car (SFPD)
	//(g_Vehicle[338], 0);
	g_Vehicle[339] = CreateVehicle(523, -1612.2232, 674.1516, 6.7544, 184.0847, -1, -1, 60); //HPV1000
	g_Vehicle[340] = CreateVehicle(427, -1600.1411, 678.0488, -5.1103, 1.1345, -1, -1, 60); //Enforcer
	//(g_Vehicle[340], 0);
	g_Vehicle[341] = CreateVehicle(597, -1596.5836, 749.3447, -5.4724, 178.5932, -1, -1, 60); //Police Car (SFPD)
	//(g_Vehicle[341], 0);
	g_Vehicle[342] = CreateVehicle(416, -2643.2285, 630.0391, 14.6034, 87.3836, -1, -1, 60); //Ambulance
	//(g_Vehicle[342], 0);
	g_Vehicle[343] = CreateVehicle(416, -2683.8833, 628.2058, 14.6035, 272.5255, -1, -1, 60); //Ambulance
	g_Vehicle[344] = CreateVehicle(416, -2668.5363, 610.7019, 14.6042, 179.8034, -1, -1, 60); //Ambulance
	//(g_Vehicle[344], 0);
	g_Vehicle[345] = CreateVehicle(416, -2639.3808, 609.7971, 14.6020, 180.4546, -1, -1, 60); //Ambulance
	//(g_Vehicle[345], 0);
	g_Vehicle[346] = CreateVehicle(544, -2053.1835, 75.5581, 28.6257, 91.8533, -1, -1, 60); //Firetruck
	//(g_Vehicle[346], 0);
	g_Vehicle[347] = CreateVehicle(544, -2020.6778, 75.7322, 28.2849, 270.8804, -1, -1, 60); //Firetruck
	g_Vehicle[348] = CreateVehicle(544, -2020.4114, 92.3531, 28.1826, 271.5040, -1, -1, 60); //Firetruck
	//(g_Vehicle[348], 0);
	g_Vehicle[349] = CreateVehicle(472, -1165.9481, 376.5309, 0.1491, 315.1258, -1, -1, 60); //Coastguard
	//(g_Vehicle[349], 0);
	g_Vehicle[350] = CreateVehicle(472, -1421.6274, 285.5732, -0.2879, 265.7999, -1, -1, 60); //Coastguard
	//(g_Vehicle[350], 0);
	g_Vehicle[351] = CreateVehicle(472, -1653.0968, 254.7861, 0.2592, 268.0484, -1, -1, 60); //Coastguard
	g_Vehicle[352] = CreateVehicle(597, -1606.3083, 673.1804, 6.9552, 179.1846, -1, -1, 60); //Police Car (SFPD)
	//(g_Vehicle[352], 0);
	g_Vehicle[353] = CreateVehicle(427, -1582.2725, 672.2100, 7.3207, 180.9813, -1, -1, 60); //Enforcer
	//(g_Vehicle[353], 0);
	g_Vehicle[354] = CreateVehicle(470, -1383.2446, 457.2296, 7.1793, 359.1241, -1, -1, 60); //Patriot
	//(g_Vehicle[354], 0);
	g_Vehicle[355] = CreateVehicle(597, -1610.8358, 651.5051, 6.9563, 359.9974, -1, -1, 60); //Police Car (SFPD)
	g_Vehicle[356] = CreateVehicle(597, -1622.9976, 653.4960, -5.4741, 89.9343, -1, -1, 60); //Police Car (SFPD)
	//(g_Vehicle[356], 0);
	g_Vehicle[357] = CreateVehicle(597, -1639.4895, 677.9890, -5.4742, 269.9375, -1, -1, 60); //Police Car (SFPD)
	//(g_Vehicle[357], 0);
	g_Vehicle[358] = CreateVehicle(548, -1415.3322, 492.7466, 19.8675, 271.5520, -1, -1, 60); //Cargobob
	//(g_Vehicle[358], 0);
	g_Vehicle[359] = CreateVehicle(548, -1304.2272, 507.9385, 19.8768, 269.1332, -1, -1, 60); //Cargobob
	g_Vehicle[360] = CreateVehicle(433, -1362.9228, 458.9281, 7.6241, 357.4277, -1, -1, 60); //Barracks
	//(g_Vehicle[360], 0);
	g_Vehicle[361] = CreateVehicle(433, -1529.5906, 457.3812, 7.6237, 358.3717, -1, -1, 60); //Barracks
	//(g_Vehicle[361], 0);
	g_Vehicle[362] = CreateVehicle(485, -1644.8494, -593.8190, 13.8044, 244.2474, -1, -1, 60); //Baggage
	//(g_Vehicle[362], 0);
	g_Vehicle[363] = CreateVehicle(485, -1433.6988, -639.9345, 13.8058, 351.8341, -1, -1, 60); //Baggage
	g_Vehicle[364] = CreateVehicle(485, -1354.3955, -426.7434, 13.8022, 293.6213, -1, -1, 60); //Baggage
	//(g_Vehicle[364], 0);
	g_Vehicle[365] = CreateVehicle(485, -1284.1955, 60.9789, 13.8073, 96.5167, -1, -1, 60); //Baggage
	//(g_Vehicle[365], 0);
	g_Vehicle[366] = CreateVehicle(485, -1556.3771, -156.9351, 13.8066, 135.6197, -1, -1, 60); //Baggage
	//(g_Vehicle[366], 0);
	g_Vehicle[367] = CreateVehicle(592, -1562.6097, -191.8930, 15.3402, 135.3354, -1, -1, 60); //Andromada
	g_Vehicle[368] = CreateVehicle(583, -1467.6940, -68.7158, 13.6890, 135.9720, -1, -1, 60); //Tug
	//(g_Vehicle[368], 0);
	g_Vehicle[369] = CreateVehicle(583, -1438.1007, -178.1786, 13.6843, 333.7911, -1, -1, 60); //Tug
	//(g_Vehicle[369], 0);
	g_Vehicle[370] = CreateVehicle(583, -1396.8985, -226.8979, 13.6890, 329.7987, -1, -1, 60); //Tug
	//(g_Vehicle[370], 0);
	g_Vehicle[371] = CreateVehicle(583, -1634.3321, -377.9814, 13.6890, 335.1347, -1, -1, 60); //Tug
	g_Vehicle[372] = CreateVehicle(583, -1299.0438, -286.9009, 13.6891, 341.6254, -1, -1, 60); //Tug
	//(g_Vehicle[372], 0);
	g_Vehicle[373] = CreateVehicle(525, -1354.0233, -375.1030, 14.0255, 263.6050, -1, -1, 60); //Tow Truck
	//(g_Vehicle[373], 0);
	g_Vehicle[374] = CreateVehicle(513, -1285.7554, 24.0492, 14.6992, 121.8479, -1, -1, 60); //Stunt
	//(g_Vehicle[374], 0);
	g_Vehicle[375] = CreateVehicle(513, -1260.6040, 7.5346, 14.7069, 118.6240, -1, -1, 60); //Stunt
	g_Vehicle[376] = CreateVehicle(511, -1704.6076, -239.2015, 15.5221, 314.2836, -1, -1, 60); //Beagle
	//(g_Vehicle[376], 0);
	g_Vehicle[377] = CreateVehicle(476, -1367.2608, -485.4558, 14.8787, 209.5812, -1, -1, 60); //Rustler
	//(g_Vehicle[377], 0);
	g_Vehicle[378] = CreateVehicle(476, -1440.4190, -526.5578, 14.8938, 207.2082, -1, -1, 60); //Rustler
	//(g_Vehicle[378], 0);
	g_Vehicle[379] = CreateVehicle(519, -1371.1774, -232.3966, 15.0767, 315.6229, -1, -1, 60); //Shamal
	g_Vehicle[380] = CreateVehicle(519, -1341.1079, -254.3786, 15.0773, 321.6315, -1, -1, 60); //Shamal
	//(g_Vehicle[380], 0);
	g_Vehicle[381] = CreateVehicle(420, -1472.3452, -272.3331, 13.7749, 78.9963, -1, -1, 60); //Taxi
	//(g_Vehicle[381], 0);
	g_Vehicle[382] = CreateVehicle(420, -1459.8146, -275.6010, 13.8145, 65.6229, -1, -1, 60); //Taxi
	//(g_Vehicle[382], 0);
	g_Vehicle[383] = CreateVehicle(420, -1439.7111, -284.8562, 13.8130, 58.6120, -1, -1, 60); //Taxi
	g_Vehicle[384] = CreateVehicle(420, -1421.4267, -298.8920, 13.7817, 46.1680, -1, -1, 60); //Taxi
	//(g_Vehicle[384], 0);
	g_Vehicle[385] = CreateVehicle(519, -1331.5316, -618.3226, 15.0628, 325.7105, -1, -1, 60); //Shamal
	//(g_Vehicle[385], 0);
	g_Vehicle[386] = CreateVehicle(593, -1384.5904, -625.2683, 14.6114, 321.7572, -1, -1, 60); //Dodo
	//(g_Vehicle[386], 0);
	g_Vehicle[387] = CreateVehicle(511, -1449.8150, -617.1895, 15.5199, 329.7998, -1, -1, 60); //Beagle
	g_Vehicle[388] = CreateVehicle(593, -1325.9851, -276.6170, 14.6106, 296.5465, -1, -1, 60); //Dodo
	//(g_Vehicle[388], 0);
	g_Vehicle[389] = CreateVehicle(563, -1598.6352, -615.8721, 14.8536, 276.2098, -1, -1, 60); //Raindance
	//(g_Vehicle[389], 0);
	g_Vehicle[390] = CreateVehicle(476, -1426.4313, -518.3583, 14.8957, 180.5740, -1, -1, 60); //Rustler
	//(g_Vehicle[390], 0);
	g_Vehicle[391] = CreateVehicle(513, -1281.6588, -627.3806, 14.6996, 356.9070, -1, -1, 60); //Stunt
	g_Vehicle[392] = CreateVehicle(519, -1299.0974, -353.5505, 15.0715, 278.4124, -1, -1, 60); //Shamal
	//(g_Vehicle[392], 0);
	g_Vehicle[393] = CreateVehicle(487, -1182.6599, 22.4606, 14.3250, 45.0603, -1, -1, 60); //Maverick
	//(g_Vehicle[393], 0);
	g_Vehicle[394] = CreateVehicle(417, -1222.6131, -11.1499, 14.2353, 42.9827, -1, -1, 60); //Leviathan
	//(g_Vehicle[394], 0);
	g_Vehicle[395] = CreateVehicle(544, -1258.5738, 68.2614, 14.3863, 43.9776, -1, -1, 60); //Firetruck
	g_Vehicle[396] = CreateVehicle(544, -1262.4765, 64.5995, 14.3816, 43.9012, -1, -1, 60); //Firetruck
	//(g_Vehicle[396], 0);
	g_Vehicle[397] = CreateVehicle(415, -2089.7453, -85.3182, 34.9356, 0.0900, -1, -1, 60); //Cheetah
	//(g_Vehicle[397], 0);
	g_Vehicle[398] = CreateVehicle(415, -2076.7392, -84.4259, 34.8911, 357.8583, -1, -1, 60); //Cheetah
	//(g_Vehicle[398], 0);
	g_Vehicle[399] = CreateVehicle(504, -2091.6350, -106.7602, 35.1124, 179.5832, -1, -1, 60); //Bloodring Banger
	g_Vehicle[400] = CreateVehicle(560, -2396.2221, -594.7454, 132.3533, 123.1677, -1, -1, 60); //Sultan
	//(g_Vehicle[400], 0);
	g_Vehicle[401] = CreateVehicle(411, -2414.5781, -586.8557, 132.3755, 215.3865, -1, -1, 60); //Infernus
	//(g_Vehicle[401], 0);
	g_Vehicle[402] = CreateVehicle(482, -2527.9174, -602.6951, 132.6174, 179.0377, -1, -1, 60); //Burrito
	//(g_Vehicle[402], 0);
	g_Vehicle[403] = CreateVehicle(451, -2517.0480, -601.8521, 132.2689, 179.6374, -1, -1, 60); //Turismo
	g_Vehicle[404] = CreateVehicle(522, -2494.2900, -601.8505, 132.1325, 178.4420, -1, -1, 60); //NRG-500
	//(g_Vehicle[404], 0);
	g_Vehicle[405] = CreateVehicle(522, -2622.9067, -509.6570, 70.9033, 284.9870, -1, -1, 60); //NRG-500
	//(g_Vehicle[405], 0);
	g_Vehicle[406] = CreateVehicle(405, -2747.2739, -306.4047, 6.9131, 50.7010, -1, -1, 60); //Sentinel
	//(g_Vehicle[406], 0);
	g_Vehicle[407] = CreateVehicle(505, -2774.2707, -281.9049, 6.7476, 178.6849, -1, -1, 60); //Rancher
	g_Vehicle[408] = CreateVehicle(409, -2738.0175, -322.8980, 6.8390, 313.5169, -1, -1, 60); //Stretch
	//(g_Vehicle[408], 0);
	g_Vehicle[409] = CreateVehicle(457, -2657.9008, -290.8439, 7.1044, 313.4401, -1, -1, 60); //Caddy
	//(g_Vehicle[409], 0);
	g_Vehicle[410] = CreateVehicle(457, -2652.5388, -295.5096, 7.1100, 312.4089, -1, -1, 60); //Caddy
	//(g_Vehicle[410], 0);
	g_Vehicle[411] = CreateVehicle(457, -2644.5061, -290.4049, 7.1283, 139.4790, -1, -1, 60); //Caddy
	g_Vehicle[412] = CreateVehicle(457, -2650.2507, -284.7023, 7.1297, 137.3287, -1, -1, 60); //Caddy
	//(g_Vehicle[412], 0);
	g_Vehicle[413] = CreateVehicle(475, -2718.7565, -181.6170, 3.9921, 269.6130, -1, -1, 60); //Sabre
	//(g_Vehicle[413], 0);
	g_Vehicle[414] = CreateVehicle(411, -2692.3339, -83.6104, 4.7104, 90.7628, -1, -1, 60); //Infernus
	//(g_Vehicle[414], 0);
	g_Vehicle[415] = CreateVehicle(560, -2682.6699, -22.7127, 4.3281, 178.6174, -1, -1, 60); //Sultan
	g_Vehicle[416] = CreateVehicle(560, -2627.3579, -34.8250, 4.0416, 181.9430, -1, -1, 60); //Sultan
	//(g_Vehicle[416], 0);
	g_Vehicle[417] = CreateVehicle(482, -2729.5671, 76.7875, 4.4510, 87.5420, -1, -1, 60); //Burrito
	//(g_Vehicle[417], 0);
	g_Vehicle[418] = CreateVehicle(579, -2484.3000, 5.7673, 25.5543, 91.3107, -1, -1, 60); //Huntley
	//(g_Vehicle[418], 0);
	g_Vehicle[419] = CreateVehicle(567, -2528.8881, -5.5796, 25.4874, 271.5340, -1, -1, 60); //Savanna
	g_Vehicle[420] = CreateVehicle(429, -2592.7731, -110.8420, 3.9305, 89.9971, -1, -1, 60); //Banshee
	//(g_Vehicle[420], 0);
	g_Vehicle[421] = CreateVehicle(415, -2615.9045, -178.3202, 4.1076, 269.3110, -1, -1, 60); //Cheetah
	//(g_Vehicle[421], 0);
	g_Vehicle[422] = CreateVehicle(480, -2352.2312, -124.4615, 34.9707, 179.3509, -1, -1, 60); //Comet
	//(g_Vehicle[422], 0);
	g_Vehicle[423] = CreateVehicle(448, -2319.5144, -150.8683, 35.1509, 176.9123, -1, -1, 60); //Pizzaboy
	g_Vehicle[424] = CreateVehicle(535, -2099.2341, -36.4292, 35.1021, 357.3710, -1, -1, 60); //Slamvan
	//(g_Vehicle[424], 0);
	g_Vehicle[425] = CreateVehicle(535, -2021.4100, -47.6897, 35.1865, 184.1009, -1, -1, 60); //Slamvan
	//(g_Vehicle[425], 0);
	g_Vehicle[426] = CreateVehicle(535, -2085.3666, 61.6716, 34.2268, 88.7157, -1, -1, 60); //Slamvan
	//(g_Vehicle[426], 0);
	g_Vehicle[427] = CreateVehicle(567, -2357.8166, -43.2393, 35.1865, 90.6813, -1, -1, 60); //Savanna
	g_Vehicle[428] = CreateVehicle(403, -1855.5706, -176.4485, 9.9250, 270.1853, -1, -1, 60); //Linerunner
	//(g_Vehicle[428], 0);
	g_Vehicle[429] = CreateVehicle(492, -1821.1146, -161.7525, 9.1873, 164.9685, -1, -1, 60); //Greenwood
	//(g_Vehicle[429], 0);
	g_Vehicle[430] = CreateVehicle(530, -1694.7193, 8.6604, 3.3136, 348.2750, -1, -1, 60); //Forklift
	//(g_Vehicle[430], 0);
	g_Vehicle[431] = CreateVehicle(530, -1712.0933, 10.8106, 3.3879, 303.1499, -1, -1, 60); //Forklift
	g_Vehicle[432] = CreateVehicle(530, -1716.6062, 19.1023, 3.3436, 273.4996, -1, -1, 60); //Forklift
	//(g_Vehicle[432], 0);
	g_Vehicle[433] = CreateVehicle(530, -1700.6174, 6.2953, 3.3148, 352.1076, -1, -1, 60); //Forklift
	//(g_Vehicle[433], 0);
	g_Vehicle[434] = CreateVehicle(522, -1697.8990, 63.3702, 3.1263, 301.0492, -1, -1, 60); //NRG-500
	//(g_Vehicle[434], 0);
	g_Vehicle[435] = CreateVehicle(522, -1682.4490, 41.4261, 3.1198, 338.2361, -1, -1, 60); //NRG-500
	g_Vehicle[436] = CreateVehicle(522, -1694.0885, 48.6862, 3.1206, 317.3057, -1, -1, 60); //NRG-500
	//(g_Vehicle[436], 0);
	g_Vehicle[437] = CreateVehicle(493, -1760.9097, -193.8202, -0.1218, 266.3580, -1, -1, 60); //Jetmax
	//(g_Vehicle[437], 0);
	g_Vehicle[438] = CreateVehicle(426, -1669.5262, -33.8695, 3.3108, 314.1520, -1, -1, 60); //Premier
	//(g_Vehicle[438], 0);
	g_Vehicle[439] = CreateVehicle(403, -1837.5128, -15.2423, 15.6986, 271.1784, -1, -1, 60); //Linerunner
	g_Vehicle[440] = CreateVehicle(426, -1839.7010, -21.5650, 14.8601, 265.8796, -1, -1, 60); //Premier
	//(g_Vehicle[440], 0);
	g_Vehicle[441] = CreateVehicle(421, -1885.3856, -161.3161, 11.6546, 355.7334, -1, -1, 60); //Washington
	//(g_Vehicle[441], 0);
	g_Vehicle[442] = CreateVehicle(482, -1861.0438, -140.4725, 12.0200, 87.6605, -1, -1, 60); //Burrito
	//(g_Vehicle[442], 0);
	g_Vehicle[443] = CreateVehicle(567, -2124.6743, -242.8083, 35.1864, 18.3731, -1, -1, 60); //Savanna
	g_Vehicle[444] = CreateVehicle(545, -2485.9868, 97.9313, 34.9679, 268.0125, -1, -1, 60); //Hustler
	//(g_Vehicle[444], 0);
	g_Vehicle[445] = CreateVehicle(533, -2484.7358, 65.7313, 25.3992, 358.7398, -1, -1, 60); //Feltzer
	//(g_Vehicle[445], 0);
	g_Vehicle[446] = CreateVehicle(462, -2694.2021, 68.7380, 3.9321, 85.6921, -1, -1, 60); //Faggio
	//(g_Vehicle[446], 0);
	g_Vehicle[447] = CreateVehicle(424, -2941.3359, -794.7429, 6.8569, 340.8897, -1, -1, 60); //BF Injection
	g_Vehicle[448] = CreateVehicle(424, -2938.8164, -818.2305, 7.0451, 13.5219, -1, -1, 60); //BF Injection
	//(g_Vehicle[448], 0);
	g_Vehicle[449] = CreateVehicle(473, -2987.2434, -861.8029, -0.8946, 144.9324, -1, -1, 60); //Dinghy
	//(g_Vehicle[449], 0);
	g_Vehicle[450] = CreateVehicle(473, -2967.3806, -684.3900, 0.0676, 351.0859, -1, -1, 60); //Dinghy
	//(g_Vehicle[450], 0);
	g_Vehicle[451] = CreateVehicle(473, -2954.7387, -498.1348, 0.0154, 5.6708, -1, -1, 60); //Dinghy
	g_Vehicle[452] = CreateVehicle(493, -2947.7612, -364.1318, -0.5123, 78.4237, -1, -1, 60); //Jetmax
	//(g_Vehicle[452], 0);
	g_Vehicle[453] = CreateVehicle(461, -2068.5419, -503.7955, 35.0035, 182.6851, -1, -1, 60); //PCJ-600
	//(g_Vehicle[453], 0);
	g_Vehicle[454] = CreateVehicle(483, -1906.4901, -611.7230, 24.5862, 319.5491, -1, -1, 60); //Camper
	//(g_Vehicle[454], 0);
	g_Vehicle[455] = CreateVehicle(411, -2148.7424, -922.7523, 31.7504, 267.8837, -1, -1, 60); //Infernus
	g_Vehicle[456] = CreateVehicle(411, -2125.3806, -885.7675, 31.7504, 270.2341, -1, -1, 60); //Infernus
	//(g_Vehicle[456], 0);
	g_Vehicle[457] = CreateVehicle(482, -1871.7641, -874.4785, 32.1329, 90.1094, -1, -1, 60); //Burrito
	//(g_Vehicle[457], 0);
	g_Vehicle[458] = CreateVehicle(411, -1872.5655, -957.2282, 31.7504, 88.9793, -1, -1, 60); //Infernus
	//(g_Vehicle[458], 0);
	g_Vehicle[459] = CreateVehicle(400, -1821.8348, -886.4155, 42.0592, 175.1723, -1, -1, 60); //Landstalker
	g_Vehicle[460] = CreateVehicle(512, -1431.6895, -954.0374, 201.2351, 273.5343, -1, -1, 60); //Cropdust
	//(g_Vehicle[460], 0);
	g_Vehicle[461] = CreateVehicle(512, -1432.9871, -942.3372, 201.3755, 274.4436, -1, -1, 60); //Cropdust
	//(g_Vehicle[461], 0);
	g_Vehicle[462] = CreateVehicle(461, -2205.1782, -310.5668, 35.2393, 330.2716, -1, -1, 60); //PCJ-600
	//(g_Vehicle[462], 0);
	g_Vehicle[463] = CreateVehicle(482, -2216.4528, -85.7872, 35.4346, 1.2615, -1, -1, 60); //Burrito
	g_Vehicle[464] = CreateVehicle(498, -2115.4626, -3.3854, 35.3871, 269.2903, -1, -1, 60); //Boxville
	//(g_Vehicle[464], 0);
	g_Vehicle[465] = CreateVehicle(437, -2092.6289, -381.4248, 35.4662, 89.8968, -1, -1, 60); //Coach
	//(g_Vehicle[465], 0);
	g_Vehicle[466] = CreateVehicle(437, -2201.6950, -406.7656, 35.4693, 228.5155, -1, -1, 60); //Coach
	//(g_Vehicle[466], 0);
	g_Vehicle[467] = CreateVehicle(437, -2047.2310, -528.4993, 35.4646, 286.8039, -1, -1, 60); //Coach
	g_Vehicle[468] = CreateVehicle(455, -1578.2034, 97.3174, 4.1609, 135.9403, -1, -1, 60); //Flatbed
	//(g_Vehicle[468], 0);
	g_Vehicle[469] = CreateVehicle(443, -1747.0640, -164.1042, 4.1859, 39.5811, -1, -1, 60); //Packer
	//(g_Vehicle[469], 0);
	g_Vehicle[470] = CreateVehicle(545, -2267.1362, 85.5752, 34.9678, 269.1610, -1, -1, 60); //Hustler
	//(g_Vehicle[470], 0);
	g_Vehicle[471] = CreateVehicle(496, -2264.8977, 200.3979, 34.8805, 89.9701, -1, -1, 60); //Blista Compact
	g_Vehicle[472] = CreateVehicle(536, -2216.8618, 113.6911, 35.0595, 88.9417, -1, -1, 60); //Blade
	//(g_Vehicle[472], 0);
	g_Vehicle[473] = CreateVehicle(409, -2414.7739, 331.6805, 34.7672, 331.1144, -1, -1, 60); //Stretch
	//(g_Vehicle[473], 0);
	g_Vehicle[474] = CreateVehicle(405, -2452.8603, 138.2975, 34.8353, 46.6419, -1, -1, 60); //Sentinel
	//(g_Vehicle[474], 0);
	g_Vehicle[475] = CreateVehicle(461, -2523.0012, 338.5650, 34.6931, 250.6181, -1, -1, 60); //PCJ-600
	g_Vehicle[476] = CreateVehicle(439, -2502.7299, 382.2402, 35.0181, 235.8173, -1, -1, 60); //Stallion
	//(g_Vehicle[476], 0);
	g_Vehicle[477] = CreateVehicle(400, -2470.8625, 407.1817, 27.8696, 139.4656, -1, -1, 60); //Landstalker
	//(g_Vehicle[477], 0);
	g_Vehicle[478] = CreateVehicle(496, -2522.4218, 310.7948, 27.4815, 70.6664, -1, -1, 60); //Blista Compact
	//(g_Vehicle[478], 0);
	g_Vehicle[479] = CreateVehicle(428, -2440.9980, 509.6791, 30.0562, 206.6596, -1, -1, 60); //Securicar
	g_Vehicle[480] = CreateVehicle(428, -2437.7600, 510.8552, 30.0506, 202.1894, -1, -1, 60); //Securicar
	//(g_Vehicle[480], 0);
	g_Vehicle[481] = CreateVehicle(560, -2425.6440, 518.4799, 29.6347, 216.9741, -1, -1, 60); //Sultan
	//(g_Vehicle[481], 0);
	g_Vehicle[482] = CreateVehicle(463, -2473.4978, 743.3479, 34.5559, 179.9891, -1, -1, 60); //Freeway
	//(g_Vehicle[482], 0);
	g_Vehicle[483] = CreateVehicle(561, -2412.3730, 741.7963, 34.8297, 179.4120, -1, -1, 60); //Stratum
	g_Vehicle[484] = CreateVehicle(463, -2451.2592, 740.6837, 34.7128, 180.6275, -1, -1, 60); //Freeway
	//(g_Vehicle[484], 0);
	g_Vehicle[485] = CreateVehicle(467, -2248.2617, 692.7662, 49.1081, 179.2398, -1, -1, 60); //Oceanic
	//(g_Vehicle[485], 0);
	g_Vehicle[486] = CreateVehicle(405, -2151.4057, 637.0889, 52.1898, 182.3598, -1, -1, 60); //Sentinel
	//(g_Vehicle[486], 0);
	g_Vehicle[487] = CreateVehicle(405, -2134.6875, 686.8920, 63.7560, 178.3475, -1, -1, 60); //Sentinel
	g_Vehicle[488] = CreateVehicle(409, -1951.6524, 724.5811, 45.1671, 270.0913, -1, -1, 60); //Stretch
	//(g_Vehicle[488], 0);
	g_Vehicle[489] = CreateVehicle(429, -1941.2656, 585.4785, 34.7952, 359.2308, -1, -1, 60); //Banshee
	//(g_Vehicle[489], 0);
	g_Vehicle[490] = CreateVehicle(439, -1922.0645, 303.6586, 40.9425, 177.2474, -1, -1, 60); //Stallion
	//(g_Vehicle[490], 0);
	g_Vehicle[491] = CreateVehicle(461, -1974.6829, 170.9425, 27.3574, 271.5703, -1, -1, 60); //PCJ-600
	g_Vehicle[492] = CreateVehicle(420, -1987.9830, 104.7277, 27.3169, 0.4059, -1, -1, 60); //Taxi
	//(g_Vehicle[492], 0);
	g_Vehicle[493] = CreateVehicle(420, -1988.1043, 147.8746, 27.3176, 0.2008, -1, -1, 60); //Taxi
	//(g_Vehicle[493], 0);
	g_Vehicle[494] = CreateVehicle(467, -2922.5258, 428.7520, 4.6539, 276.2402, -1, -1, 60); //Oceanic
	//(g_Vehicle[494], 0);
	g_Vehicle[495] = CreateVehicle(493, -2981.0246, 496.3421, -0.6553, 1.5943, -1, -1, 60); //Jetmax
	g_Vehicle[496] = CreateVehicle(549, -2578.6179, 626.5598, 27.4437, 359.1448, -1, -1, 60); //Tampa
	//(g_Vehicle[496], 0);
	g_Vehicle[497] = CreateVehicle(575, -2610.8422, 1405.6121, 6.7506, 270.0862, -1, -1, 60); //Broadway
	//(g_Vehicle[497], 0);
	g_Vehicle[498] = CreateVehicle(411, -1663.4687, 1211.4713, 6.9794, 276.9534, -1, -1, 60); //Infernus
	//(g_Vehicle[498], 0);
	g_Vehicle[499] = CreateVehicle(558, -1656.2697, 1208.2489, 20.7791, 268.6007, -1, -1, 60); //Uranus
	g_Vehicle[500] = CreateVehicle(558, -1660.5311, 1215.1491, 20.7868, 315.8402, -1, -1, 60); //Uranus
	//(g_Vehicle[500], 0);
	g_Vehicle[501] = CreateVehicle(451, -1650.9477, 1208.6367, 13.3796, 247.0128, -1, -1, 60); //Turismo
	//(g_Vehicle[501], 0);
	g_Vehicle[502] = CreateVehicle(451, -1656.4870, 1215.6763, 13.4253, 259.0971, -1, -1, 60); //Turismo
	//(g_Vehicle[502], 0);
	g_Vehicle[503] = CreateVehicle(560, -2047.9235, 901.2451, 53.3068, 356.4078, -1, -1, 60); //Sultan
	g_Vehicle[504] = CreateVehicle(560, -2105.8264, 901.4780, 76.3013, 4.8684, -1, -1, 60); //Sultan
	//(g_Vehicle[504], 0);
	g_Vehicle[505] = CreateVehicle(500, -2927.3159, 500.5060, 5.0167, 268.8409, -1, -1, 60); //Mesa
	//(g_Vehicle[505], 0);
	g_Vehicle[506] = CreateVehicle(409, -2752.1567, 374.9531, 3.9412, 179.1495, -1, -1, 60); //Stretch
	//(g_Vehicle[506], 0);
	g_Vehicle[507] = CreateVehicle(405, -2657.6784, 374.4563, 4.1076, 1.3494, -1, -1, 60); //Sentinel
	g_Vehicle[508] = CreateVehicle(426, -2664.9829, 267.9180, 4.0801, 0.0174, -1, -1, 60); //Premier
	//(g_Vehicle[508], 0);
	g_Vehicle[509] = CreateVehicle(439, -2681.6306, 267.9997, 4.2312, 358.7698, -1, -1, 60); //Stallion
	//(g_Vehicle[509], 0);
	g_Vehicle[510] = CreateVehicle(462, -2636.0246, 247.4893, 3.9279, 163.5247, -1, -1, 60); //Faggio
	//(g_Vehicle[510], 0);
	g_Vehicle[511] = CreateVehicle(559, -2691.8088, 204.5243, 3.9923, 359.4067, -1, -1, 60); //Jester
	g_Vehicle[512] = CreateVehicle(496, -2793.0317, 229.3433, 6.8049, 89.8252, -1, -1, 60); //Blista Compact
	//(g_Vehicle[512], 0);
	g_Vehicle[513] = CreateVehicle(560, -2710.5634, 128.6468, 3.9600, 177.1885, -1, -1, 60); //Sultan
	//(g_Vehicle[513], 0);
	g_Vehicle[514] = CreateVehicle(533, -2613.6999, 205.8831, 4.6949, 1.1401, -1, -1, 60); //Feltzer
	//(g_Vehicle[514], 0);
	g_Vehicle[515] = CreateVehicle(526, -2616.9362, 71.5615, 4.1026, 268.8822, -1, -1, 60); //Fortune
	g_Vehicle[516] = CreateVehicle(436, -2546.9377, -142.7183, 13.8009, 0.8366, -1, -1, 60); //Previon
	//(g_Vehicle[516], 0);
	g_Vehicle[517] = CreateVehicle(517, -2459.4772, -150.5229, 25.7609, 1.8047, -1, -1, 60); //Majestic
	//(g_Vehicle[517], 0);
	g_Vehicle[518] = CreateVehicle(496, -2592.9809, -191.1820, 3.9749, 91.0988, -1, -1, 60); //Blista Compact
	//(g_Vehicle[518], 0);
	g_Vehicle[519] = CreateVehicle(475, -2694.0012, -147.6345, 4.0511, 90.9209, -1, -1, 60); //Sabre
	g_Vehicle[520] = CreateVehicle(421, -2796.6198, -184.0406, 6.8207, 91.6072, -1, -1, 60); //Washington
	//(g_Vehicle[520], 0);
	g_Vehicle[521] = CreateVehicle(566, -2796.3051, -39.5261, 7.0876, 89.8012, -1, -1, 60); //Tahoma
	//(g_Vehicle[521], 0);
	g_Vehicle[522] = CreateVehicle(467, -2878.8959, 734.5535, 29.3162, 280.5989, -1, -1, 60); //Oceanic
	//(g_Vehicle[522], 0);
	g_Vehicle[523] = CreateVehicle(482, -2462.1184, 793.0872, 35.2270, 93.7908, -1, -1, 60); //Burrito
	g_Vehicle[524] = CreateVehicle(439, -2380.2780, 1269.3492, 25.1014, 277.3688, -1, -1, 60); //Stallion
	//(g_Vehicle[524], 0);
	g_Vehicle[525] = CreateVehicle(522, -1821.9444, 1310.5369, 59.3069, 186.3878, -1, -1, 60); //NRG-500
	//(g_Vehicle[525], 0);
	g_Vehicle[526] = CreateVehicle(475, -1829.7480, 1289.9833, 59.8258, 21.8999, -1, -1, 60); //Sabre
	//(g_Vehicle[526], 0);
	g_Vehicle[527] = CreateVehicle(475, -1842.0275, 1304.4764, 59.5340, 198.8919, -1, -1, 60); //Sabre
	g_Vehicle[528] = CreateVehicle(405, -1755.8067, 953.2105, 24.6170, 84.9867, -1, -1, 60); //Sentinel
	//(g_Vehicle[528], 0);
	g_Vehicle[529] = CreateVehicle(480, -1686.7346, 1007.9661, 17.3024, 92.5729, -1, -1, 60); //Comet
	//(g_Vehicle[529], 0);
	g_Vehicle[530] = CreateVehicle(405, -1587.0150, 859.0454, 7.4098, 90.4344, -1, -1, 60); //Sentinel
	//(g_Vehicle[530], 0);
	g_Vehicle[531] = CreateVehicle(439, -1629.2558, 870.3281, 8.1322, 177.2776, -1, -1, 60); //Stallion
	g_Vehicle[532] = CreateVehicle(533, -1707.0554, 795.3817, 24.5184, 2.4474, -1, -1, 60); //Feltzer
	//(g_Vehicle[532], 0);
	g_Vehicle[533] = CreateVehicle(453, -1463.8043, 1023.7324, -0.2395, 269.1419, -1, -1, 60); //Reefer
	//(g_Vehicle[533], 0);
	g_Vehicle[534] = CreateVehicle(473, -1509.0499, 1385.6210, -0.2874, 114.2091, -1, -1, 60); //Dinghy
	//(g_Vehicle[534], 0);
	g_Vehicle[535] = CreateVehicle(417, -1468.1395, 1490.9219, 8.3432, 92.3863, -1, -1, 60); //Leviathan
	g_Vehicle[536] = CreateVehicle(417, -2311.2692, 1544.9398, 18.8852, 183.6455, -1, -1, 60); //Leviathan
	//(g_Vehicle[536], 0);
	g_Vehicle[537] = CreateVehicle(469, -2514.7387, 1545.1013, 17.3351, 349.7112, -1, -1, 60); //Sparrow
	//(g_Vehicle[537], 0);
	g_Vehicle[538] = CreateVehicle(473, -2432.8537, 1568.3924, -0.0527, 353.0694, -1, -1, 60); //Dinghy
	//(g_Vehicle[538], 0);
	g_Vehicle[539] = CreateVehicle(473, -2434.4873, 1571.9755, -0.1826, 348.1105, -1, -1, 60); //Dinghy
	g_Vehicle[540] = CreateVehicle(521, -2501.2534, 1222.1890, 36.9991, 139.5935, -1, -1, 60); //FCR-900
	//(g_Vehicle[540], 0);
	g_Vehicle[541] = CreateVehicle(496, -2867.3278, 695.7775, 23.2882, 296.3333, -1, -1, 60); //Blista Compact
	//(g_Vehicle[541], 0);
	g_Vehicle[542] = CreateVehicle(496, -2857.4624, 830.0972, 39.8342, 238.8571, -1, -1, 60); //Blista Compact
	//(g_Vehicle[542], 0);
	g_Vehicle[543] = CreateVehicle(401, -2836.6306, 870.4558, 43.7638, 267.2119, -1, -1, 60); //Bravura
	g_Vehicle[544] = CreateVehicle(401, -2839.8884, 925.7379, 43.8342, 274.0427, -1, -1, 60); //Bravura
	//(g_Vehicle[544], 0);
	g_Vehicle[545] = CreateVehicle(410, -2855.1916, 962.1486, 43.6477, 294.1936, -1, -1, 60); //Manana
	//(g_Vehicle[545], 0);
	g_Vehicle[546] = CreateVehicle(516, -2900.1345, 1104.5037, 26.8936, 272.1553, -1, -1, 60); //Nebula
	//(g_Vehicle[546], 0);
	g_Vehicle[547] = CreateVehicle(418, -2898.4970, 1161.4401, 13.5038, 272.4667, -1, -1, 60); //Moonbeam
	g_Vehicle[548] = CreateVehicle(415, -2722.1972, 980.1292, 54.2327, 9.4434, -1, -1, 60); //Cheetah
	//(g_Vehicle[548], 0);
	g_Vehicle[549] = CreateVehicle(411, -2728.2145, 910.1182, 67.3208, 153.1184, -1, -1, 60); //Infernus
	//(g_Vehicle[549], 0);
	g_Vehicle[550] = CreateVehicle(421, -2634.7214, 929.3314, 71.3154, 214.6020, -1, -1, 60); //Washington
	//(g_Vehicle[550], 0);
	g_Vehicle[551] = CreateVehicle(405, -2680.4904, 869.2202, 76.4497, 23.7849, -1, -1, 60); //Sentinel
	g_Vehicle[552] = CreateVehicle(558, -2650.5451, 856.2390, 63.6388, 312.0351, -1, -1, 60); //Uranus
	//(g_Vehicle[552], 0);
	g_Vehicle[553] = CreateVehicle(418, -2205.7360, 293.8082, 35.2103, 359.0112, -1, -1, 60); //Moonbeam
	//(g_Vehicle[553], 0);
	g_Vehicle[554] = CreateVehicle(400, -2231.1545, 293.4678, 35.2611, 1.3596, -1, -1, 60); //Landstalker
	//(g_Vehicle[554], 0);
	g_Vehicle[555] = CreateVehicle(426, -2792.9804, 785.0925, 49.5488, 17.1912, -1, -1, 60); //Premier
	g_Vehicle[556] = CreateVehicle(533, -1997.0570, 708.1403, 45.0732, 359.8203, -1, -1, 60); //Feltzer
	//(g_Vehicle[556], 0);
	g_Vehicle[557] = CreateVehicle(536, -2098.6618, 653.4818, 52.1044, 178.5289, -1, -1, 60); //Blade
	//(g_Vehicle[557], 0);
	g_Vehicle[558] = CreateVehicle(475, -1772.8361, 1205.1267, 24.9263, 128.7471, -1, -1, 60); //Sabre
	//(g_Vehicle[558], 0);
	g_Vehicle[559] = CreateVehicle(482, -1698.9234, 1029.1210, 45.2639, 163.2026, -1, -1, 60); //Burrito
	g_Vehicle[560] = CreateVehicle(421, -1915.2972, 792.2175, 39.5330, 271.2569, -1, -1, 60); //Washington
	//(g_Vehicle[560], 0);
	g_Vehicle[561] = CreateVehicle(482, -1830.3928, 636.3264, 30.5508, 181.9362, -1, -1, 60); //Burrito
	//(g_Vehicle[561], 0);
	g_Vehicle[562] = CreateVehicle(551, -1767.2254, 857.6757, 24.6063, 90.7745, -1, -1, 60); //Merit
	//(g_Vehicle[562], 0);
	g_Vehicle[563] = CreateVehicle(533, -1996.7197, 780.7191, 45.0773, 0.8332, -1, -1, 60); //Feltzer
	g_Vehicle[564] = CreateVehicle(480, -2156.5957, 781.6992, 69.2315, 271.9981, -1, -1, 60); //Comet
	//(g_Vehicle[564], 0);
	g_Vehicle[565] = CreateVehicle(561, -2206.7849, 718.1914, 49.4180, 359.8656, -1, -1, 60); //Stratum
	//(g_Vehicle[565], 0);
	g_Vehicle[566] = CreateVehicle(482, -2287.0795, 581.4110, 34.9593, 270.0385, -1, -1, 60); //Burrito
	//(g_Vehicle[566], 0);
	g_Vehicle[567] = CreateVehicle(482, -2586.3881, 311.3460, 4.9411, 90.7013, -1, -1, 60); //Burrito
	g_Vehicle[568] = CreateVehicle(439, -2586.3212, 325.2354, 4.7470, 270.4281, -1, -1, 60); //Stallion
	//(g_Vehicle[568], 0);
	g_Vehicle[569] = CreateVehicle(521, -2590.9128, 484.1599, 14.1862, 58.1234, -1, -1, 60); //FCR-900
	//(g_Vehicle[569], 0);
	g_Vehicle[570] = CreateVehicle(463, -2454.1154, 638.9644, 32.6119, 266.5039, -1, -1, 60); //Freeway
	//(g_Vehicle[570], 0);
	g_Vehicle[571] = CreateVehicle(475, -2588.4860, 632.4481, 14.2560, 269.3259, -1, -1, 60); //Sabre
	g_Vehicle[572] = CreateVehicle(479, -2546.5292, 647.5504, 14.1927, 90.1881, -1, -1, 60); //Regina
	//(g_Vehicle[572], 0);
	g_Vehicle[573] = CreateVehicle(405, -2566.9233, 556.1500, 14.3395, 294.3413, -1, -1, 60); //Sentinel
	//(g_Vehicle[573], 0);
	g_Vehicle[574] = CreateVehicle(461, -2621.0336, 137.8928, 4.0044, 266.5985, -1, -1, 60); //PCJ-600
	//(g_Vehicle[574], 0);
	g_Vehicle[575] = CreateVehicle(408, -2655.6911, -194.1582, 4.7042, 359.8854, -1, -1, 60); //Trashmaster
	g_Vehicle[576] = CreateVehicle(479, -2274.9455, -119.1157, 35.1114, 266.5582, -1, -1, 60); //Regina
	//(g_Vehicle[576], 0);
	g_Vehicle[577] = CreateVehicle(496, -2263.0578, 18.8141, 34.8656, 354.0029, -1, -1, 60); //Blista Compact
	//(g_Vehicle[577], 0);
	g_Vehicle[578] = CreateVehicle(475, -2167.6179, 86.2425, 35.0484, 172.0043, -1, -1, 60); //Sabre
	//(g_Vehicle[578], 0);
	g_Vehicle[579] = CreateVehicle(579, -2265.7460, 452.6116, 34.9076, 250.2149, -1, -1, 60); //Huntley
	g_Vehicle[580] = CreateVehicle(405, -2379.3400, 625.8353, 33.0000, 1.2157, -1, -1, 60); //Sentinel
	//(g_Vehicle[580], 0);
	g_Vehicle[581] = CreateVehicle(579, -2213.2062, 416.5867, 35.0997, 357.7800, -1, -1, 60); //Huntley
	//(g_Vehicle[581], 0);
	g_Vehicle[582] = CreateVehicle(582, -2123.9011, 428.0708, 34.6791, 356.2318, -1, -1, 60); //Newsvan
	//(g_Vehicle[582], 0);
	g_Vehicle[583] = CreateVehicle(482, -2123.8403, 380.5338, 35.2906, 87.8615, -1, -1, 60); //Burrito
	g_Vehicle[584] = CreateVehicle(582, -2044.8903, 460.4014, 35.2267, 304.5739, -1, -1, 60); //Newsvan
	//(g_Vehicle[584], 0);
	g_Vehicle[585] = CreateVehicle(405, -2308.2900, 673.6359, 44.3037, 90.5504, -1, -1, 60); //Sentinel
	//(g_Vehicle[585], 0);
	g_Vehicle[586] = CreateVehicle(480, -2175.9423, 654.7141, 49.2103, 181.1463, -1, -1, 60); //Comet
	//(g_Vehicle[586], 0);
	g_Vehicle[587] = CreateVehicle(405, -2650.2133, 703.3292, 27.7206, 270.0415, -1, -1, 60); //Sentinel
	g_Vehicle[588] = CreateVehicle(496, -2694.9968, 719.9130, 34.2360, 176.1587, -1, -1, 60); //Blista Compact
	//(g_Vehicle[588], 0);
	g_Vehicle[589] = CreateVehicle(482, -1612.3461, 1284.5170, 7.3010, 90.9943, -1, -1, 60); //Burrito
	//(g_Vehicle[589], 0);
	g_Vehicle[590] = CreateVehicle(445, -1630.5129, 1289.7797, 6.9140, 135.4143, -1, -1, 60); //Admiral
	//(g_Vehicle[590], 0);
	g_Vehicle[591] = CreateVehicle(482, -1834.8303, 1425.0577, 7.2411, 179.1661, -1, -1, 60); //Burrito
	g_Vehicle[592] = CreateVehicle(411, -1975.7601, 1224.7452, 31.4078, 272.5270, -1, -1, 60); //Infernus
	//(g_Vehicle[592], 0);
	g_Vehicle[593] = CreateVehicle(560, -1971.0621, 1185.6658, 45.0733, 89.7985, -1, -1, 60); //Sultan
	//(g_Vehicle[593], 0);
	g_Vehicle[594] = CreateVehicle(480, -1847.4035, 1165.1617, 39.5750, 356.2449, -1, -1, 60); //Comet
	//(g_Vehicle[594], 0);
	g_Vehicle[595] = CreateVehicle(428, -1833.1833, 1096.2387, 45.4879, 89.0391, -1, -1, 60); //Securicar
	g_Vehicle[596] = CreateVehicle(439, -1730.7963, 1089.0474, 45.3415, 271.8883, -1, -1, 60); //Stallion
	//(g_Vehicle[596], 0);
	g_Vehicle[597] = CreateVehicle(455, -1944.7907, 1001.1066, 35.6110, 269.5480, -1, -1, 60); //Flatbed
	//(g_Vehicle[597], 0);
	g_Vehicle[598] = CreateVehicle(482, -1673.3294, 1090.5960, 8.0443, 269.4953, -1, -1, 60); //Burrito
	//(g_Vehicle[598], 0);
	g_Vehicle[599] = CreateVehicle(400, -2124.6315, -935.2518, 32.1157, 268.5498, -1, -1, 60); //Landstalker
	g_Vehicle[600] = CreateVehicle(506, -2150.3098, -772.5972, 31.6485, 270.1075, -1, -1, 60); //Super GT
	//(g_Vehicle[600], 0);
	g_Vehicle[601] = CreateVehicle(506, -2134.1142, -760.7620, 31.7280, 90.9188, -1, -1, 60); //Super GT
	//(g_Vehicle[601], 0);
	g_Vehicle[602] = CreateVehicle(421, -2124.5563, -847.0036, 31.9058, 270.5156, -1, -1, 60); //Washington
	//(g_Vehicle[602], 0);
	g_Vehicle[603] = CreateVehicle(405, -1736.9055, 1053.4700, 17.4608, 267.5369, -1, -1, 60); //Sentinel
	g_Vehicle[604] = CreateVehicle(439, -1696.8990, 977.2656, 17.4815, 359.7377, -1, -1, 60); //Stallion
	//(g_Vehicle[604], 0);
	g_Vehicle[605] = CreateVehicle(496, -1474.2156, -137.3863, 5.6263, 270.1315, -1, -1, 60); //Blista Compact
	//(g_Vehicle[605], 0);
	g_Vehicle[606] = CreateVehicle(400, -1337.5870, -128.9230, 6.0922, 88.6881, -1, -1, 60); //Landstalker
	//(g_Vehicle[606], 0);
	g_Vehicle[607] = CreateVehicle(482, -1426.0373, -212.6051, 6.0535, 88.9253, -1, -1, 60); //Burrito
	g_Vehicle[608] = CreateVehicle(516, -1369.8974, -216.2964, 5.8337, 88.8366, -1, -1, 60); //Nebula
	//(g_Vehicle[608], 0);
	g_Vehicle[609] = CreateVehicle(517, -1337.3739, -37.7221, 5.8548, 87.8366, -1, -1, 60); //Majestic
	//(g_Vehicle[609], 0);
	g_Vehicle[610] = CreateVehicle(480, -2645.6713, 1375.8912, 6.9394, 268.6650, -1, -1, 60); //Comet
	//(g_Vehicle[610], 0);
	g_Vehicle[611] = CreateVehicle(411, -2618.2075, 1349.1384, 6.9411, 0.7609, -1, -1, 60); //Infernus
	g_Vehicle[612] = CreateVehicle(477, -2617.5004, 1376.3701, 6.8800, 180.0679, -1, -1, 60); //ZR3 50
	//(g_Vehicle[612], 0);
	g_Vehicle[613] = CreateVehicle(411, -2646.4982, 1334.4965, 6.9008, 0.6166, -1, -1, 60); //Infernus
	//(g_Vehicle[613], 0);
	g_Vehicle[614] = CreateVehicle(487, -1637.0042, 1381.6922, 18.5907, 137.6304, -1, -1, 60); //Maverick
	//(g_Vehicle[614], 0);
	g_Vehicle[615] = CreateVehicle(487, -2632.1711, 1417.5526, 24.9423, 235.3437, -1, -1, 60); //Maverick
	g_Vehicle[616] = CreateVehicle(480, -1623.0930, 817.0656, 6.5922, 2.0322, -1, -1, 60); //Comet
	//(g_Vehicle[616], 0);
	g_Vehicle[617] = CreateVehicle(493, -1409.9960, 917.3228, -0.3734, 301.5047, -1, -1, 60); //Jetmax
	//(g_Vehicle[617], 0);
	g_Vehicle[618] = CreateVehicle(493, -1403.3782, 888.8574, -0.1040, 328.1304, -1, -1, 60); //Jetmax
	//(g_Vehicle[618], 0);
	g_Vehicle[619] = CreateVehicle(480, -1488.3903, 666.5170, 6.9579, 92.0792, -1, -1, 60); //Comet
	g_Vehicle[620] = CreateVehicle(484, -1475.4052, 703.6796, 0.2567, 181.1956, -1, -1, 60); //Marquis
	//(g_Vehicle[620], 0);
	g_Vehicle[621] = CreateVehicle(482, -1487.4948, 758.5935, 7.5513, 89.3723, -1, -1, 60); //Burrito
	//(g_Vehicle[621], 0);
	g_Vehicle[622] = CreateVehicle(403, -1654.6353, 452.5728, 8.2104, 212.2164, -1, -1, 60); //Linerunner
	//(g_Vehicle[622], 0);
	g_Vehicle[623] = CreateVehicle(455, -1701.2187, 407.8389, 7.6163, 221.8162, -1, -1, 60); //Flatbed
	g_Vehicle[624] = CreateVehicle(461, -1673.6534, 399.1506, 6.7568, 311.2734, -1, -1, 60); //PCJ-600
	//(g_Vehicle[624], 0);
	g_Vehicle[625] = CreateVehicle(421, -1665.1743, 351.3591, 6.8214, 345.8146, -1, -1, 60); //Washington
	//(g_Vehicle[625], 0);
	g_Vehicle[626] = CreateVehicle(455, -1622.2392, 84.3414, 3.9897, 147.7920, -1, -1, 60); //Flatbed
	//(g_Vehicle[626], 0);
	g_Vehicle[627] = CreateVehicle(453, -1632.5704, 161.8540, -0.2770, 315.6890, -1, -1, 60); //Reefer
	g_Vehicle[628] = CreateVehicle(460, -1446.9372, 96.2602, 1.8018, 313.8601, -1, -1, 60); //Skimmer
	//(g_Vehicle[628], 0);
	g_Vehicle[629] = CreateVehicle(421, -1319.0928, -337.8623, 14.0309, 260.0551, -1, -1, 60); //Washington
	//(g_Vehicle[629], 0);
	g_Vehicle[630] = CreateVehicle(553, -1622.4431, -311.8703, 15.4839, 27.5372, -1, -1, 60); //Nevada
	//(g_Vehicle[630], 0);
	g_Vehicle[631] = CreateVehicle(417, -1712.1790, -456.0521, 14.2207, 1.9481, -1, -1, 60); //Leviathan
	g_Vehicle[632] = CreateVehicle(447, -1756.1365, -444.6547, 0.7483, 5.0545, -1, -1, 60); //Seasparrow
	//(g_Vehicle[632], 0);
	g_Vehicle[633] = CreateVehicle(507, -1236.8947, 33.3595, 13.9732, 221.5420, -1, -1, 60); //Elegant
	//(g_Vehicle[633], 0);
	g_Vehicle[634] = CreateVehicle(411, -1426.3220, -13.7967, 5.7270, 90.1828, -1, -1, 60); //Infernus
	//(g_Vehicle[634], 0);
	g_Vehicle[635] = CreateVehicle(411, -1459.3001, -5.4454, 5.7913, 271.8836, -1, -1, 60); //Infernus
	g_Vehicle[636] = CreateVehicle(424, -2906.0566, 58.3787, 4.3926, 5.7181, -1, -1, 60); //BF Injection
	//(g_Vehicle[636], 0);
	g_Vehicle[637] = CreateVehicle(568, -2897.8432, 330.0729, 4.6655, 170.8634, -1, -1, 60); //Bandito
	//(g_Vehicle[637], 0);
	g_Vehicle[638] = CreateVehicle(444, -2930.2214, 711.2976, 6.4081, 7.0338, -1, -1, 60); //Monster
	//(g_Vehicle[638], 0);
	g_Vehicle[639] = CreateVehicle(579, -2885.2395, 1243.7937, 7.0338, 261.2170, -1, -1, 60); //Huntley
	g_Vehicle[640] = CreateVehicle(462, -2810.1171, 1325.5194, 6.7010, 143.9078, -1, -1, 60); //Faggio
	//(g_Vehicle[640], 0);
	g_Vehicle[641] = CreateVehicle(446, -2747.4804, 1399.5426, -0.7689, 32.7626, -1, -1, 60); //Squalo
	//(g_Vehicle[641], 0);
	g_Vehicle[642] = CreateVehicle(447, -2676.2592, 1897.6268, 0.9114, 93.0397, -1, -1, 60); //Seasparrow
	//(g_Vehicle[642], 0);
	g_Vehicle[643] = CreateVehicle(508, -2065.7258, 1423.1895, 7.4763, 145.1098, -1, -1, 60); //Journey
	g_Vehicle[644] = CreateVehicle(461, -2092.5717, 1432.6519, 6.6750, 193.9024, -1, -1, 60); //PCJ-600
	//(g_Vehicle[644], 0);
	g_Vehicle[645] = CreateVehicle(536, -2091.5598, 1392.6027, 6.8385, 217.0095, -1, -1, 60); //Blade
	//(g_Vehicle[645], 0);
	g_Vehicle[646] = CreateVehicle(452, -1902.7883, 1400.2579, -0.2509, 76.7537, -1, -1, 60); //Speeder
	//(g_Vehicle[646], 0);
	g_Vehicle[647] = CreateVehicle(461, -1794.8902, 1405.5065, 6.7727, 203.9248, -1, -1, 60); //PCJ-600
	g_Vehicle[648] = CreateVehicle(472, -1720.9417, 1436.0169, 0.3172, 356.6590, -1, -1, 60); //Coastguard
	//(g_Vehicle[648], 0);
	g_Vehicle[649] = CreateVehicle(454, -1467.0510, 1503.8057, 0.1585, 110.2544, -1, -1, 60); //Tropic
	//(g_Vehicle[649], 0);
	g_Vehicle[650] = CreateVehicle(473, -1570.9439, 1263.8746, -0.0778, 276.0412, -1, -1, 60); //Dinghy
	//(g_Vehicle[650], 0);
	g_Vehicle[651] = CreateVehicle(506, -1554.5819, 1068.4960, 6.8919, 359.0275, -1, -1, 60); //Super GT
	g_Vehicle[652] = CreateVehicle(562, -1614.6351, 1007.8853, 6.8477, 250.5691, -1, -1, 60); //Elegy
	//(g_Vehicle[652], 0);
	g_Vehicle[653] = CreateVehicle(553, -1566.2198, -255.4555, 15.4834, 41.4338, -1, -1, 60); //Nevada
	//(g_Vehicle[653], 0);
	g_Vehicle[654] = CreateVehicle(586, -1871.2375, -893.5936, 31.5429, 91.2748, -1, -1, 60); //Wayfarer
	//(g_Vehicle[654], 0);
	g_Vehicle[655] = CreateVehicle(586, -1912.6021, -918.9385, 31.7413, 353.5593, -1, -1, 60); //Wayfarer
	g_Vehicle[656] = CreateVehicle(541, -1897.6474, -823.9932, 31.8346, 272.8453, -1, -1, 60); //Bullet
	//(g_Vehicle[656], 0);
	g_Vehicle[657] = CreateVehicle(541, -1886.8457, -759.9957, 31.6483, 270.8407, -1, -1, 60); //Bullet
	//(g_Vehicle[657], 0);
	g_Vehicle[658] = CreateVehicle(533, -1761.6075, 613.7797, 26.9519, 89.3370, -1, -1, 60); //Feltzer
	//(g_Vehicle[658], 0);
	g_Vehicle[659] = CreateVehicle(429, -2019.1702, 1029.0781, 55.1884, 272.6767, -1, -1, 60); //Banshee
	g_Vehicle[660] = CreateVehicle(442, -2041.7661, 1116.0491, 53.1165, 175.0671, -1, -1, 60); //Romero
	//(g_Vehicle[660], 0);
	g_Vehicle[661] = CreateVehicle(421, -2052.5153, 1112.8059, 53.1715, 181.2767, -1, -1, 60); //Washington
	//(g_Vehicle[661], 0);
	g_Vehicle[662] = CreateVehicle(560, -2557.4421, 1143.5118, 55.4319, 165.8663, -1, -1, 60); //Sultan
	//(g_Vehicle[662], 0);
	g_Vehicle[663] = CreateVehicle(402, -2541.8601, 1141.0548, 55.3861, 170.3531, -1, -1, 60); //Buffalo
	g_Vehicle[664] = CreateVehicle(496, -2499.5383, 1137.9290, 55.4431, 180.4333, -1, -1, 60); //Blista Compact
	//(g_Vehicle[664], 0);
	g_Vehicle[665] = CreateVehicle(536, -2485.8356, 1137.9992, 55.4641, 180.9100, -1, -1, 60); //Blade
	//(g_Vehicle[665], 0);
	g_Vehicle[666] = CreateVehicle(541, -2458.5952, 1138.3411, 55.3516, 178.5045, -1, -1, 60); //Bullet
	//(g_Vehicle[666], 0);
	g_Vehicle[667] = CreateVehicle(541, -2431.1118, 1136.0993, 55.5330, 175.6763, -1, -1, 60); //Bullet
	g_Vehicle[668] = CreateVehicle(541, -2377.0163, 1122.4815, 55.3515, 340.0098, -1, -1, 60); //Bullet
	//(g_Vehicle[668], 0);
	g_Vehicle[669] = CreateVehicle(508, -2413.5251, 1026.2301, 50.7658, 0.0956, -1, -1, 60); //Journey
	//(g_Vehicle[669], 0);
	g_Vehicle[670] = CreateVehicle(575, -2408.1652, 974.7092, 44.9025, 182.2523, -1, -1, 60); //Broadway
	//(g_Vehicle[670], 0);
	g_Vehicle[671] = CreateVehicle(575, -2406.2702, 944.5643, 44.9790, 266.8056, -1, -1, 60); //Broadway
	g_Vehicle[672] = CreateVehicle(559, -2352.3479, 981.5964, 50.3515, 5.7403, -1, -1, 60); //Jester
	//(g_Vehicle[672], 0);
	g_Vehicle[673] = CreateVehicle(437, -2366.8171, 1023.6386, 50.8246, 181.9107, -1, -1, 60); //Coach
	//(g_Vehicle[673], 0);
	g_Vehicle[674] = CreateVehicle(405, -2239.0336, 893.4630, 66.5311, 89.8170, -1, -1, 60); //Sentinel
	//(g_Vehicle[674], 0);
	g_Vehicle[675] = CreateVehicle(426, -2233.8439, 930.8286, 66.3918, 180.1112, -1, -1, 60); //Premier
	g_Vehicle[676] = CreateVehicle(587, -2220.6704, 813.1364, 49.0857, 90.0399, -1, -1, 60); //Euros
	//(g_Vehicle[676], 0);
	g_Vehicle[677] = CreateVehicle(500, -2292.3334, 812.4420, 49.0649, 88.5746, -1, -1, 60); //Mesa
	//(g_Vehicle[677], 0);
	g_Vehicle[678] = CreateVehicle(466, -2273.5480, 1038.3989, 83.5059, 179.7761, -1, -1, 60); //Glendale
	//(g_Vehicle[678], 0);
	g_Vehicle[679] = CreateVehicle(436, -2135.5122, 1036.8538, 79.6184, 0.2545, -1, -1, 60); //Previon
	g_Vehicle[680] = CreateVehicle(547, -2285.7629, 1101.4392, 79.8591, 268.6748, -1, -1, 60); //Primo
	//(g_Vehicle[680], 0);
	g_Vehicle[681] = CreateVehicle(480, -2238.0720, 1184.7143, 55.3492, 91.5898, -1, -1, 60); //Comet
	//(g_Vehicle[681], 0);
	g_Vehicle[682] = CreateVehicle(561, -2233.6113, 1104.8515, 79.8827, 180.3516, -1, -1, 60); //Stratum
	//(g_Vehicle[682], 0);
	g_Vehicle[683] = CreateVehicle(521, -2034.3132, 167.2028, 28.4099, 276.3216, -1, -1, 60); //FCR-900
	g_Vehicle[684] = CreateVehicle(549, -2033.3454, 177.7978, 28.7383, 266.0409, -1, -1, 60); //Tampa
	//(g_Vehicle[684], 0);
	g_Vehicle[685] = CreateVehicle(486, -2122.9641, 176.7402, 35.5822, 269.0040, -1, -1, 60); //Dozer
	//(g_Vehicle[685], 0);
	g_Vehicle[686] = CreateVehicle(486, -2128.7602, 292.7856, 35.0131, 268.8580, -1, -1, 60); //Dozer
	//(g_Vehicle[686], 0);
	g_Vehicle[687] = CreateVehicle(486, -2066.6992, 295.1809, 35.3574, 185.6239, -1, -1, 60); //Dozer
	g_Vehicle[688] = CreateVehicle(482, -2126.2490, 202.0596, 35.4645, 271.6610, -1, -1, 60); //Burrito
	//(g_Vehicle[688], 0);
	g_Vehicle[689] = CreateVehicle(493, -2941.2458, 500.9425, 1.9118, 356.2561, -1, -1, 60); //Jetmax
	//(g_Vehicle[689], 0);
	g_Vehicle[690] = CreateVehicle(421, -2151.0249, 835.4578, 69.2325, 181.8153, -1, -1, 60); //Washington
	//(g_Vehicle[690], 0);
	g_Vehicle[691] = CreateVehicle(516, -1892.3840, 823.9650, 34.9239, 1.1847, -1, -1, 60); //Nebula
	g_Vehicle[692] = CreateVehicle(500, -1983.7811, 896.3950, 45.3163, 161.2541, -1, -1, 60); //Mesa
	//(g_Vehicle[692], 0);
	g_Vehicle[693] = CreateVehicle(482, -1878.1259, 1073.6154, 45.3833, 1.0802, -1, -1, 60); //Burrito
	//(g_Vehicle[693], 0);
	g_Vehicle[694] = CreateVehicle(518, -2027.1711, 1228.7697, 31.3190, 268.9390, -1, -1, 60); //Buccaneer
	//(g_Vehicle[694], 0);
	g_Vehicle[695] = CreateVehicle(424, -2051.5183, 1160.1518, 45.2262, 15.6148, -1, -1, 60); //BF Injection
	g_Vehicle[696] = CreateVehicle(558, -2143.7021, 1221.0677, 46.9019, 92.5563, -1, -1, 60); //Uranus
	//(g_Vehicle[696], 0);
	g_Vehicle[697] = CreateVehicle(496, -2354.3686, 1323.6497, 14.6057, 77.0716, -1, -1, 60); //Blista Compact
	//(g_Vehicle[697], 0);
	g_Vehicle[698] = CreateVehicle(603, -2697.6223, 783.2014, 49.8749, 267.5987, -1, -1, 60); //Phoenix
	//(g_Vehicle[698], 0);
	g_Vehicle[699] = CreateVehicle(603, -2637.6652, 802.7454, 49.7701, 1.1550, -1, -1, 60); //Phoenix
	g_Vehicle[700] = CreateVehicle(522, -2594.9675, 841.6439, 49.9160, 84.3496, -1, -1, 60); //NRG-500
	//(g_Vehicle[700], 0);
	g_Vehicle[701] = CreateVehicle(463, -2464.2109, 919.5463, 62.5335, 160.6213, -1, -1, 60); //Freeway
	//(g_Vehicle[701], 0);
	g_Vehicle[702] = CreateVehicle(428, -1893.1501, 878.8956, 35.1399, 0.5214, -1, -1, 60); //Securicar
	//(g_Vehicle[702], 0);
	g_Vehicle[703] = CreateVehicle(500, -1920.9349, 900.0208, 35.5578, 206.1858, -1, -1, 60); //Mesa
	g_Vehicle[704] = CreateVehicle(409, -1736.3383, 947.9545, 24.5471, 65.3048, -1, -1, 60); //Stretch
	//(g_Vehicle[704], 0);
	g_Vehicle[705] = CreateVehicle(540, -1502.9903, 938.4937, 7.0462, 124.6396, -1, -1, 60); //Vincent
	//(g_Vehicle[705], 0);
	g_Vehicle[706] = CreateVehicle(550, -1788.1842, 802.8975, 24.7103, 359.7562, -1, -1, 60); //Sunrise
	//(g_Vehicle[706], 0);
	g_Vehicle[707] = CreateVehicle(561, -1784.4340, 692.7874, 34.9859, 182.2400, -1, -1, 60); //Stratum
	g_Vehicle[708] = CreateVehicle(443, -1851.9318, 116.8266, 15.7520, 284.3587, -1, -1, 60); //Packer
	//(g_Vehicle[708], 0);
	g_Vehicle[709] = CreateVehicle(482, -1855.5972, 146.2494, 15.2417, 277.9544, -1, -1, 60); //Burrito
	//(g_Vehicle[709], 0);
	g_Vehicle[710] = CreateVehicle(549, -2048.1506, 124.8951, 28.6802, 182.0321, -1, -1, 60); //Tampa
	//(g_Vehicle[710], 0);
	g_Vehicle[711] = CreateVehicle(600, -2160.9421, 515.2612, 34.8894, 119.1082, -1, -1, 60); //Picador
	g_Vehicle[712] = CreateVehicle(582, -2089.2358, 479.1806, 35.1021, 78.0877, -1, -1, 60); //Newsvan
	//(g_Vehicle[712], 0);
	g_Vehicle[713] = CreateVehicle(461, -1962.3228, 466.2145, 34.8406, 64.7883, -1, -1, 60); //PCJ-600
	//(g_Vehicle[713], 0);
	g_Vehicle[714] = CreateVehicle(401, -1905.3840, 710.6555, 45.0760, 179.5601, -1, -1, 60); //Bravura
	//(g_Vehicle[714], 0);
	g_Vehicle[715] = CreateVehicle(401, -2539.3261, 939.0100, 64.2301, 90.3423, -1, -1, 60); //Bravura
	g_Vehicle[716] = CreateVehicle(401, -2569.1545, 981.8585, 78.1545, 358.0871, -1, -1, 60); //Bravura
	//(g_Vehicle[716], 0);
	g_Vehicle[717] = CreateVehicle(541, -2692.8361, 455.8667, 3.9607, 87.0998, -1, -1, 60); //Bullet
	//(g_Vehicle[717], 0);
	g_Vehicle[718] = CreateVehicle(400, -2279.4724, -247.3415, 42.5331, 18.4825, -1, -1, 60); //Landstalker
	//(g_Vehicle[718], 0);
	g_Vehicle[719] = CreateVehicle(444, -2354.2648, -371.5600, 69.0404, 313.2815, -1, -1, 60); //Monster
	g_Vehicle[720] = CreateVehicle(461, -1704.8200, 1339.3178, 6.7800, 93.7506, -1, -1, 60); //PCJ-600
	//(g_Vehicle[720], 0);
	g_Vehicle[721] = CreateVehicle(405, -1696.4670, 1348.2159, 7.0545, 99.7829, -1, -1, 60); //Sentinel
	//(g_Vehicle[721], 0);
	g_Vehicle[722] = CreateVehicle(461, -1648.1644, 1307.4525, 6.6985, 130.5738, -1, -1, 60); //PCJ-600
	//(g_Vehicle[722], 0);
	g_Vehicle[723] = CreateVehicle(479, -1915.3132, 1256.0264, 19.2395, 89.3746, -1, -1, 60); //Regina
	g_Vehicle[724] = CreateVehicle(402, -2178.9719, 1227.6171, 33.7612, 358.4316, -1, -1, 60); //Buffalo
	//(g_Vehicle[724], 0);
	g_Vehicle[725] = CreateVehicle(482, -1987.7301, 1338.3240, 7.2635, 176.6009, -1, -1, 60); //Burrito
	//(g_Vehicle[725], 0);
	g_Vehicle[726] = CreateVehicle(405, -1977.9648, -1020.8947, 32.0503, 332.2475, -1, -1, 60); //Sentinel
	//(g_Vehicle[726], 0);
	g_Vehicle[727] = CreateVehicle(487, -1970.8481, -829.0056, 39.7330, 1.5030, -1, -1, 60); //Maverick
	g_Vehicle[728] = CreateVehicle(421, -2148.8937, -879.1362, 31.9058, 269.8966, -1, -1, 60); //Washington
	//(g_Vehicle[728], 0);
	g_Vehicle[729] = CreateVehicle(461, -1720.9135, 1007.3599, 17.1706, 91.6205, -1, -1, 60); //PCJ-600
	//(g_Vehicle[729], 0);
	g_Vehicle[730] = CreateVehicle(439, -1703.6799, 1028.5683, 17.2700, 271.2750, -1, -1, 60); //Stallion
	//(g_Vehicle[730], 0);
	g_Vehicle[731] = CreateVehicle(516, -1385.4271, -207.9931, 5.6251, 269.5263, -1, -1, 60); //Nebula
	g_Vehicle[732] = CreateVehicle(400, -1370.5369, -108.5120, 5.7368, 90.5826, -1, -1, 60); //Landstalker
	//(g_Vehicle[732], 0);
	g_Vehicle[733] = CreateVehicle(410, -1427.6842, -71.5401, 5.6543, 92.1527, -1, -1, 60); //Manana
	//(g_Vehicle[733], 0);
	g_Vehicle[734] = CreateVehicle(516, -1338.1564, -175.1089, 5.7248, 267.4071, -1, -1, 60); //Nebula
	//(g_Vehicle[734], 0);
	g_Vehicle[735] = CreateVehicle(496, -2436.2021, 1257.5581, 30.2189, 90.0063, -1, -1, 60); //Blista Compact
	g_Vehicle[736] = CreateVehicle(579, -1643.6743, -1049.7824, 102.4421, 184.7761, -1, -1, 60); //Huntley
	//(g_Vehicle[736], 0);
	g_Vehicle[737] = CreateVehicle(468, -1539.1002, -988.9669, 159.2563, 171.1934, -1, -1, 60); //Sanchez
	//(g_Vehicle[737], 0);
	g_Vehicle[738] = CreateVehicle(457, -2477.0815, -310.3789, 41.1380, 313.3356, -1, -1, 60); //Caddy
	//(g_Vehicle[738], 0);
	g_Vehicle[739] = CreateVehicle(560, -2486.6093, 262.4620, 34.8723, 271.1458, -1, -1, 60); //Sultan
	g_Vehicle[740] = CreateVehicle(549, -2585.9887, 712.8341, 27.5820, 89.5528, -1, -1, 60); //Tampa
	//(g_Vehicle[740], 0);
	g_Vehicle[741] = CreateVehicle(466, -1837.0461, 339.5636, 16.9044, 331.3645, -1, -1, 60); //Glendale
	//(g_Vehicle[741], 0);
	g_Vehicle[742] = CreateVehicle(558, -1956.2532, 297.6264, 35.0938, 64.6875, -1, -1, 60); //Uranus
	//(g_Vehicle[742], 0);
	g_Vehicle[743] = CreateVehicle(560, -1957.6254, 276.9993, 35.1772, 132.1875, -1, -1, 60); //Sultan
	g_Vehicle[744] = CreateVehicle(561, -1950.4956, 259.6260, 35.2701, 53.4263, -1, -1, 60); //Stratum
	//(g_Vehicle[744], 0);
	g_Vehicle[745] = CreateVehicle(562, -1952.4976, 265.6258, 40.7238, 292.5036, -1, -1, 60); //Elegy
	//(g_Vehicle[745], 0);
	g_Vehicle[746] = CreateVehicle(567, -1952.7600, 258.7500, 40.9199, 258.7441, -1, -1, 60); //Savanna
	//(g_Vehicle[746], 0);
	g_Vehicle[747] = CreateVehicle(490, -1588.4078, 673.0457, 7.3151, 176.8282, -1, -1, 60); //FBI Rancher
	g_Vehicle[748] = CreateVehicle(490, -1574.3214, 718.2318, -5.1139, 89.8175, -1, -1, 60); //FBI Rancher
	//(g_Vehicle[748], 0);
	g_Vehicle[749] = CreateVehicle(472, -1076.0148, -207.4981, 0.0197, 201.3847, -1, -1, 60); //Coastguard
	//(g_Vehicle[749], 0);
	g_Vehicle[750] = CreateVehicle(596, 1554.5927, -1615.0943, 13.1075, 143.0000, -1, -1, 60); //Police Car (LSPD)
	//(g_Vehicle[750], 0);
	g_Vehicle[751] = CreateVehicle(596, 1560.2780, -1614.7254, 13.1064, 143.0000, -1, -1, 60); //Police Car (LSPD)
	g_Vehicle[752] = CreateVehicle(596, 1565.3576, -1615.1208, 13.1006, 143.0000, -1, -1, 60); //Police Car (LSPD)
	//(g_Vehicle[752], 0);
	g_Vehicle[753] = CreateVehicle(596, 1570.3990, -1615.1420, 13.1035, 143.0000, -1, -1, 60); //Police Car (LSPD)
	//(g_Vehicle[753], 0);
	g_Vehicle[754] = CreateVehicle(596, 1575.5455, -1615.0766, 13.1050, 143.0000, -1, -1, 60); //Police Car (LSPD)
	//(g_Vehicle[754], 0);
	g_Vehicle[755] = CreateVehicle(427, 1600.4678, -1607.5684, 13.6005, 88.3196, -1, -1, 60); //Enforcer
	g_Vehicle[756] = CreateVehicle(427, 1599.9907, -1613.6184, 13.5958, 89.1377, -1, -1, 60); //Enforcer
	//(g_Vehicle[756], 0);
	g_Vehicle[757] = CreateVehicle(427, 1600.0578, -1619.9816, 13.5980, 89.7129, -1, -1, 60); //Enforcer
	//(g_Vehicle[757], 0);
	g_Vehicle[758] = CreateVehicle(427, 1599.8956, -1626.2254, 13.5964, 89.2147, -1, -1, 60); //Enforcer
	//(g_Vehicle[758], 0);
	g_Vehicle[759] = CreateVehicle(596, 1602.4195, -1683.8864, 5.6118, 269.8652, -1, -1, 60); //Police Car (LSPD)
	g_Vehicle[760] = CreateVehicle(596, 1591.4985, -1711.0421, 5.6128, 0.0436, -1, -1, 60); //Police Car (LSPD)
	//(g_Vehicle[760], 0);
	g_Vehicle[761] = CreateVehicle(596, 1602.2015, -1687.9943, 5.6107, 89.8453, -1, -1, 60); //Police Car (LSPD)
	//(g_Vehicle[761], 0);
	g_Vehicle[762] = CreateVehicle(596, 1602.0391, -1692.0045, 5.6110, 89.1947, -1, -1, 60); //Police Car (LSPD)
	//(g_Vehicle[762], 0);
	g_Vehicle[763] = CreateVehicle(596, 1595.4046, -1711.5936, 5.6115, 180.3377, -1, -1, 60); //Police Car (LSPD)
	g_Vehicle[764] = CreateVehicle(523, 1582.1798, -1667.0844, 5.4650, 240.5348, -1, -1, 60); //HPV1000
	//(g_Vehicle[764], 0);
	g_Vehicle[765] = CreateVehicle(523, 1582.3419, -1669.2539, 5.4650, 239.3728, -1, -1, 60); //HPV1000
	//(g_Vehicle[765], 0);
	g_Vehicle[766] = CreateVehicle(523, 1582.1704, -1671.2071, 5.4657, 237.9855, -1, -1, 60); //HPV1000
	//(g_Vehicle[766], 0);
	g_Vehicle[767] = CreateVehicle(523, 1582.1513, -1673.4630, 5.4651, 238.0086, -1, -1, 60); //HPV1000
	g_Vehicle[768] = CreateVehicle(574, 1526.7521, -1655.7895, 5.6157, 270.8941, -1, -1, 60); //Sweeper
	//(g_Vehicle[768], 0);
	g_Vehicle[769] = CreateVehicle(574, 1526.7055, -1652.4664, 5.6157, 270.6263, -1, -1, 60); //Sweeper
	//(g_Vehicle[769], 0);
	g_Vehicle[770] = CreateVehicle(574, 1526.5552, -1642.8455, 5.6157, 180.3993, -1, -1, 60); //Sweeper
	//(g_Vehicle[770], 0);
	g_Vehicle[771] = CreateVehicle(574, 1530.7840, -1642.8045, 5.6157, 179.2185, -1, -1, 60); //Sweeper
	g_Vehicle[772] = CreateVehicle(416, 2033.1269, -1432.2742, 17.2845, 180.0169, -1, -1, 60); //Ambulance
	//(g_Vehicle[772], 0);
	g_Vehicle[773] = CreateVehicle(416, 2016.3476, -1414.9769, 17.1411, 86.7151, -1, -1, 60); //Ambulance
	//(g_Vehicle[773], 0);
	g_Vehicle[774] = CreateVehicle(519, 1806.1065, -2406.8107, 14.4730, 220.1900, -1, -1, 60); //Shamal
	//(g_Vehicle[774], 0);
	g_Vehicle[775] = CreateVehicle(519, 1851.0872, -2397.0817, 14.4737, 221.0776, -1, -1, 60); //Shamal
	g_Vehicle[776] = CreateVehicle(519, 1881.2902, -2364.6726, 14.4759, 231.6925, -1, -1, 60); //Shamal
	//(g_Vehicle[776], 0);
	g_Vehicle[777] = CreateVehicle(593, 1990.4940, -2400.4699, 14.0068, 126.8313, -1, -1, 60); //Dodo
	//(g_Vehicle[777], 0);
	g_Vehicle[778] = CreateVehicle(593, 1991.9356, -2377.5690, 14.0095, 111.9822, -1, -1, 60); //Dodo
	//(g_Vehicle[778], 0);
	g_Vehicle[779] = CreateVehicle(593, 1994.2282, -2329.9182, 14.0073, 123.6920, -1, -1, 60); //Dodo
	g_Vehicle[780] = CreateVehicle(593, 1993.0358, -2307.1486, 14.0073, 121.4825, -1, -1, 60); //Dodo
	//(g_Vehicle[780], 0);
	g_Vehicle[781] = CreateVehicle(485, 2005.4028, -2340.4003, 13.2025, 353.8797, -1, -1, 60); //Baggage
	//(g_Vehicle[781], 0);
	g_Vehicle[782] = CreateVehicle(485, 1944.1884, -2234.3225, 13.2017, 358.4946, -1, -1, 60); //Baggage
	//(g_Vehicle[782], 0);
	g_Vehicle[783] = CreateVehicle(485, 1893.2838, -2320.5075, 13.2069, 285.2384, -1, -1, 60); //Baggage
	g_Vehicle[784] = CreateVehicle(485, 1882.2479, -2390.3964, 13.2132, 266.7463, -1, -1, 60); //Baggage
	//(g_Vehicle[784], 0);
	g_Vehicle[785] = CreateVehicle(485, 1915.2465, -2643.3474, 13.2049, 2.2446, -1, -1, 60); //Baggage
	//(g_Vehicle[785], 0);
	g_Vehicle[786] = CreateVehicle(553, 1944.5241, -2639.1464, 14.8823, 28.0298, -1, -1, 60); //Nevada
	//(g_Vehicle[786], 0);
	g_Vehicle[787] = CreateVehicle(553, 1984.2778, -2637.7561, 14.8830, 9.0601, -1, -1, 60); //Nevada
	g_Vehicle[788] = CreateVehicle(553, 2019.7614, -2642.5803, 14.8759, 318.3255, -1, -1, 60); //Nevada
	//(g_Vehicle[788], 0);
	g_Vehicle[789] = CreateVehicle(476, 2124.7380, -2418.2963, 14.2641, 205.4615, -1, -1, 60); //Rustler
	//(g_Vehicle[789], 0);
	g_Vehicle[790] = CreateVehicle(476, 2142.8671, -2434.3076, 14.2587, 144.2144, -1, -1, 60); //Rustler
	//(g_Vehicle[790], 0);
	g_Vehicle[791] = CreateVehicle(476, 2107.1398, -2417.1647, 14.2646, 150.9743, -1, -1, 60); //Rustler
	g_Vehicle[792] = CreateVehicle(476, 2083.0217, -2429.4853, 14.2543, 182.9969, -1, -1, 60); //Rustler
	//(g_Vehicle[792], 0);
	g_Vehicle[793] = CreateVehicle(510, 2081.9865, -2359.7229, 13.1550, 64.1484, -1, -1, 60); //Mountain Bike
	//(g_Vehicle[793], 0);
	g_Vehicle[794] = CreateVehicle(510, 1866.6114, -2660.4602, 13.1552, 18.6151, -1, -1, 60); //Mountain Bike
	//(g_Vehicle[794], 0);
	g_Vehicle[795] = CreateVehicle(513, 1881.0273, -2632.3281, 14.0995, 40.9585, -1, -1, 60); //Stunt
	g_Vehicle[796] = CreateVehicle(513, 1891.9824, -2632.7055, 14.1084, 332.5663, -1, -1, 60); //Stunt
	//(g_Vehicle[796], 0);
	g_Vehicle[797] = CreateVehicle(593, 1840.4315, -2631.8525, 14.0080, 319.2033, -1, -1, 60); //Dodo
	//(g_Vehicle[797], 0);
	g_Vehicle[798] = CreateVehicle(593, 1822.1689, -2629.8713, 14.0075, 35.6964, -1, -1, 60); //Dodo
	//(g_Vehicle[798], 0);
	g_Vehicle[799] = CreateVehicle(593, 1806.7132, -2630.3166, 14.0037, 32.0461, -1, -1, 60); //Dodo
	g_Vehicle[800] = CreateVehicle(476, 1752.8642, -2632.2060, 14.2630, 1.4833, -1, -1, 60); //Rustler
	//(g_Vehicle[800], 0);
	g_Vehicle[801] = CreateVehicle(481, 1698.6531, -2692.0224, 13.0592, 256.1955, -1, -1, 60); //BMX
	//(g_Vehicle[801], 0);
	g_Vehicle[802] = CreateVehicle(485, 1707.5415, -2646.3325, 13.2052, 359.6846, -1, -1, 60); //Baggage
	//(g_Vehicle[802], 0);
	g_Vehicle[803] = CreateVehicle(487, 1716.0422, -2437.5766, 13.7315, 148.7897, -1, -1, 60); //Maverick
	g_Vehicle[804] = CreateVehicle(487, 1737.4826, -2432.7019, 13.7340, 192.0325, -1, -1, 60); //Maverick
	//(g_Vehicle[804], 0);
	g_Vehicle[805] = CreateVehicle(487, 1752.5585, -2452.2275, 13.7321, 147.2026, -1, -1, 60); //Maverick
	//(g_Vehicle[805], 0);
	g_Vehicle[806] = CreateVehicle(417, 1636.0141, -2409.7209, 13.6266, 193.2301, -1, -1, 60); //Leviathan
	//(g_Vehicle[806], 0);
	g_Vehicle[807] = CreateVehicle(417, 1655.8718, -2410.4550, 13.6350, 156.9427, -1, -1, 60); //Leviathan
	g_Vehicle[808] = CreateVehicle(510, 1600.9696, -2395.0102, 13.2262, 298.2055, -1, -1, 60); //Mountain Bike
	//(g_Vehicle[808], 0);
	g_Vehicle[809] = CreateVehicle(497, 1575.9306, -2408.7253, 13.7347, 153.2041, -1, -1, 60); //Police Maverick
	//(g_Vehicle[809], 0);
	g_Vehicle[810] = CreateVehicle(497, 1554.8206, -2406.4416, 13.7307, 190.6669, -1, -1, 60); //Police Maverick
	//(g_Vehicle[810], 0);
	g_Vehicle[811] = CreateVehicle(446, 728.1594, -1495.2686, -0.4905, 179.7908, -1, -1, 60); //Squalo
	g_Vehicle[812] = CreateVehicle(454, 720.7039, -1633.3223, 0.1486, 177.6009, -1, -1, 60); //Tropic
	//(g_Vehicle[812], 0);
	g_Vehicle[813] = CreateVehicle(454, 720.5266, -1699.9826, 0.1865, 358.9251, -1, -1, 60); //Tropic
	//(g_Vehicle[813], 0);
	g_Vehicle[814] = CreateVehicle(429, 764.7678, -1660.5484, 4.2160, 94.0819, -1, -1, 60); //Banshee
	//(g_Vehicle[814], 0);
	g_Vehicle[815] = CreateVehicle(541, 688.0234, -1600.1551, 13.7215, 359.7576, -1, -1, 60); //Bullet
	g_Vehicle[816] = CreateVehicle(466, 594.6931, -1519.6712, 14.8585, 178.9837, -1, -1, 60); //Glendale
	//(g_Vehicle[816], 0);
	g_Vehicle[817] = CreateVehicle(458, 601.2114, -1519.8090, 14.8971, 359.8546, -1, -1, 60); //Solair
	//(g_Vehicle[817], 0);
	g_Vehicle[818] = CreateVehicle(496, 648.1077, -1507.8370, 14.7835, 88.3480, -1, -1, 60); //Blista Compact
	//(g_Vehicle[818], 0);
	g_Vehicle[819] = CreateVehicle(429, 729.7592, -1433.3432, 13.2151, 90.2927, -1, -1, 60); //Banshee
	g_Vehicle[820] = CreateVehicle(506, 665.4387, -1421.5520, 14.3496, 1.6521, -1, -1, 60); //Super GT
	//(g_Vehicle[820], 0);
	g_Vehicle[821] = CreateVehicle(506, 587.3435, -1499.5959, 15.0621, 273.6347, -1, -1, 60); //Super GT
	//(g_Vehicle[821], 0);
	g_Vehicle[822] = CreateVehicle(413, 691.4462, -1570.2456, 14.3358, 179.2635, -1, -1, 60); //Pony
	//(g_Vehicle[822], 0);
	g_Vehicle[823] = CreateVehicle(451, 489.1148, -1514.9581, 20.0515, 186.2239, -1, -1, 60); //Turismo
	g_Vehicle[824] = CreateVehicle(541, 494.3371, -1604.7160, 18.2000, 275.6069, -1, -1, 60); //Bullet
	//(g_Vehicle[824], 0);
	g_Vehicle[825] = CreateVehicle(603, 259.4689, -1597.9202, 33.1166, 299.1694, -1, -1, 60); //Phoenix
	//(g_Vehicle[825], 0);
	g_Vehicle[826] = CreateVehicle(429, 262.3868, -1603.2012, 33.0642, 323.2319, -1, -1, 60); //Banshee
	//(g_Vehicle[826], 0);
	g_Vehicle[827] = CreateVehicle(518, 258.0661, -1591.6113, 33.1217, 275.3944, -1, -1, 60); //Buccaneer
	g_Vehicle[828] = CreateVehicle(409, 867.4957, -1285.9367, 13.8858, 357.4154, -1, -1, 60); //Stretch
	//(g_Vehicle[828], 0);
	g_Vehicle[829] = CreateVehicle(457, 844.4998, -1197.9864, 16.6037, 0.3980, -1, -1, 60); //Caddy
	//(g_Vehicle[829], 0);
	g_Vehicle[830] = CreateVehicle(457, 880.8410, -1199.7491, 16.6030, 357.7022, -1, -1, 60); //Caddy
	//(g_Vehicle[830], 0);
	g_Vehicle[831] = CreateVehicle(457, 914.7440, -1199.8364, 16.6032, 359.8655, -1, -1, 60); //Caddy
	g_Vehicle[832] = CreateVehicle(463, 920.4453, -1290.5063, 13.3507, 118.6504, -1, -1, 60); //Freeway
	//(g_Vehicle[832], 0);
	g_Vehicle[833] = CreateVehicle(542, 863.2733, -1375.0151, 13.3186, 85.7265, -1, -1, 60); //Clover
	//(g_Vehicle[833], 0);
	g_Vehicle[834] = CreateVehicle(561, 903.8953, -1454.9287, 12.8650, 270.7864, -1, -1, 60); //Stratum
	//(g_Vehicle[834], 0);
	g_Vehicle[835] = CreateVehicle(429, 881.5562, -1453.8587, 13.3618, 271.8305, -1, -1, 60); //Banshee
	g_Vehicle[836] = CreateVehicle(507, 809.9614, -1448.9108, 12.9680, 87.2106, -1, -1, 60); //Elegant
	//(g_Vehicle[836], 0);
	g_Vehicle[837] = CreateVehicle(589, 810.5452, -1464.3677, 12.7190, 85.7123, -1, -1, 60); //Club
	//(g_Vehicle[837], 0);
	g_Vehicle[838] = CreateVehicle(496, 821.6032, -1473.7248, 12.5755, 357.5007, -1, -1, 60); //Blista Compact
	//(g_Vehicle[838], 0);
	g_Vehicle[839] = CreateVehicle(461, 1031.1113, -1446.3105, 13.1410, 59.0579, -1, -1, 60); //PCJ-600
	g_Vehicle[840] = CreateVehicle(418, 1005.0084, -1461.3424, 13.6427, 183.0260, -1, -1, 60); //Moonbeam
	//(g_Vehicle[840], 0);
	g_Vehicle[841] = CreateVehicle(463, 990.1287, -1354.9877, 12.9125, 285.7226, -1, -1, 60); //Freeway
	//(g_Vehicle[841], 0);
	g_Vehicle[842] = CreateVehicle(479, 991.3928, -1345.2102, 13.1759, 271.1148, -1, -1, 60); //Regina
	//(g_Vehicle[842], 0);
	g_Vehicle[843] = CreateVehicle(489, 990.5985, -1306.8128, 13.5204, 179.0487, -1, -1, 60); //Rancher
	g_Vehicle[844] = CreateVehicle(475, 1002.5062, -1306.5654, 13.1865, 359.6423, -1, -1, 60); //Sabre
	//(g_Vehicle[844], 0);
	g_Vehicle[845] = CreateVehicle(518, 981.5053, -1306.6899, 13.1630, 181.0135, -1, -1, 60); //Buccaneer
	//(g_Vehicle[845], 0);
	g_Vehicle[846] = CreateVehicle(414, 979.2277, -1258.1351, 16.8071, 182.5785, -1, -1, 60); //Mule
	//(g_Vehicle[846], 0);
	g_Vehicle[847] = CreateVehicle(506, 955.9268, -1184.0711, 16.6497, 269.9031, -1, -1, 60); //Super GT
	g_Vehicle[848] = CreateVehicle(549, 955.8333, -1190.2795, 16.6424, 270.2727, -1, -1, 60); //Tampa
	//(g_Vehicle[848], 0);
	g_Vehicle[849] = CreateVehicle(482, 956.0021, -1199.3632, 17.1270, 268.5538, -1, -1, 60); //Burrito
	//(g_Vehicle[849], 0);
	g_Vehicle[850] = CreateVehicle(468, 956.3897, -1193.4252, 16.6296, 89.6432, -1, -1, 60); //Sanchez
	//(g_Vehicle[850], 0);
	g_Vehicle[851] = CreateVehicle(567, 1085.8342, -1199.3883, 17.7945, 90.5839, -1, -1, 60); //Savanna
	g_Vehicle[852] = CreateVehicle(542, 1097.0354, -1218.1705, 17.5471, 356.6482, -1, -1, 60); //Clover
	//(g_Vehicle[852], 0);
	g_Vehicle[853] = CreateVehicle(461, 1084.2866, -1232.2460, 15.3944, 243.6654, -1, -1, 60); //PCJ-600
	//(g_Vehicle[853], 0);
	g_Vehicle[854] = CreateVehicle(461, 1083.9337, -1235.0449, 15.4088, 243.8919, -1, -1, 60); //PCJ-600
	//(g_Vehicle[854], 0);
	g_Vehicle[855] = CreateVehicle(461, 1083.7940, -1238.1573, 15.4110, 243.1096, -1, -1, 60); //PCJ-600
	g_Vehicle[856] = CreateVehicle(405, 1109.0310, -1225.8808, 15.6986, 181.5343, -1, -1, 60); //Sentinel
	//(g_Vehicle[856], 0);
	g_Vehicle[857] = CreateVehicle(458, 1000.3081, -1084.5488, 23.7068, 179.6206, -1, -1, 60); //Solair
	//(g_Vehicle[857], 0);
	g_Vehicle[858] = CreateVehicle(542, 1015.8253, -1083.9112, 23.5711, 0.6381, -1, -1, 60); //Clover
	//(g_Vehicle[858], 0);
	g_Vehicle[859] = CreateVehicle(461, 1032.2993, -1082.4255, 23.4136, 166.6669, -1, -1, 60); //PCJ-600
	g_Vehicle[860] = CreateVehicle(475, 1003.6658, -1054.6087, 30.6945, 3.0438, -1, -1, 60); //Sabre
	//(g_Vehicle[860], 0);
	g_Vehicle[861] = CreateVehicle(560, 1070.9108, -1102.3247, 24.4438, 270.7970, -1, -1, 60); //Sultan
	//(g_Vehicle[861], 0);
	g_Vehicle[862] = CreateVehicle(496, 1137.6491, -1025.5585, 31.5121, 177.9916, -1, -1, 60); //Blista Compact
	//(g_Vehicle[862], 0);
	g_Vehicle[863] = CreateVehicle(558, 1131.7341, -1010.0579, 29.4899, 95.0936, -1, -1, 60); //Uranus
	g_Vehicle[864] = CreateVehicle(581, 1205.2384, -977.0175, 43.0741, 179.7536, -1, -1, 60); //BF-400
	//(g_Vehicle[864], 0);
	g_Vehicle[865] = CreateVehicle(536, 1227.2596, -974.1713, 43.2139, 180.2966, -1, -1, 60); //Blade
	//(g_Vehicle[865], 0);
	g_Vehicle[866] = CreateVehicle(414, 1110.5709, -1331.4204, 13.1385, 0.6025, -1, -1, 60); //Mule
	//(g_Vehicle[866], 0);
	g_Vehicle[867] = CreateVehicle(581, 989.3703, -1589.3812, 13.0902, 21.5606, -1, -1, 60); //BF-400
	g_Vehicle[868] = CreateVehicle(542, 1061.2451, -1665.2648, 13.4966, 91.9120, -1, -1, 60); //Clover
	//(g_Vehicle[868], 0);
	g_Vehicle[869] = CreateVehicle(405, 1136.5766, -1695.5198, 13.6955, 88.9354, -1, -1, 60); //Sentinel
	//(g_Vehicle[869], 0);
	g_Vehicle[870] = CreateVehicle(463, 1137.1466, -1700.1901, 13.3868, 87.9395, -1, -1, 60); //Freeway
	//(g_Vehicle[870], 0);
	g_Vehicle[871] = CreateVehicle(518, 1280.4908, -1816.1258, 13.0556, 270.4623, -1, -1, 60); //Buccaneer
	g_Vehicle[872] = CreateVehicle(482, 1250.2468, -1835.0883, 13.5046, 180.4024, -1, -1, 60); //Burrito
	//(g_Vehicle[872], 0);
	g_Vehicle[873] = CreateVehicle(527, 1196.9360, -1829.6979, 13.1197, 269.7544, -1, -1, 60); //Cadrona
	//(g_Vehicle[873], 0);
	g_Vehicle[874] = CreateVehicle(589, 1280.9364, -1833.0606, 13.0417, 90.8050, -1, -1, 60); //Club
	//(g_Vehicle[874], 0);
	g_Vehicle[875] = CreateVehicle(562, 1267.0611, -1795.2073, 13.0701, 0.6532, -1, -1, 60); //Elegy
	g_Vehicle[876] = CreateVehicle(463, 1281.6627, -1805.1253, 12.9240, 62.4968, -1, -1, 60); //Freeway
	//(g_Vehicle[876], 0);
	g_Vehicle[877] = CreateVehicle(545, 1238.0167, -1835.2385, 13.2007, 177.5310, -1, -1, 60); //Hustler
	//(g_Vehicle[877], 0);
	g_Vehicle[878] = CreateVehicle(400, 1423.8416, -1845.0616, 13.4771, 270.4685, -1, -1, 60); //Landstalker
	//(g_Vehicle[878], 0);
	g_Vehicle[879] = CreateVehicle(546, 1536.6632, -1846.7764, 13.2712, 0.8184, -1, -1, 60); //Intruder
	g_Vehicle[880] = CreateVehicle(475, 1614.0916, -1893.9027, 13.3521, 357.9483, -1, -1, 60); //Sabre
	//(g_Vehicle[880], 0);
	g_Vehicle[881] = CreateVehicle(546, 1796.2774, -1933.2836, 13.1180, 180.4499, -1, -1, 60); //Intruder
	//(g_Vehicle[881], 0);
	g_Vehicle[882] = CreateVehicle(545, 1776.1965, -1917.6883, 13.1976, 90.7850, -1, -1, 60); //Hustler
	//(g_Vehicle[882], 0);
	g_Vehicle[883] = CreateVehicle(400, 1776.1497, -1907.3948, 13.4787, 271.3830, -1, -1, 60); //Landstalker
	g_Vehicle[884] = CreateVehicle(400, 1804.1429, -1909.4019, 13.3327, 269.6683, -1, -1, 60); //Landstalker
	//(g_Vehicle[884], 0);
	g_Vehicle[885] = CreateVehicle(474, 1804.4888, -1919.3353, 13.1555, 269.8830, -1, -1, 60); //Hermes
	//(g_Vehicle[885], 0);
	g_Vehicle[886] = CreateVehicle(496, 1785.9353, -1933.2902, 13.1750, 0.8604, -1, -1, 60); //Blista Compact
	//(g_Vehicle[886], 0);
	g_Vehicle[887] = CreateVehicle(496, 1776.2777, -1894.0770, 12.9741, 272.6131, -1, -1, 60); //Blista Compact
	g_Vehicle[888] = CreateVehicle(482, 1776.5122, -1899.9752, 13.5071, 87.3522, -1, -1, 60); //Burrito
	//(g_Vehicle[888], 0);
	g_Vehicle[889] = CreateVehicle(482, 1791.3898, -1933.2008, 13.5101, 180.1195, -1, -1, 60); //Burrito
	//(g_Vehicle[889], 0);
	g_Vehicle[890] = CreateVehicle(461, 1775.7962, -1912.6582, 12.9720, 269.4815, -1, -1, 60); //PCJ-600
	//(g_Vehicle[890], 0);
	g_Vehicle[891] = CreateVehicle(461, 1775.7340, -1914.1242, 12.9715, 262.3924, -1, -1, 60); //PCJ-600
	g_Vehicle[892] = CreateVehicle(536, 1834.7807, -1871.9733, 13.0924, 179.2433, -1, -1, 60); //Blade
	//(g_Vehicle[892], 0);
	g_Vehicle[893] = CreateVehicle(496, 1836.6301, -1853.6380, 13.1058, 179.9886, -1, -1, 60); //Blista Compact
	//(g_Vehicle[893], 0);
	g_Vehicle[894] = CreateVehicle(414, 1858.8853, -1875.5943, 13.5724, 180.1932, -1, -1, 60); //Mule
	//(g_Vehicle[894], 0);
	g_Vehicle[895] = CreateVehicle(468, 1900.5659, -1849.8378, 13.2277, 44.6101, -1, -1, 60); //Sanchez
	g_Vehicle[896] = CreateVehicle(589, 1251.2297, -2042.1304, 59.4473, 180.0659, -1, -1, 60); //Club
	//(g_Vehicle[896], 0);
	g_Vehicle[897] = CreateVehicle(521, 1244.8016, -2023.3498, 59.4329, 292.8341, -1, -1, 60); //FCR-900
	//(g_Vehicle[897], 0);
	g_Vehicle[898] = CreateVehicle(506, 1256.9205, -2009.4755, 59.2126, 0.8008, -1, -1, 60); //Super GT
	//(g_Vehicle[898], 0);
	g_Vehicle[899] = CreateVehicle(522, 1277.8239, -2011.9354, 58.4634, 268.7319, -1, -1, 60); //NRG-500
	g_Vehicle[900] = CreateVehicle(463, 1097.5217, -1763.8896, 12.8933, 267.4285, -1, -1, 60); //Freeway
	//(g_Vehicle[900], 0);
	g_Vehicle[901] = CreateVehicle(475, 892.6356, -1668.8603, 13.3543, 179.2465, -1, -1, 60); //Sabre
	//(g_Vehicle[901], 0);
	g_Vehicle[902] = CreateVehicle(506, 874.8234, -1658.4842, 13.2513, 181.7122, -1, -1, 60); //Super GT
	//(g_Vehicle[902], 0);
	g_Vehicle[903] = CreateVehicle(521, 870.1176, -1676.6573, 13.1183, 186.2731, -1, -1, 60); //FCR-900
	g_Vehicle[904] = CreateVehicle(496, 888.5651, -1679.1317, 13.2628, 357.5184, -1, -1, 60); //Blista Compact
	//(g_Vehicle[904], 0);
	g_Vehicle[905] = CreateVehicle(411, 1671.5545, -1719.5422, 20.2115, 269.5804, -1, -1, 60); //Infernus
	//(g_Vehicle[905], 0);
	g_Vehicle[906] = CreateVehicle(415, 1656.9488, -1695.5144, 20.2285, 358.9435, -1, -1, 60); //Cheetah
	//(g_Vehicle[906], 0);
	g_Vehicle[907] = CreateVehicle(496, 1671.9685, -1704.4779, 20.2005, 270.8929, -1, -1, 60); //Blista Compact
	g_Vehicle[908] = CreateVehicle(461, 1673.9682, -1713.0563, 20.0617, 67.1317, -1, -1, 60); //PCJ-600
	//(g_Vehicle[908], 0);
	g_Vehicle[909] = CreateVehicle(413, 327.8442, -1809.2729, 4.5732, 359.3341, -1, -1, 60); //Pony
	//(g_Vehicle[909], 0);
	g_Vehicle[910] = CreateVehicle(439, 311.7233, -1809.8576, 4.3551, 179.9754, -1, -1, 60); //Stallion
	//(g_Vehicle[910], 0);
	g_Vehicle[911] = CreateVehicle(496, 334.3875, -1788.6018, 4.7803, 358.1174, -1, -1, 60); //Blista Compact
	g_Vehicle[912] = CreateVehicle(414, 383.4588, -1740.6958, 8.8570, 358.6929, -1, -1, 60); //Mule
	//(g_Vehicle[912], 0);
	g_Vehicle[913] = CreateVehicle(467, 740.4370, -1793.5476, 12.9180, 349.2087, -1, -1, 60); //Oceanic
	//(g_Vehicle[913], 0);
	g_Vehicle[914] = CreateVehicle(473, 823.7593, -2066.2685, -0.1017, 112.6380, -1, -1, 60); //Dinghy
	//(g_Vehicle[914], 0);
	g_Vehicle[915] = CreateVehicle(467, 892.0507, -1797.3350, 13.4069, 175.4098, -1, -1, 60); //Oceanic
	g_Vehicle[916] = CreateVehicle(467, 944.9135, -1813.5589, 13.0145, 350.0614, -1, -1, 60); //Oceanic
	//(g_Vehicle[916], 0);
	g_Vehicle[917] = CreateVehicle(491, 1096.8945, -1878.8029, 13.3030, 178.1535, -1, -1, 60); //Virgo
	//(g_Vehicle[917], 0);
	g_Vehicle[918] = CreateVehicle(496, 1206.2453, -1879.0792, 13.3340, 88.5189, -1, -1, 60); //Blista Compact
	//(g_Vehicle[918], 0);
	g_Vehicle[919] = CreateVehicle(541, 288.7143, -1158.0404, 80.5348, 221.9676, -1, -1, 60); //Bullet
	g_Vehicle[920] = CreateVehicle(589, 346.9617, -1197.2282, 76.2874, 25.8040, -1, -1, 60); //Club
	//(g_Vehicle[920], 0);
	g_Vehicle[921] = CreateVehicle(411, 407.0924, -1151.5202, 76.6353, 148.1414, -1, -1, 60); //Infernus
	//(g_Vehicle[921], 0);
	g_Vehicle[922] = CreateVehicle(562, 481.5187, -1089.5427, 82.1051, 359.1924, -1, -1, 60); //Elegy
	//(g_Vehicle[922], 0);
	g_Vehicle[923] = CreateVehicle(426, 565.9165, -1067.1945, 73.1332, 35.3833, -1, -1, 60); //Premier
	g_Vehicle[924] = CreateVehicle(451, 228.7167, -1398.7766, 51.2916, 51.4378, -1, -1, 60); //Turismo
	//(g_Vehicle[924], 0);
	g_Vehicle[925] = CreateVehicle(429, 133.9096, -1492.1662, 18.5958, 57.1214, -1, -1, 60); //Banshee
	//(g_Vehicle[925], 0);
	g_Vehicle[926] = CreateVehicle(562, 150.7156, -1473.8825, 24.9242, 5.9388, -1, -1, 60); //Elegy
	//(g_Vehicle[926], 0);
	g_Vehicle[927] = CreateVehicle(411, 166.3856, -1340.8577, 69.4391, 190.4770, -1, -1, 60); //Infernus
	g_Vehicle[928] = CreateVehicle(603, 172.0261, -1341.3417, 69.5661, 168.2207, -1, -1, 60); //Phoenix
	//(g_Vehicle[928], 0);
	g_Vehicle[929] = CreateVehicle(429, 248.8977, -1355.4116, 52.8828, 279.1666, -1, -1, 60); //Banshee
	//(g_Vehicle[929], 0);
	g_Vehicle[930] = CreateVehicle(451, 251.6047, -1359.8791, 52.7134, 300.5451, -1, -1, 60); //Turismo
	//(g_Vehicle[930], 0);
	g_Vehicle[931] = CreateVehicle(562, 299.8024, -1331.8171, 53.2743, 72.7621, -1, -1, 60); //Elegy
	g_Vehicle[932] = CreateVehicle(405, 406.4772, -1264.2564, 50.2499, 24.0160, -1, -1, 60); //Sentinel
	//(g_Vehicle[932], 0);
	g_Vehicle[933] = CreateVehicle(535, 423.6223, -1266.3209, 51.3450, 21.9437, -1, -1, 60); //Slamvan
	//(g_Vehicle[933], 0);
	g_Vehicle[934] = CreateVehicle(477, 261.5546, -1220.3823, 74.6477, 183.4546, -1, -1, 60); //ZR3 50
	//(g_Vehicle[934], 0);
	g_Vehicle[935] = CreateVehicle(535, 276.9328, -1267.3054, 73.7098, 302.5802, -1, -1, 60); //Slamvan
	g_Vehicle[936] = CreateVehicle(496, 280.3806, -1255.7951, 73.6166, 281.7692, -1, -1, 60); //Blista Compact
	//(g_Vehicle[936], 0);
	g_Vehicle[937] = CreateVehicle(411, 282.9342, -1160.4200, 80.6400, 223.5829, -1, -1, 60); //Infernus
	//(g_Vehicle[937], 0);
	g_Vehicle[938] = CreateVehicle(589, 569.3154, -1131.7330, 50.2949, 243.4571, -1, -1, 60); //Club
	//(g_Vehicle[938], 0);
	g_Vehicle[939] = CreateVehicle(411, 617.2254, -1102.6524, 46.5130, 126.8060, -1, -1, 60); //Infernus
	g_Vehicle[940] = CreateVehicle(562, 687.5811, -1072.8161, 49.1273, 62.7813, -1, -1, 60); //Elegy
	//(g_Vehicle[940], 0);
	g_Vehicle[941] = CreateVehicle(496, 724.4912, -995.4954, 52.3857, 89.4483, -1, -1, 60); //Blista Compact
	//(g_Vehicle[941], 0);
	g_Vehicle[942] = CreateVehicle(545, 795.9840, -840.3972, 60.4525, 174.5740, -1, -1, 60); //Hustler
	//(g_Vehicle[942], 0);
	g_Vehicle[943] = CreateVehicle(522, 846.9827, -905.6497, 68.3458, 342.5805, -1, -1, 60); //NRG-500
	g_Vehicle[944] = CreateVehicle(534, 831.9913, -858.8560, 69.6527, 199.3811, -1, -1, 60); //Remington
	//(g_Vehicle[944], 0);
	g_Vehicle[945] = CreateVehicle(535, 839.4456, -893.5927, 68.5339, 21.2259, -1, -1, 60); //Slamvan
	//(g_Vehicle[945], 0);
	g_Vehicle[946] = CreateVehicle(477, 912.5916, -832.0980, 92.1407, 218.1896, -1, -1, 60); //ZR3 50
	//(g_Vehicle[946], 0);
	g_Vehicle[947] = CreateVehicle(429, 942.3408, -842.2905, 93.9552, 49.3921, -1, -1, 60); //Banshee
	g_Vehicle[948] = CreateVehicle(429, 934.4840, -856.8366, 93.1734, 204.4156, -1, -1, 60); //Banshee
	//(g_Vehicle[948], 0);
	g_Vehicle[949] = CreateVehicle(562, 966.6583, -842.2114, 95.4213, 208.6851, -1, -1, 60); //Elegy
	//(g_Vehicle[949], 0);
	g_Vehicle[950] = CreateVehicle(451, 979.1475, -831.5277, 95.3282, 27.7639, -1, -1, 60); //Turismo
	//(g_Vehicle[950], 0);
	g_Vehicle[951] = CreateVehicle(589, 1024.2819, -777.6995, 102.7276, 142.3072, -1, -1, 60); //Club
	g_Vehicle[952] = CreateVehicle(429, 1028.9190, -810.0178, 101.6239, 200.6103, -1, -1, 60); //Banshee
	//(g_Vehicle[952], 0);
	g_Vehicle[953] = CreateVehicle(522, 1099.2414, -818.4705, 86.5177, 153.5570, -1, -1, 60); //NRG-500
	//(g_Vehicle[953], 0);
	g_Vehicle[954] = CreateVehicle(522, 1256.5295, -804.6978, 83.7137, 117.1747, -1, -1, 60); //NRG-500
	//(g_Vehicle[954], 0);
	g_Vehicle[955] = CreateVehicle(541, 1248.1568, -804.1442, 83.7656, 167.9414, -1, -1, 60); //Bullet
	g_Vehicle[956] = CreateVehicle(487, 1291.7154, -786.8651, 96.6376, 1.5838, -1, -1, 60); //Maverick
	//(g_Vehicle[956], 0);
	g_Vehicle[957] = CreateVehicle(589, 1352.0870, -622.1929, 108.8587, 24.2311, -1, -1, 60); //Club
	//(g_Vehicle[957], 0);
	g_Vehicle[958] = CreateVehicle(477, 1460.3851, -633.6793, 95.5530, 179.4418, -1, -1, 60); //ZR3 50
	//(g_Vehicle[958], 0);
	g_Vehicle[959] = CreateVehicle(411, 1108.8184, -732.7199, 100.2283, 87.5486, -1, -1, 60); //Infernus
	g_Vehicle[960] = CreateVehicle(429, 1515.2769, -695.3986, 94.4297, 99.0699, -1, -1, 60); //Banshee
	//(g_Vehicle[960], 0);
	g_Vehicle[961] = CreateVehicle(522, 1518.6567, -688.1442, 94.3201, 127.6349, -1, -1, 60); //NRG-500
	//(g_Vehicle[961], 0);
	g_Vehicle[962] = CreateVehicle(535, 1516.9451, -765.4360, 79.7405, 142.5422, -1, -1, 60); //Slamvan
	//(g_Vehicle[962], 0);
	g_Vehicle[963] = CreateVehicle(458, 1530.6601, -814.2603, 71.8144, 269.5965, -1, -1, 60); //Solair
	g_Vehicle[964] = CreateVehicle(560, 1536.7003, -841.9439, 64.3992, 91.2450, -1, -1, 60); //Sultan
	//(g_Vehicle[964], 0);
	g_Vehicle[965] = CreateVehicle(506, 1515.6777, -879.8585, 61.2318, 73.2863, -1, -1, 60); //Super GT
	//(g_Vehicle[965], 0);
	g_Vehicle[966] = CreateVehicle(451, 1464.4681, -902.8251, 54.5429, 174.4411, -1, -1, 60); //Turismo
	//(g_Vehicle[966], 0);
	g_Vehicle[967] = CreateVehicle(429, 1429.4168, -883.6696, 50.4306, 45.8138, -1, -1, 60); //Banshee
	g_Vehicle[968] = CreateVehicle(589, 1088.9661, -644.2655, 113.1492, 338.4003, -1, -1, 60); //Club
	//(g_Vehicle[968], 0);
	g_Vehicle[969] = CreateVehicle(424, 1113.3991, -657.0714, 113.2538, 1.8935, -1, -1, 60); //BF Injection
	//(g_Vehicle[969], 0);
	g_Vehicle[970] = CreateVehicle(411, 1048.4277, -639.6287, 119.8442, 62.9709, -1, -1, 60); //Infernus
	//(g_Vehicle[970], 0);
	g_Vehicle[971] = CreateVehicle(550, 1038.2851, -640.5811, 119.9406, 3.9958, -1, -1, 60); //Sunrise
	g_Vehicle[972] = CreateVehicle(558, 1011.0540, -659.9860, 120.7725, 34.0074, -1, -1, 60); //Uranus
	//(g_Vehicle[972], 0);
	g_Vehicle[973] = CreateVehicle(562, 1006.7905, -663.9238, 120.8018, 212.6701, -1, -1, 60); //Elegy
	//(g_Vehicle[973], 0);
	g_Vehicle[974] = CreateVehicle(560, 946.7752, -705.8109, 121.9153, 208.3881, -1, -1, 60); //Sultan
	//(g_Vehicle[974], 0);
	g_Vehicle[975] = CreateVehicle(535, 912.4982, -665.0076, 116.7563, 234.0563, -1, -1, 60); //Slamvan
	g_Vehicle[976] = CreateVehicle(477, 866.9702, -712.0836, 105.4297, 301.5711, -1, -1, 60); //ZR3 50
	//(g_Vehicle[976], 0);
	g_Vehicle[977] = CreateVehicle(518, 851.5045, -741.6163, 94.8511, 223.7017, -1, -1, 60); //Buccaneer
	//(g_Vehicle[977], 0);
	g_Vehicle[978] = CreateVehicle(603, 887.4414, -782.3809, 101.1163, 325.3539, -1, -1, 60); //Phoenix
	//(g_Vehicle[978], 0);
	g_Vehicle[979] = CreateVehicle(534, 834.7188, -754.2108, 85.0352, 221.3681, -1, -1, 60); //Remington
	g_Vehicle[980] = CreateVehicle(545, 856.4265, -825.8338, 89.3121, 35.0684, -1, -1, 60); //Hustler
	//(g_Vehicle[980], 0);
	g_Vehicle[981] = CreateVehicle(545, 812.7324, -768.6060, 76.6225, 240.9842, -1, -1, 60); //Hustler
	//(g_Vehicle[981], 0);
	g_Vehicle[982] = CreateVehicle(562, 792.6621, -824.7412, 69.7716, 10.8902, -1, -1, 60); //Elegy
	//(g_Vehicle[982], 0);
	g_Vehicle[983] = CreateVehicle(405, 211.8928, -1419.0681, 13.1531, 135.6235, -1, -1, 60); //Sentinel
	g_Vehicle[984] = CreateVehicle(461, 203.5655, -1441.0551, 12.6880, 319.3540, -1, -1, 60); //PCJ-600
	//(g_Vehicle[984], 0);
	g_Vehicle[985] = CreateVehicle(482, 216.6307, -1431.9064, 13.3690, 313.9950, -1, -1, 60); //Burrito
	//(g_Vehicle[985], 0);
	g_Vehicle[986] = CreateVehicle(462, 338.6057, -1340.7114, 14.1075, 116.4867, -1, -1, 60); //Faggio
	//(g_Vehicle[986], 0);
	g_Vehicle[987] = CreateVehicle(439, 343.3987, -1353.3426, 14.4033, 299.2459, -1, -1, 60); //Stallion
	g_Vehicle[988] = CreateVehicle(542, 412.7445, -1318.5144, 14.6645, 210.7711, -1, -1, 60); //Clover
	//(g_Vehicle[988], 0);
	g_Vehicle[989] = CreateVehicle(521, 411.1231, -1311.2087, 14.5024, 140.9817, -1, -1, 60); //FCR-900
	//(g_Vehicle[989], 0);
	g_Vehicle[990] = CreateVehicle(562, 500.5935, -1304.4486, 16.8673, 309.5459, -1, -1, 60); //Elegy
	//(g_Vehicle[990], 0);
	g_Vehicle[991] = CreateVehicle(521, 531.3095, -1315.9926, 16.8134, 188.1210, -1, -1, 60); //FCR-900
	g_Vehicle[992] = CreateVehicle(589, 534.3378, -1291.4104, 17.0132, 1.2697, -1, -1, 60); //Club
	//(g_Vehicle[992], 0);
	g_Vehicle[993] = CreateVehicle(463, 542.3273, -1292.8159, 16.7824, 341.9847, -1, -1, 60); //Freeway
	//(g_Vehicle[993], 0);
	g_Vehicle[994] = CreateVehicle(496, 556.2567, -1291.2497, 17.0149, 180.9515, -1, -1, 60); //Blista Compact
	//(g_Vehicle[994], 0);
	g_Vehicle[995] = CreateVehicle(461, 587.8505, -1279.8562, 15.9628, 75.5048, -1, -1, 60); //PCJ-600
	g_Vehicle[996] = CreateVehicle(463, 588.5496, -1282.7084, 15.7110, 71.1036, -1, -1, 60); //Freeway
	//(g_Vehicle[996], 0);
	g_Vehicle[997] = CreateVehicle(589, 569.1939, -1264.3146, 16.4482, 105.7125, -1, -1, 60); //Club
	//(g_Vehicle[997], 0);
	g_Vehicle[998] = CreateVehicle(474, 580.0231, -1310.1290, 13.6309, 190.1793, -1, -1, 60); //Hermes
	//(g_Vehicle[998], 0);
	g_Vehicle[999] = CreateVehicle(429, 760.3118, -1026.9937, 23.8337, 171.0469, -1, -1, 60); //Banshee
	g_Vehicle[1000] = CreateVehicle(411, 825.8176, -1006.6129, 27.4827, 38.8899, -1, -1, 60); //Infernus
	//(g_Vehicle[1000], 0);
	g_Vehicle[1001] = CreateVehicle(429, 973.4509, -930.9050, 42.1739, 91.9581, -1, -1, 60); //Banshee
	//(g_Vehicle[1001], 0);
	g_Vehicle[1002] = CreateVehicle(463, 892.2067, -944.0689, 41.3930, 346.6370, -1, -1, 60); //Freeway
	//(g_Vehicle[1002], 0);
	g_Vehicle[1003] = CreateVehicle(496, 1039.0024, -925.8621, 42.0801, 3.8901, -1, -1, 60); //Blista Compact
	g_Vehicle[1004] = CreateVehicle(496, 1028.1857, -887.8458, 41.8742, 18.1744, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1004], 0);
	g_Vehicle[1005] = CreateVehicle(534, 1091.6672, -934.4342, 42.7434, 181.8923, -1, -1, 60); //Remington
	//(g_Vehicle[1005], 0);
	g_Vehicle[1006] = CreateVehicle(496, 1196.4460, -887.2949, 42.7778, 4.9401, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1006], 0);
	g_Vehicle[1007] = CreateVehicle(461, 1184.3698, -898.7025, 42.8468, 50.8005, -1, -1, 60); //PCJ-600
	g_Vehicle[1008] = CreateVehicle(479, 1307.0080, -871.5775, 39.3722, 88.4694, -1, -1, 60); //Regina
	//(g_Vehicle[1008], 0);
	g_Vehicle[1009] = CreateVehicle(482, 1307.4616, -865.4688, 39.6982, 269.2831, -1, -1, 60); //Burrito
	//(g_Vehicle[1009], 0);
	g_Vehicle[1010] = CreateVehicle(543, 1307.4489, -856.3734, 39.3961, 86.8427, -1, -1, 60); //Sadler
	//(g_Vehicle[1010], 0);
	g_Vehicle[1011] = CreateVehicle(463, 1305.3447, -860.6292, 39.1184, 240.4488, -1, -1, 60); //Freeway
	g_Vehicle[1012] = CreateVehicle(567, 1327.1772, -856.8693, 39.4426, 355.0140, -1, -1, 60); //Savanna
	//(g_Vehicle[1012], 0);
	g_Vehicle[1013] = CreateVehicle(458, 1422.6184, -915.6989, 35.9253, 173.6656, -1, -1, 60); //Solair
	//(g_Vehicle[1013], 0);
	g_Vehicle[1014] = CreateVehicle(439, 1455.1505, -920.9677, 37.4996, 5.5315, -1, -1, 60); //Stallion
	//(g_Vehicle[1014], 0);
	g_Vehicle[1015] = CreateVehicle(550, 1025.4678, -981.0637, 42.4947, 275.3588, -1, -1, 60); //Sunrise
	g_Vehicle[1016] = CreateVehicle(576, 929.9744, -996.4138, 37.8311, 274.6470, -1, -1, 60); //Tornado
	//(g_Vehicle[1016], 0);
	g_Vehicle[1017] = CreateVehicle(404, 863.1107, -1056.6386, 24.8362, 216.7097, -1, -1, 60); //Pereniel
	//(g_Vehicle[1017], 0);
	g_Vehicle[1018] = CreateVehicle(463, 868.9804, -1068.5559, 24.6417, 26.0883, -1, -1, 60); //Freeway
	//(g_Vehicle[1018], 0);
	g_Vehicle[1019] = CreateVehicle(439, 783.3748, -1356.8221, 13.4354, 272.4747, -1, -1, 60); //Stallion
	g_Vehicle[1020] = CreateVehicle(463, 733.6375, -1347.5617, 13.0518, 258.9137, -1, -1, 60); //Freeway
	//(g_Vehicle[1020], 0);
	g_Vehicle[1021] = CreateVehicle(429, 783.3834, -1347.7703, 13.3739, 90.3087, -1, -1, 60); //Banshee
	//(g_Vehicle[1021], 0);
	g_Vehicle[1022] = CreateVehicle(536, 1696.6790, -2097.0415, 13.2840, 179.3459, -1, -1, 60); //Blade
	//(g_Vehicle[1022], 0);
	g_Vehicle[1023] = CreateVehicle(542, 1662.7777, -2110.7148, 13.2899, 90.3870, -1, -1, 60); //Clover
	g_Vehicle[1024] = CreateVehicle(400, 1707.4287, -2142.6918, 13.6471, 229.0505, -1, -1, 60); //Landstalker
	//(g_Vehicle[1024], 0);
	g_Vehicle[1025] = CreateVehicle(567, 1725.0461, -2130.4682, 13.4259, 180.7539, -1, -1, 60); //Savanna
	//(g_Vehicle[1025], 0);
	g_Vehicle[1026] = CreateVehicle(412, 1724.0800, -2092.9343, 13.3837, 178.9920, -1, -1, 60); //Voodoo
	//(g_Vehicle[1026], 0);
	g_Vehicle[1027] = CreateVehicle(536, 1747.4429, -2097.3615, 13.2869, 179.0798, -1, -1, 60); //Blade
	g_Vehicle[1028] = CreateVehicle(576, 1793.3020, -2149.7551, 13.2391, 180.6800, -1, -1, 60); //Tornado
	//(g_Vehicle[1028], 0);
	g_Vehicle[1029] = CreateVehicle(536, 1772.7322, -2096.0732, 13.2853, 181.7548, -1, -1, 60); //Blade
	//(g_Vehicle[1029], 0);
	g_Vehicle[1030] = CreateVehicle(549, 1948.6120, -2114.0183, 13.2416, 90.8656, -1, -1, 60); //Tampa
	//(g_Vehicle[1030], 0);
	g_Vehicle[1031] = CreateVehicle(496, 1948.0043, -2126.9030, 13.2610, 269.0660, -1, -1, 60); //Blista Compact
	g_Vehicle[1032] = CreateVehicle(463, 1941.4158, -2139.8730, 13.0970, 153.7429, -1, -1, 60); //Freeway
	//(g_Vehicle[1032], 0);
	g_Vehicle[1033] = CreateVehicle(414, 1924.2327, -2123.9316, 13.6772, 359.7333, -1, -1, 60); //Mule
	//(g_Vehicle[1033], 0);
	g_Vehicle[1034] = CreateVehicle(576, 1938.4185, -2089.9116, 13.1724, 87.9822, -1, -1, 60); //Tornado
	//(g_Vehicle[1034], 0);
	g_Vehicle[1035] = CreateVehicle(518, 1979.0964, -2065.5842, 13.1682, 1.5509, -1, -1, 60); //Buccaneer
	g_Vehicle[1036] = CreateVehicle(482, 1998.8809, -2095.2687, 13.6603, 182.4098, -1, -1, 60); //Burrito
	//(g_Vehicle[1036], 0);
	g_Vehicle[1037] = CreateVehicle(482, 2079.6142, -2007.4128, 13.6618, 267.6051, -1, -1, 60); //Burrito
	//(g_Vehicle[1037], 0);
	g_Vehicle[1038] = CreateVehicle(543, 2070.6381, -1995.7777, 13.3738, 177.5505, -1, -1, 60); //Sadler
	//(g_Vehicle[1038], 0);
	g_Vehicle[1039] = CreateVehicle(463, 2064.7143, -1998.2357, 13.0869, 323.5498, -1, -1, 60); //Freeway
	g_Vehicle[1040] = CreateVehicle(475, 1981.1689, -1985.4223, 13.3486, 0.0153, -1, -1, 60); //Sabre
	//(g_Vehicle[1040], 0);
	g_Vehicle[1041] = CreateVehicle(443, 2002.9520, -1940.1551, 13.9832, 90.4363, -1, -1, 60); //Packer
	//(g_Vehicle[1041], 0);
	g_Vehicle[1042] = CreateVehicle(413, 2062.2634, -1904.0969, 13.6286, 358.4263, -1, -1, 60); //Pony
	//(g_Vehicle[1042], 0);
	g_Vehicle[1043] = CreateVehicle(426, 2065.5415, -1920.3317, 13.2901, 179.3121, -1, -1, 60); //Premier
	g_Vehicle[1044] = CreateVehicle(468, 2120.8395, -1874.5211, 13.2159, 331.0408, -1, -1, 60); //Sanchez
	//(g_Vehicle[1044], 0);
	g_Vehicle[1045] = CreateVehicle(448, 2125.2058, -1817.1385, 13.1554, 304.3319, -1, -1, 60); //Pizzaboy
	//(g_Vehicle[1045], 0);
	g_Vehicle[1046] = CreateVehicle(448, 2124.9956, -1814.4016, 13.1552, 307.8772, -1, -1, 60); //Pizzaboy
	//(g_Vehicle[1046], 0);
	g_Vehicle[1047] = CreateVehicle(448, 2124.6506, -1811.7199, 13.1521, 308.4132, -1, -1, 60); //Pizzaboy
	g_Vehicle[1048] = CreateVehicle(489, 2121.7656, -1783.0729, 13.5319, 181.4553, -1, -1, 60); //Rancher
	//(g_Vehicle[1048], 0);
	g_Vehicle[1049] = CreateVehicle(600, 2106.7954, -1783.6601, 13.0982, 178.3881, -1, -1, 60); //Picador
	//(g_Vehicle[1049], 0);
	g_Vehicle[1050] = CreateVehicle(400, 2114.6040, -1783.4562, 13.4944, 359.1005, -1, -1, 60); //Landstalker
	//(g_Vehicle[1050], 0);
	g_Vehicle[1051] = CreateVehicle(546, 2095.9748, -1800.3144, 13.1087, 268.3825, -1, -1, 60); //Intruder
	g_Vehicle[1052] = CreateVehicle(400, 2096.2324, -1819.9232, 13.4751, 269.6763, -1, -1, 60); //Landstalker
	//(g_Vehicle[1052], 0);
	g_Vehicle[1053] = CreateVehicle(554, 1928.4520, -1795.0306, 13.4708, 269.1664, -1, -1, 60); //Yosemite
	//(g_Vehicle[1053], 0);
	g_Vehicle[1054] = CreateVehicle(475, 1976.6082, -1727.6584, 15.7685, 270.5382, -1, -1, 60); //Sabre
	//(g_Vehicle[1054], 0);
	g_Vehicle[1055] = CreateVehicle(400, 2014.2509, -1737.9340, 13.6450, 89.6672, -1, -1, 60); //Landstalker
	g_Vehicle[1056] = CreateVehicle(546, 2017.8608, -1707.7689, 13.2712, 91.0950, -1, -1, 60); //Intruder
	//(g_Vehicle[1056], 0);
	g_Vehicle[1057] = CreateVehicle(496, 1967.9211, -1658.8985, 15.7505, 88.9660, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1057], 0);
	g_Vehicle[1058] = CreateVehicle(474, 2026.2840, -1649.0118, 13.3171, 268.3413, -1, -1, 60); //Hermes
	//(g_Vehicle[1058], 0);
	g_Vehicle[1059] = CreateVehicle(429, 1990.6079, -1579.2163, 13.2835, 74.1056, -1, -1, 60); //Banshee
	g_Vehicle[1060] = CreateVehicle(475, 2014.0079, -1597.3103, 13.3756, 134.4441, -1, -1, 60); //Sabre
	//(g_Vehicle[1060], 0);
	g_Vehicle[1061] = CreateVehicle(466, 2057.4875, -1636.5557, 13.2887, 269.2681, -1, -1, 60); //Glendale
	//(g_Vehicle[1061], 0);
	g_Vehicle[1062] = CreateVehicle(496, 2062.4904, -1694.4796, 13.3308, 89.8788, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1062], 0);
	g_Vehicle[1063] = CreateVehicle(533, 2062.6511, -1738.6662, 13.2559, 90.7602, -1, -1, 60); //Feltzer
	g_Vehicle[1064] = CreateVehicle(412, 2238.7907, -1630.9788, 15.5684, 339.3786, -1, -1, 60); //Voodoo
	//(g_Vehicle[1064], 0);
	g_Vehicle[1065] = CreateVehicle(534, 2284.0629, -1681.7241, 13.8912, 0.3628, -1, -1, 60); //Remington
	//(g_Vehicle[1065], 0);
	g_Vehicle[1066] = CreateVehicle(475, 2271.4482, -1634.8553, 15.1246, 1.4485, -1, -1, 60); //Sabre
	//(g_Vehicle[1066], 0);
	g_Vehicle[1067] = CreateVehicle(463, 2289.7492, -1685.7275, 13.2727, 338.6942, -1, -1, 60); //Freeway
	g_Vehicle[1068] = CreateVehicle(496, 2296.9233, -1644.5267, 14.5451, 178.7794, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1068], 0);
	g_Vehicle[1069] = CreateVehicle(474, 2328.1564, -1677.1448, 14.1745, 268.4948, -1, -1, 60); //Hermes
	//(g_Vehicle[1069], 0);
	g_Vehicle[1070] = CreateVehicle(545, 2319.2270, -1712.0625, 13.3578, 179.0223, -1, -1, 60); //Hustler
	//(g_Vehicle[1070], 0);
	g_Vehicle[1071] = CreateVehicle(475, 2416.0102, -1707.7165, 13.5771, 180.6127, -1, -1, 60); //Sabre
	g_Vehicle[1072] = CreateVehicle(400, 2443.6687, -1637.1933, 13.3619, 180.6244, -1, -1, 60); //Landstalker
	//(g_Vehicle[1072], 0);
	g_Vehicle[1073] = CreateVehicle(404, 2516.5412, -1672.2059, 13.6568, 247.4270, -1, -1, 60); //Pereniel
	//(g_Vehicle[1073], 0);
	g_Vehicle[1074] = CreateVehicle(600, 2501.3005, -1685.7114, 13.2052, 54.2229, -1, -1, 60); //Picador
	//(g_Vehicle[1074], 0);
	g_Vehicle[1075] = CreateVehicle(482, 2473.6335, -1688.4500, 13.6212, 1.3507, -1, -1, 60); //Burrito
	g_Vehicle[1076] = CreateVehicle(426, 2500.2907, -1755.7276, 13.1737, 179.5941, -1, -1, 60); //Premier
	//(g_Vehicle[1076], 0);
	g_Vehicle[1077] = CreateVehicle(414, 2445.8566, -1762.6873, 13.6820, 179.0054, -1, -1, 60); //Mule
	//(g_Vehicle[1077], 0);
	g_Vehicle[1078] = CreateVehicle(479, 2452.3486, -1784.1185, 13.3435, 358.6820, -1, -1, 60); //Regina
	//(g_Vehicle[1078], 0);
	g_Vehicle[1079] = CreateVehicle(475, 2498.7919, -1953.6907, 13.2267, 180.0758, -1, -1, 60); //Sabre
	g_Vehicle[1080] = CreateVehicle(482, 2482.8601, -1953.4886, 13.5429, 359.9536, -1, -1, 60); //Burrito
	//(g_Vehicle[1080], 0);
	g_Vehicle[1081] = CreateVehicle(475, 1538.3449, -1681.9887, 13.3146, 206.4078, -1, -1, 60); //Sabre
	//(g_Vehicle[1081], 0);
	g_Vehicle[1082] = CreateVehicle(489, 2685.5461, -1986.2995, 13.6922, 358.8623, -1, -1, 60); //Rancher
	//(g_Vehicle[1082], 0);
	g_Vehicle[1083] = CreateVehicle(536, 2685.3981, -2021.3488, 13.2451, 179.1492, -1, -1, 60); //Blade
	g_Vehicle[1084] = CreateVehicle(475, 2644.9438, -1989.3398, 13.3583, 178.5030, -1, -1, 60); //Sabre
	//(g_Vehicle[1084], 0);
	g_Vehicle[1085] = CreateVehicle(547, 2787.8420, -1876.2370, 9.5680, 179.4586, -1, -1, 60); //Primo
	//(g_Vehicle[1085], 0);
	g_Vehicle[1086] = CreateVehicle(426, 2757.7773, -1847.0180, 9.4532, 21.0800, -1, -1, 60); //Premier
	//(g_Vehicle[1086], 0);
	g_Vehicle[1087] = CreateVehicle(479, 2732.6860, -1875.2740, 9.3877, 359.7763, -1, -1, 60); //Regina
	g_Vehicle[1088] = CreateVehicle(567, 2706.5756, -1843.5667, 9.3669, 339.9567, -1, -1, 60); //Savanna
	//(g_Vehicle[1088], 0);
	g_Vehicle[1089] = CreateVehicle(458, 2679.1791, -1826.0692, 9.2645, 129.6775, -1, -1, 60); //Solair
	//(g_Vehicle[1089], 0);
	g_Vehicle[1090] = CreateVehicle(439, 2657.7949, -1812.8764, 9.1989, 98.6444, -1, -1, 60); //Stallion
	//(g_Vehicle[1090], 0);
	g_Vehicle[1091] = CreateVehicle(461, 2697.0117, -1836.8410, 9.0453, 131.7256, -1, -1, 60); //PCJ-600
	g_Vehicle[1092] = CreateVehicle(463, 2757.8317, -1878.8939, 9.2420, 331.1535, -1, -1, 60); //Freeway
	//(g_Vehicle[1092], 0);
	g_Vehicle[1093] = CreateVehicle(521, 2813.1142, -1822.5189, 9.5067, 56.5744, -1, -1, 60); //FCR-900
	//(g_Vehicle[1093], 0);
	g_Vehicle[1094] = CreateVehicle(521, 2808.0324, -1669.0961, 9.5087, 168.8724, -1, -1, 60); //FCR-900
	//(g_Vehicle[1094], 0);
	g_Vehicle[1095] = CreateVehicle(466, 2829.7585, -1699.7443, 9.7442, 256.3982, -1, -1, 60); //Glendale
	g_Vehicle[1096] = CreateVehicle(545, 2825.0058, -1718.6701, 9.8158, 77.5272, -1, -1, 60); //Hustler
	//(g_Vehicle[1096], 0);
	g_Vehicle[1097] = CreateVehicle(588, 2686.6833, -1672.3564, 9.3456, 1.2871, -1, -1, 60); //Hotdog
	//(g_Vehicle[1097], 0);
	g_Vehicle[1098] = CreateVehicle(546, 2657.6079, -1701.7724, 9.0416, 92.9747, -1, -1, 60); //Intruder
	//(g_Vehicle[1098], 0);
	g_Vehicle[1099] = CreateVehicle(521, 2654.6635, -1692.5938, 8.8779, 251.8571, -1, -1, 60); //FCR-900
	g_Vehicle[1100] = CreateVehicle(463, 2696.4189, -1669.2603, 9.0249, 152.7104, -1, -1, 60); //Freeway
	//(g_Vehicle[1100], 0);
	g_Vehicle[1101] = CreateVehicle(474, 2813.8862, -1429.2636, 16.0125, 357.9624, -1, -1, 60); //Hermes
	//(g_Vehicle[1101], 0);
	g_Vehicle[1102] = CreateVehicle(546, 2792.6982, -1432.1293, 19.9428, 95.9561, -1, -1, 60); //Intruder
	//(g_Vehicle[1102], 0);
	g_Vehicle[1103] = CreateVehicle(521, 2819.5498, -1427.8861, 27.7283, 97.0199, -1, -1, 60); //FCR-900
	g_Vehicle[1104] = CreateVehicle(429, 2796.6159, -1428.0922, 35.7733, 355.7728, -1, -1, 60); //Banshee
	//(g_Vehicle[1104], 0);
	g_Vehicle[1105] = CreateVehicle(400, 2794.7858, -1464.7652, 40.1535, 180.1253, -1, -1, 60); //Landstalker
	//(g_Vehicle[1105], 0);
	g_Vehicle[1106] = CreateVehicle(418, 2816.5820, -1431.5496, 40.1556, 268.4158, -1, -1, 60); //Moonbeam
	//(g_Vehicle[1106], 0);
	g_Vehicle[1107] = CreateVehicle(521, 2794.0625, -1576.2109, 10.4993, 252.9832, -1, -1, 60); //FCR-900
	g_Vehicle[1108] = CreateVehicle(600, 2796.4965, -1562.6955, 10.6451, 89.5534, -1, -1, 60); //Picador
	//(g_Vehicle[1108], 0);
	g_Vehicle[1109] = CreateVehicle(426, 2822.3193, -1553.4038, 10.6672, 89.8755, -1, -1, 60); //Premier
	//(g_Vehicle[1109], 0);
	g_Vehicle[1110] = CreateVehicle(533, 2807.4377, -1540.4016, 10.6309, 180.0458, -1, -1, 60); //Feltzer
	//(g_Vehicle[1110], 0);
	g_Vehicle[1111] = CreateVehicle(414, 2772.3437, -1614.6322, 11.0089, 270.6050, -1, -1, 60); //Mule
	g_Vehicle[1112] = CreateVehicle(589, 2855.3896, -1354.9141, 10.8385, 271.7889, -1, -1, 60); //Club
	//(g_Vehicle[1112], 0);
	g_Vehicle[1113] = CreateVehicle(521, 2850.3010, -1323.3470, 10.8710, 43.7938, -1, -1, 60); //FCR-900
	//(g_Vehicle[1113], 0);
	g_Vehicle[1114] = CreateVehicle(562, 2845.5761, -1287.0035, 18.8724, 276.4800, -1, -1, 60); //Elegy
	//(g_Vehicle[1114], 0);
	g_Vehicle[1115] = CreateVehicle(463, 2802.9653, -1174.3157, 25.0877, 148.6354, -1, -1, 60); //Freeway
	g_Vehicle[1116] = CreateVehicle(589, 2814.8518, -1186.5087, 24.9740, 125.2599, -1, -1, 60); //Club
	//(g_Vehicle[1116], 0);
	g_Vehicle[1117] = CreateVehicle(496, 2827.8259, -1165.8298, 24.8425, 74.4953, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1117], 0);
	g_Vehicle[1118] = CreateVehicle(419, 2828.4296, -1193.2812, 24.7035, 319.2677, -1, -1, 60); //Esperanto
	//(g_Vehicle[1118], 0);
	g_Vehicle[1119] = CreateVehicle(521, 2686.6938, -1102.2723, 68.9335, 36.2439, -1, -1, 60); //FCR-900
	g_Vehicle[1120] = CreateVehicle(536, 2570.6430, -1101.5727, 65.9616, 224.2814, -1, -1, 60); //Blade
	//(g_Vehicle[1120], 0);
	g_Vehicle[1121] = CreateVehicle(461, 2589.6411, -967.6469, 80.9739, 54.8112, -1, -1, 60); //PCJ-600
	//(g_Vehicle[1121], 0);
	g_Vehicle[1122] = CreateVehicle(543, 2561.0659, -955.9353, 82.5711, 189.2467, -1, -1, 60); //Sadler
	//(g_Vehicle[1122], 0);
	g_Vehicle[1123] = CreateVehicle(543, 2499.9091, -961.6536, 82.0865, 177.1486, -1, -1, 60); //Sadler
	g_Vehicle[1124] = CreateVehicle(478, 2492.5671, -951.8682, 82.2363, 268.9169, -1, -1, 60); //Walton
	//(g_Vehicle[1124], 0);
	g_Vehicle[1125] = CreateVehicle(463, 2450.5344, -957.0053, 79.5994, 88.6032, -1, -1, 60); //Freeway
	//(g_Vehicle[1125], 0);
	g_Vehicle[1126] = CreateVehicle(521, 2359.4318, -648.6395, 127.7032, 321.5916, -1, -1, 60); //FCR-900
	//(g_Vehicle[1126], 0);
	g_Vehicle[1127] = CreateVehicle(478, 2368.4819, -651.1126, 127.6424, 221.5063, -1, -1, 60); //Walton
	g_Vehicle[1128] = CreateVehicle(529, 2497.5224, -1063.2612, 69.7643, 180.0623, -1, -1, 60); //Willard
	//(g_Vehicle[1128], 0);
	g_Vehicle[1129] = CreateVehicle(412, 2503.8012, -1024.9953, 69.9222, 354.6203, -1, -1, 60); //Voodoo
	//(g_Vehicle[1129], 0);
	g_Vehicle[1130] = CreateVehicle(536, 2485.7839, -1015.6508, 65.0513, 332.0787, -1, -1, 60); //Blade
	//(g_Vehicle[1130], 0);
	g_Vehicle[1131] = CreateVehicle(475, 2453.7121, -1011.7230, 59.5763, 354.2991, -1, -1, 60); //Sabre
	g_Vehicle[1132] = CreateVehicle(549, 2432.1267, -1056.5385, 54.0339, 182.6493, -1, -1, 60); //Tampa
	//(g_Vehicle[1132], 0);
	g_Vehicle[1133] = CreateVehicle(521, 2366.8833, -1052.4576, 53.7197, 162.4203, -1, -1, 60); //FCR-900
	//(g_Vehicle[1133], 0);
	g_Vehicle[1134] = CreateVehicle(463, 2334.8330, -1052.5548, 51.8916, 205.8941, -1, -1, 60); //Freeway
	//(g_Vehicle[1134], 0);
	g_Vehicle[1135] = CreateVehicle(400, 2328.0397, -1052.3499, 52.4471, 178.7151, -1, -1, 60); //Landstalker
	g_Vehicle[1136] = CreateVehicle(468, 2368.9733, -1029.3669, 53.9112, 303.9771, -1, -1, 60); //Sanchez
	//(g_Vehicle[1136], 0);
	g_Vehicle[1137] = CreateVehicle(521, 2222.1743, -1043.8972, 57.4453, 287.0622, -1, -1, 60); //FCR-900
	//(g_Vehicle[1137], 0);
	g_Vehicle[1138] = CreateVehicle(475, 2200.8208, -1000.4743, 62.1100, 337.4119, -1, -1, 60); //Sabre
	//(g_Vehicle[1138], 0);
	g_Vehicle[1139] = CreateVehicle(536, 2073.8337, -972.3665, 48.8144, 121.6684, -1, -1, 60); //Blade
	g_Vehicle[1140] = CreateVehicle(461, 2057.1284, -987.3378, 45.8447, 41.0353, -1, -1, 60); //PCJ-600
	//(g_Vehicle[1140], 0);
	g_Vehicle[1141] = CreateVehicle(549, 2032.1613, -966.3978, 40.8893, 144.2881, -1, -1, 60); //Tampa
	//(g_Vehicle[1141], 0);
	g_Vehicle[1142] = CreateVehicle(521, 1994.0328, -1089.3951, 24.1790, 265.7199, -1, -1, 60); //FCR-900
	//(g_Vehicle[1142], 0);
	g_Vehicle[1143] = CreateVehicle(536, 1910.2011, -1117.5192, 25.4452, 359.7224, -1, -1, 60); //Blade
	g_Vehicle[1144] = CreateVehicle(576, 1934.3487, -1118.8566, 26.0909, 167.6531, -1, -1, 60); //Tornado
	//(g_Vehicle[1144], 0);
	g_Vehicle[1145] = CreateVehicle(540, 1991.7618, -1119.2261, 26.6329, 88.5619, -1, -1, 60); //Vincent
	//(g_Vehicle[1145], 0);
	g_Vehicle[1146] = CreateVehicle(549, 2090.1191, -1141.0527, 25.2549, 91.9198, -1, -1, 60); //Tampa
	//(g_Vehicle[1146], 0);
	g_Vehicle[1147] = CreateVehicle(536, 2116.0888, -1059.6656, 25.4645, 1.6787, -1, -1, 60); //Blade
	g_Vehicle[1148] = CreateVehicle(549, 2161.8664, -1148.1636, 24.0918, 268.7138, -1, -1, 60); //Tampa
	//(g_Vehicle[1148], 0);
	g_Vehicle[1149] = CreateVehicle(576, 2162.5031, -1162.9884, 23.4277, 270.5314, -1, -1, 60); //Tornado
	//(g_Vehicle[1149], 0);
	g_Vehicle[1150] = CreateVehicle(540, 2147.6459, -1180.4316, 23.6805, 271.2742, -1, -1, 60); //Vincent
	//(g_Vehicle[1150], 0);
	g_Vehicle[1151] = CreateVehicle(554, 2161.5270, -1192.5656, 23.9013, 270.6950, -1, -1, 60); //Yosemite
	g_Vehicle[1152] = CreateVehicle(521, 2164.0178, -1178.0917, 23.3889, 68.9158, -1, -1, 60); //FCR-900
	//(g_Vehicle[1152], 0);
	g_Vehicle[1153] = CreateVehicle(463, 2145.5957, -1162.0776, 23.3554, 273.2265, -1, -1, 60); //Freeway
	//(g_Vehicle[1153], 0);
	g_Vehicle[1154] = CreateVehicle(475, 2148.7519, -1242.4738, 24.4964, 2.1730, -1, -1, 60); //Sabre
	//(g_Vehicle[1154], 0);
	g_Vehicle[1155] = CreateVehicle(536, 2105.4611, -1242.9531, 24.7791, 1.3025, -1, -1, 60); //Blade
	g_Vehicle[1156] = CreateVehicle(475, 2033.9212, -1285.0781, 20.7583, 269.6825, -1, -1, 60); //Sabre
	//(g_Vehicle[1156], 0);
	g_Vehicle[1157] = CreateVehicle(479, 2033.2327, -1294.9094, 20.7262, 90.1860, -1, -1, 60); //Regina
	//(g_Vehicle[1157], 0);
	g_Vehicle[1158] = CreateVehicle(536, 2095.4096, -1365.6405, 23.7217, 359.4201, -1, -1, 60); //Blade
	//(g_Vehicle[1158], 0);
	g_Vehicle[1159] = CreateVehicle(567, 2136.8681, -1366.1549, 24.9118, 181.6537, -1, -1, 60); //Savanna
	g_Vehicle[1160] = CreateVehicle(554, 2156.6669, -1408.6437, 25.6233, 89.8768, -1, -1, 60); //Yosemite
	//(g_Vehicle[1160], 0);
	g_Vehicle[1161] = CreateVehicle(529, 2150.2094, -1423.7835, 25.1728, 270.8055, -1, -1, 60); //Willard
	//(g_Vehicle[1161], 0);
	g_Vehicle[1162] = CreateVehicle(412, 2157.4702, -1454.6026, 25.3766, 272.0728, -1, -1, 60); //Voodoo
	//(g_Vehicle[1162], 0);
	g_Vehicle[1163] = CreateVehicle(482, 2168.9003, -1503.8928, 24.0566, 264.3122, -1, -1, 60); //Burrito
	g_Vehicle[1164] = CreateVehicle(554, 2191.4372, -1465.7139, 25.6252, 90.8413, -1, -1, 60); //Yosemite
	//(g_Vehicle[1164], 0);
	g_Vehicle[1165] = CreateVehicle(489, 2185.0556, -1434.4803, 25.6846, 93.1798, -1, -1, 60); //Rancher
	//(g_Vehicle[1165], 0);
	g_Vehicle[1166] = CreateVehicle(529, 2229.7316, -1367.4005, 23.6256, 273.8515, -1, -1, 60); //Willard
	//(g_Vehicle[1166], 0);
	g_Vehicle[1167] = CreateVehicle(405, 2229.4821, -1348.8889, 23.8603, 87.4558, -1, -1, 60); //Sentinel
	g_Vehicle[1168] = CreateVehicle(600, 2230.1381, -1359.4954, 23.7003, 269.3414, -1, -1, 60); //Picador
	//(g_Vehicle[1168], 0);
	g_Vehicle[1169] = CreateVehicle(536, 2196.1318, -1278.5264, 24.2446, 358.3133, -1, -1, 60); //Blade
	//(g_Vehicle[1169], 0);
	g_Vehicle[1170] = CreateVehicle(479, 2426.9794, -1241.6070, 24.0513, 176.5720, -1, -1, 60); //Regina
	//(g_Vehicle[1170], 0);
	g_Vehicle[1171] = CreateVehicle(603, 2414.5007, -1223.4979, 24.7467, 354.3562, -1, -1, 60); //Phoenix
	g_Vehicle[1172] = CreateVehicle(475, 2431.3195, -1241.5726, 24.1537, 177.5767, -1, -1, 60); //Sabre
	//(g_Vehicle[1172], 0);
	g_Vehicle[1173] = CreateVehicle(463, 2430.6926, -1220.7517, 24.9011, 142.6703, -1, -1, 60); //Freeway
	//(g_Vehicle[1173], 0);
	g_Vehicle[1174] = CreateVehicle(467, 2556.9187, -1211.2631, 54.2709, 92.0356, -1, -1, 60); //Oceanic
	//(g_Vehicle[1174], 0);
	g_Vehicle[1175] = CreateVehicle(475, 2559.0197, -1194.6180, 61.2624, 177.0269, -1, -1, 60); //Sabre
	g_Vehicle[1176] = CreateVehicle(412, 2491.1542, -1299.4157, 32.1577, 276.4995, -1, -1, 60); //Voodoo
	//(g_Vehicle[1176], 0);
	g_Vehicle[1177] = CreateVehicle(554, 2489.9025, -1292.7750, 32.0909, 246.3011, -1, -1, 60); //Yosemite
	//(g_Vehicle[1177], 0);
	g_Vehicle[1178] = CreateVehicle(400, 2493.6796, -1276.2856, 33.0027, 268.8489, -1, -1, 60); //Landstalker
	//(g_Vehicle[1178], 0);
	g_Vehicle[1179] = CreateVehicle(475, 2390.2915, -1487.7120, 23.6329, 90.8244, -1, -1, 60); //Sabre
	g_Vehicle[1180] = CreateVehicle(400, 2390.6386, -1503.7330, 23.9272, 270.7135, -1, -1, 60); //Landstalker
	//(g_Vehicle[1180], 0);
	g_Vehicle[1181] = CreateVehicle(463, 2389.4577, -1497.8421, 23.3752, 243.2236, -1, -1, 60); //Freeway
	//(g_Vehicle[1181], 0);
	g_Vehicle[1182] = CreateVehicle(545, 2396.8088, -1536.9807, 23.8111, 0.1545, -1, -1, 60); //Hustler
	//(g_Vehicle[1182], 0);
	g_Vehicle[1183] = CreateVehicle(479, 2407.3283, -1538.0587, 23.7968, 0.6748, -1, -1, 60); //Regina
	g_Vehicle[1184] = CreateVehicle(466, 2412.8625, -1537.3830, 23.7432, 357.6565, -1, -1, 60); //Glendale
	//(g_Vehicle[1184], 0);
	g_Vehicle[1185] = CreateVehicle(475, 2449.7636, -1556.8449, 23.8045, 1.3417, -1, -1, 60); //Sabre
	//(g_Vehicle[1185], 0);
	g_Vehicle[1186] = CreateVehicle(529, 2454.6298, -1557.0045, 23.6326, 180.1560, -1, -1, 60); //Willard
	//(g_Vehicle[1186], 0);
	g_Vehicle[1187] = CreateVehicle(496, 2477.5659, -1557.4111, 23.7817, 358.5617, -1, -1, 60); //Blista Compact
	g_Vehicle[1188] = CreateVehicle(463, 2491.4055, -1535.6181, 23.5519, 59.4337, -1, -1, 60); //Freeway
	//(g_Vehicle[1188], 0);
	g_Vehicle[1189] = CreateVehicle(461, 2491.1179, -1529.3500, 23.5687, 56.2088, -1, -1, 60); //PCJ-600
	//(g_Vehicle[1189], 0);
	g_Vehicle[1190] = CreateVehicle(521, 2491.4360, -1532.5397, 23.5716, 55.7102, -1, -1, 60); //FCR-900
	//(g_Vehicle[1190], 0);
	g_Vehicle[1191] = CreateVehicle(496, 2489.5791, -1518.4509, 23.7588, 269.8171, -1, -1, 60); //Blista Compact
	g_Vehicle[1192] = CreateVehicle(562, 2482.6208, -1557.3426, 23.6523, 2.3099, -1, -1, 60); //Elegy
	//(g_Vehicle[1192], 0);
	g_Vehicle[1193] = CreateVehicle(468, 2499.0034, -1538.0708, 23.6438, 335.4961, -1, -1, 60); //Sanchez
	//(g_Vehicle[1193], 0);
	g_Vehicle[1194] = CreateVehicle(536, 2520.1445, -1480.9064, 23.7362, 1.3231, -1, -1, 60); //Blade
	//(g_Vehicle[1194], 0);
	g_Vehicle[1195] = CreateVehicle(533, 2573.5979, -1489.6091, 23.7161, 87.7542, -1, -1, 60); //Feltzer
	g_Vehicle[1196] = CreateVehicle(521, 2554.3159, -1367.9281, 31.7872, 241.1392, -1, -1, 60); //FCR-900
	//(g_Vehicle[1196], 0);
	g_Vehicle[1197] = CreateVehicle(536, 2411.6625, -1390.6456, 24.0786, 268.8194, -1, -1, 60); //Blade
	//(g_Vehicle[1197], 0);
	g_Vehicle[1198] = CreateVehicle(533, 1819.8599, -1403.5051, 13.1363, 89.9457, -1, -1, 60); //Feltzer
	//(g_Vehicle[1198], 0);
	g_Vehicle[1199] = CreateVehicle(496, 1809.4696, -1432.1268, 13.0138, 274.7705, -1, -1, 60); //Blista Compact
	g_Vehicle[1200] = CreateVehicle(542, 1676.1560, -1106.9868, 23.6492, 268.6964, -1, -1, 60); //Clover
	//(g_Vehicle[1200], 0);
	g_Vehicle[1201] = CreateVehicle(589, 1649.5083, -1102.5532, 23.5643, 270.0267, -1, -1, 60); //Club
	//(g_Vehicle[1201], 0);
	g_Vehicle[1202] = CreateVehicle(589, 1658.4116, -1088.9273, 23.6777, 89.2743, -1, -1, 60); //Club
	//(g_Vehicle[1202], 0);
	g_Vehicle[1203] = CreateVehicle(482, 1620.9777, -1089.5053, 24.0216, 89.9048, -1, -1, 60); //Burrito
	g_Vehicle[1204] = CreateVehicle(518, 1629.4741, -1103.3231, 23.5760, 268.5256, -1, -1, 60); //Buccaneer
	//(g_Vehicle[1204], 0);
	g_Vehicle[1205] = CreateVehicle(518, 1640.7034, -1046.7116, 23.5692, 359.8533, -1, -1, 60); //Buccaneer
	//(g_Vehicle[1205], 0);
	g_Vehicle[1206] = CreateVehicle(482, 1660.7136, -1016.1743, 23.9633, 11.4113, -1, -1, 60); //Burrito
	//(g_Vehicle[1206], 0);
	g_Vehicle[1207] = CreateVehicle(496, 1689.9339, -1035.6691, 23.6231, 178.1296, -1, -1, 60); //Blista Compact
	g_Vehicle[1208] = CreateVehicle(429, 1712.4378, -1005.7188, 23.5937, 351.9538, -1, -1, 60); //Banshee
	//(g_Vehicle[1208], 0);
	g_Vehicle[1209] = CreateVehicle(542, 1731.1281, -1009.0836, 23.6851, 348.1700, -1, -1, 60); //Clover
	//(g_Vehicle[1209], 0);
	g_Vehicle[1210] = CreateVehicle(496, 1757.4509, -1037.7462, 23.8358, 180.9093, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1210], 0);
	g_Vehicle[1211] = CreateVehicle(475, 1770.8776, -1061.7105, 23.7646, 179.4640, -1, -1, 60); //Sabre
	g_Vehicle[1212] = CreateVehicle(496, 1780.0526, -1069.8851, 23.6770, 359.9331, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1212], 0);
	g_Vehicle[1213] = CreateVehicle(536, 1762.5533, -1085.8548, 23.6982, 180.7030, -1, -1, 60); //Blade
	//(g_Vehicle[1213], 0);
	g_Vehicle[1214] = CreateVehicle(518, 1740.1121, -1085.8320, 23.6317, 181.0829, -1, -1, 60); //Buccaneer
	//(g_Vehicle[1214], 0);
	g_Vehicle[1215] = CreateVehicle(542, 1726.2167, -1085.2207, 23.6669, 182.7872, -1, -1, 60); //Clover
	g_Vehicle[1216] = CreateVehicle(549, 1699.9979, -1068.8979, 23.6030, 357.9710, -1, -1, 60); //Tampa
	//(g_Vehicle[1216], 0);
	g_Vehicle[1217] = CreateVehicle(400, 1713.3634, -1061.1497, 23.9985, 181.1157, -1, -1, 60); //Landstalker
	//(g_Vehicle[1217], 0);
	g_Vehicle[1218] = CreateVehicle(496, 1640.7484, -1038.1541, 23.6149, 358.3013, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1218], 0);
	g_Vehicle[1219] = CreateVehicle(542, 1594.9390, -1009.9453, 23.6492, 185.8625, -1, -1, 60); //Clover
	g_Vehicle[1220] = CreateVehicle(482, 1577.2343, -1040.1862, 24.0270, 141.0052, -1, -1, 60); //Burrito
	//(g_Vehicle[1220], 0);
	g_Vehicle[1221] = CreateVehicle(536, 1562.9835, -1011.3809, 23.6438, 359.5881, -1, -1, 60); //Blade
	//(g_Vehicle[1221], 0);
	g_Vehicle[1222] = CreateVehicle(496, 1546.6223, -1026.6491, 23.6228, 162.1278, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1222], 0);
	g_Vehicle[1223] = CreateVehicle(463, 1577.0700, -1008.9494, 23.4463, 165.1992, -1, -1, 60); //Freeway
	g_Vehicle[1224] = CreateVehicle(521, 1592.5432, -1057.9312, 23.4783, 297.7319, -1, -1, 60); //FCR-900
	//(g_Vehicle[1224], 0);
	g_Vehicle[1225] = CreateVehicle(461, 1651.4000, -1015.1333, 23.4876, 216.5874, -1, -1, 60); //PCJ-600
	//(g_Vehicle[1225], 0);
	g_Vehicle[1226] = CreateVehicle(463, 1694.4097, -1003.8555, 23.4463, 216.3939, -1, -1, 60); //Freeway
	//(g_Vehicle[1226], 0);
	g_Vehicle[1227] = CreateVehicle(521, 1748.7354, -1039.5499, 23.5323, 15.0375, -1, -1, 60); //FCR-900
	g_Vehicle[1228] = CreateVehicle(542, 1657.5460, -1137.0396, 23.6497, 178.3329, -1, -1, 60); //Clover
	//(g_Vehicle[1228], 0);
	g_Vehicle[1229] = CreateVehicle(589, 1616.6452, -1128.1940, 23.5643, 92.6623, -1, -1, 60); //Club
	//(g_Vehicle[1229], 0);
	g_Vehicle[1230] = CreateVehicle(484, 2947.8056, -2052.6362, 0.4738, 359.4144, -1, -1, 60); //Marquis
	//(g_Vehicle[1230], 0);
	g_Vehicle[1231] = CreateVehicle(456, 2313.5280, -2310.5837, 13.7195, 133.0173, -1, -1, 60); //Yankee
	g_Vehicle[1232] = CreateVehicle(455, 2264.7072, -2335.1188, 13.9837, 314.5603, -1, -1, 60); //Flatbed
	//(g_Vehicle[1232], 0);
	g_Vehicle[1233] = CreateVehicle(455, 2612.2106, -2198.1665, 13.9834, 180.4830, -1, -1, 60); //Flatbed
	//(g_Vehicle[1233], 0);
	g_Vehicle[1234] = CreateVehicle(525, 2572.6416, -2240.2260, 13.4191, 93.6710, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1234], 0);
	g_Vehicle[1235] = CreateVehicle(453, 2505.7712, -2269.1884, -0.3120, 268.6543, -1, -1, 60); //Reefer
	g_Vehicle[1236] = CreateVehicle(453, 2307.9445, -2414.1733, -0.2071, 314.9560, -1, -1, 60); //Reefer
	//(g_Vehicle[1236], 0);
	g_Vehicle[1237] = CreateVehicle(455, 2189.0393, -2649.3571, 13.9833, 266.7651, -1, -1, 60); //Flatbed
	//(g_Vehicle[1237], 0);
	g_Vehicle[1238] = CreateVehicle(525, 2226.0031, -2677.0148, 13.4329, 4.2993, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1238], 0);
	g_Vehicle[1239] = CreateVehicle(552, 2200.3920, -2638.4025, 13.2520, 357.1788, -1, -1, 60); //Utility
	g_Vehicle[1240] = CreateVehicle(422, 2203.6013, -2595.3610, 13.5221, 87.9727, -1, -1, 60); //Bobcat
	//(g_Vehicle[1240], 0);
	g_Vehicle[1241] = CreateVehicle(422, 2206.7746, -2527.8098, 13.5298, 94.0066, -1, -1, 60); //Bobcat
	//(g_Vehicle[1241], 0);
	g_Vehicle[1242] = CreateVehicle(525, 2510.2680, -2629.5205, 13.5250, 88.6645, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1242], 0);
	g_Vehicle[1243] = CreateVehicle(456, 2491.5275, -2671.4338, 13.8093, 180.9983, -1, -1, 60); //Yankee
	g_Vehicle[1244] = CreateVehicle(455, 2498.7861, -2572.7219, 14.0866, 357.5439, -1, -1, 60); //Flatbed
	//(g_Vehicle[1244], 0);
	g_Vehicle[1245] = CreateVehicle(422, 2516.4746, -2452.8889, 13.6216, 44.3283, -1, -1, 60); //Bobcat
	//(g_Vehicle[1245], 0);
	g_Vehicle[1246] = CreateVehicle(470, 2764.3168, -2383.4829, 13.6234, 181.4826, -1, -1, 60); //Patriot
	//(g_Vehicle[1246], 0);
	g_Vehicle[1247] = CreateVehicle(470, 2779.5729, -2440.3181, 13.6295, 267.8544, -1, -1, 60); //Patriot
	g_Vehicle[1248] = CreateVehicle(470, 2737.3740, -2485.6760, 13.6430, 87.2883, -1, -1, 60); //Patriot
	//(g_Vehicle[1248], 0);
	g_Vehicle[1249] = CreateVehicle(400, 2744.2753, -2447.5588, 13.7433, 179.2557, -1, -1, 60); //Landstalker
	//(g_Vehicle[1249], 0);
	g_Vehicle[1250] = CreateVehicle(400, 2765.2121, -2531.8735, 13.7406, 359.5257, -1, -1, 60); //Landstalker
	//(g_Vehicle[1250], 0);
	g_Vehicle[1251] = CreateVehicle(400, 2784.2922, -2387.0546, 13.7278, 89.7827, -1, -1, 60); //Landstalker
	g_Vehicle[1252] = CreateVehicle(400, 2753.1467, -2387.5439, 13.7357, 1.3794, -1, -1, 60); //Landstalker
	//(g_Vehicle[1252], 0);
	g_Vehicle[1253] = CreateVehicle(552, 2656.9172, -2451.1821, 13.3204, 93.4498, -1, -1, 60); //Utility
	//(g_Vehicle[1253], 0);
	g_Vehicle[1254] = CreateVehicle(422, 2428.1499, -2492.5559, 13.6316, 45.6813, -1, -1, 60); //Bobcat
	//(g_Vehicle[1254], 0);
	g_Vehicle[1255] = CreateVehicle(530, 2435.3371, -2434.5278, 13.3910, 41.7355, -1, -1, 60); //Forklift
	g_Vehicle[1256] = CreateVehicle(530, 2418.4020, -2506.5556, 13.4131, 273.4679, -1, -1, 60); //Forklift
	//(g_Vehicle[1256], 0);
	g_Vehicle[1257] = CreateVehicle(530, 2205.8361, -2571.1787, 13.3093, 85.7643, -1, -1, 60); //Forklift
	//(g_Vehicle[1257], 0);
	g_Vehicle[1258] = CreateVehicle(455, 2152.5361, -2148.2824, 13.9860, 310.8004, -1, -1, 60); //Flatbed
	//(g_Vehicle[1258], 0);
	g_Vehicle[1259] = CreateVehicle(439, 1373.6738, -1634.1740, 13.2790, 271.5003, -1, -1, 60); //Stallion
	g_Vehicle[1260] = CreateVehicle(542, 1362.9803, -1659.5124, 13.1262, 270.4667, -1, -1, 60); //Clover
	//(g_Vehicle[1260], 0);
	g_Vehicle[1261] = CreateVehicle(475, 1359.6679, -1749.6176, 13.1843, 0.0961, -1, -1, 60); //Sabre
	//(g_Vehicle[1261], 0);
	g_Vehicle[1262] = CreateVehicle(439, 1401.3602, -1507.1210, 13.4834, 163.4145, -1, -1, 60); //Stallion
	//(g_Vehicle[1262], 0);
	g_Vehicle[1263] = CreateVehicle(475, 1500.1357, -1487.4355, 13.3556, 91.3002, -1, -1, 60); //Sabre
	g_Vehicle[1264] = CreateVehicle(542, 1797.1292, -1701.1102, 13.2756, 179.5339, -1, -1, 60); //Clover
	//(g_Vehicle[1264], 0);
	g_Vehicle[1265] = CreateVehicle(521, 1807.9387, -1688.3774, 13.1068, 105.3693, -1, -1, 60); //FCR-900
	//(g_Vehicle[1265], 0);
	g_Vehicle[1266] = CreateVehicle(414, 1781.8599, -1701.3482, 13.5957, 3.8341, -1, -1, 60); //Mule
	//(g_Vehicle[1266], 0);
	g_Vehicle[1267] = CreateVehicle(475, 306.7730, -1438.4086, 27.7341, 120.6371, -1, -1, 60); //Sabre
	g_Vehicle[1268] = CreateVehicle(475, 1277.5546, -1610.1168, 13.3510, 90.3927, -1, -1, 60); //Sabre
	//(g_Vehicle[1268], 0);
	g_Vehicle[1269] = CreateVehicle(439, 1670.6208, -1886.9011, 13.4428, 2.8833, -1, -1, 60); //Stallion
	//(g_Vehicle[1269], 0);
	g_Vehicle[1270] = CreateVehicle(414, 1653.4975, -1837.6439, 13.6400, 1.1053, -1, -1, 60); //Mule
	//(g_Vehicle[1270], 0);
	g_Vehicle[1271] = CreateVehicle(475, 1145.1481, -1366.7388, 13.5455, 184.4174, -1, -1, 60); //Sabre
	g_Vehicle[1272] = CreateVehicle(418, 2090.4797, -1556.7978, 13.2112, 181.8175, -1, -1, 60); //Moonbeam
	//(g_Vehicle[1272], 0);
	g_Vehicle[1273] = CreateVehicle(554, 2224.8198, -2211.0693, 13.6286, 314.5281, -1, -1, 60); //Yosemite
	//(g_Vehicle[1273], 0);
	g_Vehicle[1274] = CreateVehicle(403, 2201.2490, -2241.3310, 14.1532, 135.1535, -1, -1, 60); //Linerunner
	//(g_Vehicle[1274], 0);
	g_Vehicle[1275] = CreateVehicle(403, 2196.7460, -2236.3652, 14.1485, 134.2908, -1, -1, 60); //Linerunner
	g_Vehicle[1276] = CreateVehicle(403, 2208.1823, -2296.9404, 15.3708, 136.0372, -1, -1, 60); //Linerunner
	//(g_Vehicle[1276], 0);
	g_Vehicle[1277] = CreateVehicle(439, 2393.2521, -1927.3457, 13.2782, 179.4217, -1, -1, 60); //Stallion
	//(g_Vehicle[1277], 0);
	g_Vehicle[1278] = CreateVehicle(475, 2383.3688, -1928.1164, 13.1843, 179.4976, -1, -1, 60); //Sabre
	//(g_Vehicle[1278], 0);
	g_Vehicle[1279] = CreateVehicle(521, 2376.8759, -1929.3613, 12.9562, 341.1394, -1, -1, 60); //FCR-900
	g_Vehicle[1280] = CreateVehicle(439, 2349.1823, -2000.2684, 13.2665, 267.0585, -1, -1, 60); //Stallion
	//(g_Vehicle[1280], 0);
	g_Vehicle[1281] = CreateVehicle(420, 1775.6141, -1860.0100, 13.2744, 269.2005, -1, -1, 60); //Taxi
	//(g_Vehicle[1281], 0);
	g_Vehicle[1282] = CreateVehicle(420, 1763.0120, -1860.0036, 13.2722, 271.2998, -1, -1, 60); //Taxi
	//(g_Vehicle[1282], 0);
	g_Vehicle[1283] = CreateVehicle(420, 1748.9357, -1859.9501, 13.2721, 270.3942, -1, -1, 60); //Taxi
	g_Vehicle[1284] = CreateVehicle(420, 1734.6754, -1859.9305, 13.2740, 270.5646, -1, -1, 60); //Taxi
	//(g_Vehicle[1284], 0);
	g_Vehicle[1285] = CreateVehicle(542, 1512.3342, -2211.7639, 13.2939, 359.3841, -1, -1, 60); //Clover
	//(g_Vehicle[1285], 0);
	g_Vehicle[1286] = CreateVehicle(518, 1546.2539, -2211.5556, 13.2253, 178.7041, -1, -1, 60); //Buccaneer
	//(g_Vehicle[1286], 0);
	g_Vehicle[1287] = CreateVehicle(521, 1560.0938, -2243.5126, 13.1178, 94.0584, -1, -1, 60); //FCR-900
	g_Vehicle[1288] = CreateVehicle(429, 1441.7078, -2225.1513, 13.2264, 1.5921, -1, -1, 60); //Banshee
	//(g_Vehicle[1288], 0);
	g_Vehicle[1289] = CreateVehicle(518, 1454.6435, -2224.9184, 13.2177, 0.2168, -1, -1, 60); //Buccaneer
	//(g_Vehicle[1289], 0);
	g_Vehicle[1290] = CreateVehicle(496, 1408.1468, -2242.1520, 13.2629, 359.3945, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1290], 0);
	g_Vehicle[1291] = CreateVehicle(439, 1398.1569, -2225.4885, 13.4427, 179.6260, -1, -1, 60); //Stallion
	g_Vehicle[1292] = CreateVehicle(475, 1391.6555, -2241.8703, 13.3494, 180.5888, -1, -1, 60); //Sabre
	//(g_Vehicle[1292], 0);
	g_Vehicle[1293] = CreateVehicle(542, 1364.5347, -2242.7036, 13.2898, 270.7713, -1, -1, 60); //Clover
	//(g_Vehicle[1293], 0);
	g_Vehicle[1294] = CreateVehicle(542, 1404.6640, -2314.1210, 13.2897, 180.5298, -1, -1, 60); //Clover
	//(g_Vehicle[1294], 0);
	g_Vehicle[1295] = CreateVehicle(518, 1411.2491, -2347.3430, 13.2101, 180.0482, -1, -1, 60); //Buccaneer
	g_Vehicle[1296] = CreateVehicle(496, 1391.5173, -2364.2131, 13.2632, 179.7053, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1296], 0);
	g_Vehicle[1297] = CreateVehicle(521, 1365.7269, -2351.5515, 13.1069, 87.0618, -1, -1, 60); //FCR-900
	//(g_Vehicle[1297], 0);
	g_Vehicle[1298] = CreateVehicle(402, -2507.2949, -2661.3745, 41.6141, 47.4362, -1, -1, 60); //Buffalo
	//(g_Vehicle[1298], 0);
	g_Vehicle[1299] = CreateVehicle(489, -2226.7434, -2328.2502, 30.7266, 320.7235, -1, -1, 60); //Rancher
	g_Vehicle[1300] = CreateVehicle(489, -2222.2509, -2313.6254, 30.7042, 139.2187, -1, -1, 60); //Rancher
	//(g_Vehicle[1300], 0);
	g_Vehicle[1301] = CreateVehicle(492, -2237.1716, -2319.5217, 30.1611, 320.8835, -1, -1, 60); //Greenwood
	//(g_Vehicle[1301], 0);
	g_Vehicle[1302] = CreateVehicle(416, -2202.5034, -2315.8737, 30.7133, 319.2145, -1, -1, 60); //Ambulance
	//(g_Vehicle[1302], 0);
	g_Vehicle[1303] = CreateVehicle(437, -2183.7780, -2251.1503, 30.7738, 50.7582, -1, -1, 60); //Coach
	g_Vehicle[1304] = CreateVehicle(439, -2195.2421, -2265.3093, 30.5209, 141.9244, -1, -1, 60); //Stallion
	//(g_Vehicle[1304], 0);
	g_Vehicle[1305] = CreateVehicle(468, -2119.6215, -2309.6586, 30.2905, 236.4013, -1, -1, 60); //Sanchez
	//(g_Vehicle[1305], 0);
	g_Vehicle[1306] = CreateVehicle(468, -2090.2646, -2343.2663, 30.2931, 133.5881, -1, -1, 60); //Sanchez
	//(g_Vehicle[1306], 0);
	g_Vehicle[1307] = CreateVehicle(478, -2139.3381, -2394.7604, 30.5345, 321.4478, -1, -1, 60); //Walton
	g_Vehicle[1308] = CreateVehicle(403, -2000.1112, -2415.5122, 31.5909, 229.2187, -1, -1, 60); //Linerunner
	//(g_Vehicle[1308], 0);
	g_Vehicle[1309] = CreateVehicle(578, -1969.7487, -2437.8750, 31.2884, 278.4375, -1, -1, 60); //DFT-30
	//(g_Vehicle[1309], 0);
	g_Vehicle[1310] = CreateVehicle(483, -2047.1420, -2548.5454, 30.6175, 143.9577, -1, -1, 60); //Camper
	//(g_Vehicle[1310], 0);
	g_Vehicle[1311] = CreateVehicle(496, -2090.5361, -2547.2097, 30.3414, 319.1863, -1, -1, 60); //Blista Compact
	g_Vehicle[1312] = CreateVehicle(499, -2147.2827, -2540.9389, 30.6123, 321.3171, -1, -1, 60); //Benson
	//(g_Vehicle[1312], 0);
	g_Vehicle[1313] = CreateVehicle(507, -2198.5273, -2501.1496, 30.4428, 142.3856, -1, -1, 60); //Elegant
	//(g_Vehicle[1313], 0);
	g_Vehicle[1314] = CreateVehicle(508, -2238.4975, -2476.8637, 31.5503, 135.3412, -1, -1, 60); //Journey
	//(g_Vehicle[1314], 0);
	g_Vehicle[1315] = CreateVehicle(525, -2201.8979, -2431.7082, 30.5065, 143.2418, -1, -1, 60); //Tow Truck
	g_Vehicle[1316] = CreateVehicle(542, -2208.8725, -2301.8510, 30.3684, 141.4183, -1, -1, 60); //Clover
	//(g_Vehicle[1316], 0);
	g_Vehicle[1317] = CreateVehicle(468, -2408.1938, -2180.6550, 32.9574, 359.2590, -1, -1, 60); //Sanchez
	//(g_Vehicle[1317], 0);
	g_Vehicle[1318] = CreateVehicle(468, -2408.5000, -2185.9997, 32.9469, 320.6250, -1, -1, 60); //Sanchez
	//(g_Vehicle[1318], 0);
	g_Vehicle[1319] = CreateVehicle(468, -2404.6193, -2184.0007, 32.9580, 180.5767, -1, -1, 60); //Sanchez
	g_Vehicle[1320] = CreateVehicle(468, -2410.8002, -2193.1538, 32.9575, 98.7389, -1, -1, 60); //Sanchez
	//(g_Vehicle[1320], 0);
	g_Vehicle[1321] = CreateVehicle(468, -2383.4411, -2195.6008, 32.9551, 269.5914, -1, -1, 60); //Sanchez
	//(g_Vehicle[1321], 0);
	g_Vehicle[1322] = CreateVehicle(421, -2232.4704, -2168.4863, 40.0861, 269.7544, -1, -1, 60); //Washington
	//(g_Vehicle[1322], 0);
	g_Vehicle[1323] = CreateVehicle(586, -2211.9084, -2152.1481, 44.5665, 39.1713, -1, -1, 60); //Wayfarer
	g_Vehicle[1324] = CreateVehicle(586, -2341.5478, -1617.2042, 483.2096, 282.5971, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1324], 0);
	g_Vehicle[1325] = CreateVehicle(483, -2343.2617, -1613.8765, 483.6216, 105.4732, -1, -1, 60); //Camper
	//(g_Vehicle[1325], 0);
	g_Vehicle[1326] = CreateVehicle(508, -2338.5102, -1593.7384, 483.9935, 19.6732, -1, -1, 60); //Journey
	//(g_Vehicle[1326], 0);
	g_Vehicle[1327] = CreateVehicle(542, -1903.3435, -1648.1373, 21.4948, 0.2053, -1, -1, 60); //Clover
	g_Vehicle[1328] = CreateVehicle(543, -1884.3239, -1746.2725, 21.5641, 116.1924, -1, -1, 60); //Sadler
	//(g_Vehicle[1328], 0);
	g_Vehicle[1329] = CreateVehicle(568, -1425.6387, -1964.6724, 16.7105, 350.8757, -1, -1, 60); //Bandito
	//(g_Vehicle[1329], 0);
	g_Vehicle[1330] = CreateVehicle(568, -1422.0556, -1774.0085, 46.2860, 324.6742, -1, -1, 60); //Bandito
	//(g_Vehicle[1330], 0);
	g_Vehicle[1331] = CreateVehicle(424, -1642.4335, -2250.6625, 31.2031, 90.7390, -1, -1, 60); //BF Injection
	g_Vehicle[1332] = CreateVehicle(471, -1623.8787, -1935.3231, 98.1841, 9.9608, -1, -1, 60); //Quad
	//(g_Vehicle[1332], 0);
	g_Vehicle[1333] = CreateVehicle(471, -1423.5977, -1480.9162, 101.1532, 181.2330, -1, -1, 60); //Quad
	//(g_Vehicle[1333], 0);
	g_Vehicle[1334] = CreateVehicle(478, -1446.1259, -1494.6137, 101.7286, 5.6245, -1, -1, 60); //Walton
	//(g_Vehicle[1334], 0);
	g_Vehicle[1335] = CreateVehicle(468, -1460.7500, -1566.6243, 101.4171, 1.4062, -1, -1, 60); //Sanchez
	g_Vehicle[1336] = CreateVehicle(455, -1921.1331, -1376.5701, 40.8204, 60.9557, -1, -1, 60); //Flatbed
	//(g_Vehicle[1336], 0);
	g_Vehicle[1337] = CreateVehicle(568, -2675.9160, -2647.4184, 8.6870, 28.6793, -1, -1, 60); //Bandito
	//(g_Vehicle[1337], 0);
	g_Vehicle[1338] = CreateVehicle(527, -2504.5607, -2310.4421, 14.8241, 97.2619, -1, -1, 60); //Cadrona
	//(g_Vehicle[1338], 0);
	g_Vehicle[1339] = CreateVehicle(543, -2522.9069, -2151.9606, 30.3162, 29.5732, -1, -1, 60); //Sadler
	g_Vehicle[1340] = CreateVehicle(568, -2675.9160, -2647.4184, 8.6870, 28.6793, -1, -1, 60); //Bandito
	//(g_Vehicle[1340], 0);
	g_Vehicle[1341] = CreateVehicle(487, -2249.4399, -1714.5770, 480.3399, 224.1963, -1, -1, 60); //Maverick
	//(g_Vehicle[1341], 0);
	g_Vehicle[1342] = CreateVehicle(500, -2390.3205, -1866.1573, 405.1097, 113.9224, -1, -1, 60); //Mesa
	//(g_Vehicle[1342], 0);
	g_Vehicle[1343] = CreateVehicle(533, -2096.2731, -1879.9227, 110.1080, 326.6144, -1, -1, 60); //Feltzer
	g_Vehicle[1344] = CreateVehicle(540, -2515.5263, -1995.7283, 166.3034, 28.0149, -1, -1, 60); //Vincent
	//(g_Vehicle[1344], 0);
	g_Vehicle[1345] = CreateVehicle(554, -2669.3085, -1735.2326, 252.3594, 12.2742, -1, -1, 60); //Yosemite
	//(g_Vehicle[1345], 0);
	g_Vehicle[1346] = CreateVehicle(559, -2590.5930, -1618.1425, 343.4677, 186.3544, -1, -1, 60); //Jester
	//(g_Vehicle[1346], 0);
	g_Vehicle[1347] = CreateVehicle(579, -2106.7739, -1752.2147, 195.3652, 327.5762, -1, -1, 60); //Huntley
	g_Vehicle[1348] = CreateVehicle(595, -2819.6801, -2525.9887, 0.4586, 189.6302, -1, -1, 60); //Launch
	//(g_Vehicle[1348], 0);
	g_Vehicle[1349] = CreateVehicle(453, -2741.3564, -2707.7282, 0.1388, 208.1954, -1, -1, 60); //Reefer
	//(g_Vehicle[1349], 0);
	g_Vehicle[1350] = CreateVehicle(484, -2548.1645, -2873.2219, 0.3668, 268.3288, -1, -1, 60); //Marquis
	//(g_Vehicle[1350], 0);
	g_Vehicle[1351] = CreateVehicle(484, -2476.8723, -2872.8671, 0.4027, 271.5837, -1, -1, 60); //Marquis
	g_Vehicle[1352] = CreateVehicle(473, -2251.1206, -2847.8002, -0.3512, 165.8473, -1, -1, 60); //Dinghy
	//(g_Vehicle[1352], 0);
	g_Vehicle[1353] = CreateVehicle(424, -2242.9829, -2821.8869, 2.7472, 94.0739, -1, -1, 60); //BF Injection
	//(g_Vehicle[1353], 0);
	g_Vehicle[1354] = CreateVehicle(506, -1604.3470, -2709.3530, 48.2387, 54.1572, -1, -1, 60); //Super GT
	//(g_Vehicle[1354], 0);
	g_Vehicle[1355] = CreateVehicle(536, -1561.9785, -2720.5659, 48.2750, 234.6728, -1, -1, 60); //Blade
	g_Vehicle[1356] = CreateVehicle(545, -1569.3096, -2733.4147, 48.3546, 326.8111, -1, -1, 60); //Hustler
	//(g_Vehicle[1356], 0);
	g_Vehicle[1357] = CreateVehicle(582, -1557.6207, -2741.3735, 48.5989, 146.9181, -1, -1, 60); //Newsvan
	//(g_Vehicle[1357], 0);
	g_Vehicle[1358] = CreateVehicle(430, -1190.5161, -2686.8107, -0.2698, 13.1617, -1, -1, 60); //Predator
	//(g_Vehicle[1358], 0);
	g_Vehicle[1359] = CreateVehicle(478, -1220.1481, -2632.0307, 9.9623, 84.2916, -1, -1, 60); //Walton
	g_Vehicle[1360] = CreateVehicle(473, -1249.5087, -2431.4194, -0.1993, 349.6535, -1, -1, 60); //Dinghy
	//(g_Vehicle[1360], 0);
	g_Vehicle[1361] = CreateVehicle(473, -1183.5030, -2138.8706, -0.2419, 8.5586, -1, -1, 60); //Dinghy
	//(g_Vehicle[1361], 0);
	g_Vehicle[1362] = CreateVehicle(446, -1429.5231, -2080.6206, -0.3127, 148.7615, -1, -1, 60); //Squalo
	//(g_Vehicle[1362], 0);
	g_Vehicle[1363] = CreateVehicle(446, -1544.0499, -2232.3505, -0.5151, 167.9521, -1, -1, 60); //Squalo
	g_Vehicle[1364] = CreateVehicle(453, -1639.3208, -1706.3165, -0.3041, 73.0879, -1, -1, 60); //Reefer
	//(g_Vehicle[1364], 0);
	g_Vehicle[1365] = CreateVehicle(460, -2038.7719, -1314.9451, 1.7165, 80.6953, -1, -1, 60); //Skimmer
	//(g_Vehicle[1365], 0);
	g_Vehicle[1366] = CreateVehicle(493, -2417.8991, -944.8140, -0.1597, 61.3138, -1, -1, 60); //Jetmax
	//(g_Vehicle[1366], 0);
	g_Vehicle[1367] = CreateVehicle(542, -2217.0332, -2407.2426, 30.8341, 232.1175, -1, -1, 60); //Clover
	g_Vehicle[1368] = CreateVehicle(468, -2508.1076, -1892.6253, 297.1184, 25.0146, -1, -1, 60); //Sanchez
	//(g_Vehicle[1368], 0);
	g_Vehicle[1369] = CreateVehicle(513, 291.1346, 2535.5849, 17.3777, 180.2973, -1, -1, 60); //Stunt
	//(g_Vehicle[1369], 0);
	g_Vehicle[1370] = CreateVehicle(512, 324.4324, 2535.6506, 17.5121, 181.8784, -1, -1, 60); //Cropdust
	//(g_Vehicle[1370], 0);
	g_Vehicle[1371] = CreateVehicle(476, 403.6754, 2456.9726, 16.7824, 357.7750, -1, -1, 60); //Rustler
	g_Vehicle[1372] = CreateVehicle(417, 364.4265, 2535.2258, 16.7616, 143.5451, -1, -1, 60); //Leviathan
	//(g_Vehicle[1372], 0);
	g_Vehicle[1373] = CreateVehicle(586, 423.4558, 2541.1025, 15.9886, 339.6539, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1373], 0);
	g_Vehicle[1374] = CreateVehicle(543, 385.2092, 2603.5048, 16.3080, 192.7106, -1, -1, 60); //Sadler
	//(g_Vehicle[1374], 0);
	g_Vehicle[1375] = CreateVehicle(468, 383.9263, 2590.5932, 16.1532, 275.5223, -1, -1, 60); //Sanchez
	g_Vehicle[1376] = CreateVehicle(473, 260.6835, 2936.9685, 0.1289, 358.4063, -1, -1, 60); //Dinghy
	//(g_Vehicle[1376], 0);
	g_Vehicle[1377] = CreateVehicle(586, -237.9595, 2595.8259, 62.2230, 181.1165, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1377], 0);
	g_Vehicle[1378] = CreateVehicle(468, -146.0388, 2681.6435, 62.0453, 272.4596, -1, -1, 60); //Sanchez
	//(g_Vehicle[1378], 0);
	g_Vehicle[1379] = CreateVehicle(429, -213.1004, 2609.1828, 62.3828, 359.8649, -1, -1, 60); //Banshee
	g_Vehicle[1380] = CreateVehicle(600, -201.2879, 2594.7170, 62.4220, 1.1029, -1, -1, 60); //Picador
	//(g_Vehicle[1380], 0);
	g_Vehicle[1381] = CreateVehicle(489, -270.6936, 2675.0888, 62.7953, 251.3489, -1, -1, 60); //Rancher
	//(g_Vehicle[1381], 0);
	g_Vehicle[1382] = CreateVehicle(471, -165.8630, 2715.0739, 61.9532, 88.0076, -1, -1, 60); //Quad
	//(g_Vehicle[1382], 0);
	g_Vehicle[1383] = CreateVehicle(420, -208.3269, 2723.9990, 62.4695, 267.2648, -1, -1, 60); //Taxi
	g_Vehicle[1384] = CreateVehicle(489, -290.5132, 2721.2917, 62.4474, 181.4169, -1, -1, 60); //Rancher
	//(g_Vehicle[1384], 0);
	g_Vehicle[1385] = CreateVehicle(463, -322.7055, 2671.4550, 62.2948, 179.9792, -1, -1, 60); //Freeway
	//(g_Vehicle[1385], 0);
	g_Vehicle[1386] = CreateVehicle(489, -303.7002, 2683.5917, 62.7897, 180.7489, -1, -1, 60); //Rancher
	//(g_Vehicle[1386], 0);
	g_Vehicle[1387] = CreateVehicle(468, -255.1318, 2766.7500, 61.9962, 181.5453, -1, -1, 60); //Sanchez
	g_Vehicle[1388] = CreateVehicle(604, -171.7223, 2759.3876, 62.4067, 24.1881, -1, -1, 60); //Glendale
	//(g_Vehicle[1388], 0);
	g_Vehicle[1389] = CreateVehicle(424, -17.3880, 2355.6076, 23.8878, 143.4369, -1, -1, 60); //BF Injection
	//(g_Vehicle[1389], 0);
	g_Vehicle[1390] = CreateVehicle(470, 304.7514, 1839.3784, 17.5988, 336.0932, -1, -1, 60); //Patriot
	//(g_Vehicle[1390], 0);
	g_Vehicle[1391] = CreateVehicle(433, 301.7500, 1863.8750, 18.0533, 360.0000, -1, -1, 60); //Barracks
	g_Vehicle[1392] = CreateVehicle(548, 296.0859, 1925.9017, 19.3104, 236.2604, -1, -1, 60); //Cargobob
	//(g_Vehicle[1392], 0);
	g_Vehicle[1393] = CreateVehicle(548, 314.9758, 2046.6258, 19.2481, 157.8634, -1, -1, 60); //Cargobob
	//(g_Vehicle[1393], 0);
	g_Vehicle[1394] = CreateVehicle(548, 350.5939, 1984.1193, 19.3047, 92.2204, -1, -1, 60); //Cargobob
	//(g_Vehicle[1394], 0);
	g_Vehicle[1395] = CreateVehicle(470, 282.3898, 1955.3890, 17.6340, 270.8638, -1, -1, 60); //Patriot
	g_Vehicle[1396] = CreateVehicle(543, -210.2041, 2609.1667, 62.5215, 181.2799, -1, -1, 60); //Sadler
	//(g_Vehicle[1396], 0);
	g_Vehicle[1397] = CreateVehicle(482, -528.5228, 2571.3864, 53.5349, 269.2739, -1, -1, 60); //Burrito
	//(g_Vehicle[1397], 0);
	g_Vehicle[1398] = CreateVehicle(424, -527.7628, 2604.1191, 53.1936, 271.2167, -1, -1, 60); //BF Injection
	//(g_Vehicle[1398], 0);
	g_Vehicle[1399] = CreateVehicle(411, -519.1962, 2617.6291, 53.1447, 90.1551, -1, -1, 60); //Infernus
	g_Vehicle[1400] = CreateVehicle(600, -421.8826, 2225.4055, 42.0774, 180.3448, -1, -1, 60); //Picador
	//(g_Vehicle[1400], 0);
	g_Vehicle[1401] = CreateVehicle(568, -363.7965, 2215.8901, 42.3508, 72.2219, -1, -1, 60); //Bandito
	//(g_Vehicle[1401], 0);
	g_Vehicle[1402] = CreateVehicle(568, -366.0047, 2213.4296, 42.3455, 69.9284, -1, -1, 60); //Bandito
	//(g_Vehicle[1402], 0);
	g_Vehicle[1403] = CreateVehicle(471, -399.0436, 2252.6684, 41.8177, 300.8135, -1, -1, 60); //Quad
	g_Vehicle[1404] = CreateVehicle(461, -301.5291, 1777.7788, 42.2719, 92.8799, -1, -1, 60); //PCJ-600
	//(g_Vehicle[1404], 0);
	g_Vehicle[1405] = CreateVehicle(468, -290.4525, 1746.2904, 42.3604, 91.2906, -1, -1, 60); //Sanchez
	//(g_Vehicle[1405], 0);
	g_Vehicle[1406] = CreateVehicle(508, -302.0461, 1755.6252, 43.0625, 271.1350, -1, -1, 60); //Journey
	//(g_Vehicle[1406], 0);
	g_Vehicle[1407] = CreateVehicle(568, -162.9633, 1673.1276, 14.4767, 202.5489, -1, -1, 60); //Bandito
	g_Vehicle[1408] = CreateVehicle(508, -285.4013, 1562.1003, 75.7343, 137.1875, -1, -1, 60); //Journey
	//(g_Vehicle[1408], 0);
	g_Vehicle[1409] = CreateVehicle(468, -307.6940, 1556.6574, 75.0274, 45.6279, -1, -1, 60); //Sanchez
	//(g_Vehicle[1409], 0);
	g_Vehicle[1410] = CreateVehicle(424, -299.3566, 1577.7836, 75.1395, 313.4808, -1, -1, 60); //BF Injection
	//(g_Vehicle[1410], 0);
	g_Vehicle[1411] = CreateVehicle(478, -336.6758, 1514.6866, 75.3519, 180.0567, -1, -1, 60); //Walton
	g_Vehicle[1412] = CreateVehicle(495, -359.6404, 1596.7111, 77.3610, 356.9483, -1, -1, 60); //Sandking
	//(g_Vehicle[1412], 0);
	g_Vehicle[1413] = CreateVehicle(477, -333.5036, 1515.0670, 75.1135, 180.8090, -1, -1, 60); //ZR3 50
	//(g_Vehicle[1413], 0);
	g_Vehicle[1414] = CreateVehicle(421, -291.1455, 1308.1112, 53.8199, 82.9306, -1, -1, 60); //Washington
	//(g_Vehicle[1414], 0);
	g_Vehicle[1415] = CreateVehicle(581, -291.5827, 1293.2132, 53.2624, 258.5006, -1, -1, 60); //BF-400
	g_Vehicle[1416] = CreateVehicle(403, -290.1070, 1317.4010, 55.3023, 262.6769, -1, -1, 60); //Linerunner
	//(g_Vehicle[1416], 0);
	g_Vehicle[1417] = CreateVehicle(433, 277.9317, 2020.2458, 18.0772, 271.3421, -1, -1, 60); //Barracks
	//(g_Vehicle[1417], 0);
	g_Vehicle[1418] = CreateVehicle(433, 277.5226, 2025.6990, 18.0771, 270.0389, -1, -1, 60); //Barracks
	//(g_Vehicle[1418], 0);
	g_Vehicle[1419] = CreateVehicle(470, 183.5019, 1930.6356, 17.8497, 181.7917, -1, -1, 60); //Patriot
	g_Vehicle[1420] = CreateVehicle(470, 270.1317, 1830.0344, 17.6343, 143.8542, -1, -1, 60); //Patriot
	//(g_Vehicle[1420], 0);
	g_Vehicle[1421] = CreateVehicle(470, 121.0927, 1926.0618, 19.0886, 306.0422, -1, -1, 60); //Patriot
	//(g_Vehicle[1421], 0);
	g_Vehicle[1422] = CreateVehicle(470, 103.0627, 1914.8338, 18.3726, 40.8428, -1, -1, 60); //Patriot
	//(g_Vehicle[1422], 0);
	g_Vehicle[1423] = CreateVehicle(468, 140.1878, 1893.0078, 18.0573, 274.7854, -1, -1, 60); //Sanchez
	g_Vehicle[1424] = CreateVehicle(468, 136.2434, 1892.8341, 18.0552, 270.1823, -1, -1, 60); //Sanchez
	//(g_Vehicle[1424], 0);
	g_Vehicle[1425] = CreateVehicle(470, 134.6078, 1849.7642, 17.6816, 91.4022, -1, -1, 60); //Patriot
	//(g_Vehicle[1425], 0);
	g_Vehicle[1426] = CreateVehicle(433, 301.8880, 1877.5836, 18.0771, 359.7517, -1, -1, 60); //Barracks
	//(g_Vehicle[1426], 0);
	g_Vehicle[1427] = CreateVehicle(548, 359.2137, 1913.9470, 19.2744, 133.3755, -1, -1, 60); //Cargobob
	g_Vehicle[1428] = CreateVehicle(586, -89.7496, 1365.3421, 9.7936, 285.2903, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1428], 0);
	g_Vehicle[1429] = CreateVehicle(466, -85.4119, 1340.1921, 10.5036, 7.1842, -1, -1, 60); //Glendale
	//(g_Vehicle[1429], 0);
	g_Vehicle[1430] = CreateVehicle(468, 9.3781, 1377.7744, 8.8402, 294.2037, -1, -1, 60); //Sanchez
	//(g_Vehicle[1430], 0);
	g_Vehicle[1431] = CreateVehicle(422, 833.7327, 840.1547, 11.8227, 24.4116, -1, -1, 60); //Bobcat
	g_Vehicle[1432] = CreateVehicle(543, 830.2896, 838.6002, 11.3840, 23.9283, -1, -1, 60); //Sadler
	//(g_Vehicle[1432], 0);
	g_Vehicle[1433] = CreateVehicle(468, 827.4531, 860.1787, 12.0123, 109.8285, -1, -1, 60); //Sanchez
	//(g_Vehicle[1433], 0);
	g_Vehicle[1434] = CreateVehicle(422, 836.8754, 842.0145, 12.0940, 26.4860, -1, -1, 60); //Bobcat
	//(g_Vehicle[1434], 0);
	g_Vehicle[1435] = CreateVehicle(468, 580.7761, 864.2720, -43.7228, 275.0642, -1, -1, 60); //Sanchez
	g_Vehicle[1436] = CreateVehicle(468, 631.1497, 894.8026, -43.2459, 149.4181, -1, -1, 60); //Sanchez
	//(g_Vehicle[1436], 0);
	g_Vehicle[1437] = CreateVehicle(543, 683.0380, 839.5352, -43.1469, 55.1710, -1, -1, 60); //Sadler
	//(g_Vehicle[1437], 0);
	g_Vehicle[1438] = CreateVehicle(543, 576.0908, 872.8018, -43.8401, 181.5101, -1, -1, 60); //Sadler
	//(g_Vehicle[1438], 0);
	g_Vehicle[1439] = CreateVehicle(554, 486.3823, 859.6132, -29.9393, 199.5196, -1, -1, 60); //Yosemite
	g_Vehicle[1440] = CreateVehicle(468, 325.5537, 854.3142, 20.0746, 292.9197, -1, -1, 60); //Sanchez
	//(g_Vehicle[1440], 0);
	g_Vehicle[1441] = CreateVehicle(422, 374.6481, 870.9434, 20.3943, 29.1110, -1, -1, 60); //Bobcat
	//(g_Vehicle[1441], 0);
	g_Vehicle[1442] = CreateVehicle(554, 368.3893, 869.1057, 20.4881, 353.6958, -1, -1, 60); //Yosemite
	//(g_Vehicle[1442], 0);
	g_Vehicle[1443] = CreateVehicle(468, 446.0427, 914.1237, -8.4729, 4.2420, -1, -1, 60); //Sanchez
	g_Vehicle[1444] = CreateVehicle(408, -82.4225, 1133.9078, 20.2849, 89.4278, -1, -1, 60); //Trashmaster
	//(g_Vehicle[1444], 0);
	g_Vehicle[1445] = CreateVehicle(600, -140.4019, 1132.2213, 19.4622, 166.3078, -1, -1, 60); //Picador
	//(g_Vehicle[1445], 0);
	g_Vehicle[1446] = CreateVehicle(402, -177.5177, 1219.8247, 19.5739, 89.4745, -1, -1, 60); //Buffalo
	//(g_Vehicle[1446], 0);
	g_Vehicle[1447] = CreateVehicle(478, -247.5334, 1183.9091, 19.7248, 89.9570, -1, -1, 60); //Walton
	g_Vehicle[1448] = CreateVehicle(420, -131.1938, 1216.3355, 19.5210, 273.1836, -1, -1, 60); //Taxi
	//(g_Vehicle[1448], 0);
	g_Vehicle[1449] = CreateVehicle(463, -86.8975, 1222.4146, 19.2826, 1.5394, -1, -1, 60); //Freeway
	//(g_Vehicle[1449], 0);
	g_Vehicle[1450] = CreateVehicle(475, -34.2044, 1166.1116, 19.2469, 180.8654, -1, -1, 60); //Sabre
	//(g_Vehicle[1450], 0);
	g_Vehicle[1451] = CreateVehicle(479, -14.0528, 1219.9521, 19.1504, 180.8121, -1, -1, 60); //Regina
	g_Vehicle[1452] = CreateVehicle(508, 5.5720, 1164.8835, 19.9813, 180.1031, -1, -1, 60); //Journey
	//(g_Vehicle[1452], 0);
	g_Vehicle[1453] = CreateVehicle(546, 70.3247, 1218.6126, 18.5363, 344.9671, -1, -1, 60); //Intruder
	//(g_Vehicle[1453], 0);
	g_Vehicle[1454] = CreateVehicle(554, 59.3390, 1157.9759, 18.7483, 180.9685, -1, -1, 60); //Yosemite
	//(g_Vehicle[1454], 0);
	g_Vehicle[1455] = CreateVehicle(600, 92.6611, 1173.9310, 18.3812, 90.7632, -1, -1, 60); //Picador
	g_Vehicle[1456] = CreateVehicle(543, -30.8094, 1083.9030, 19.5578, 1.1169, -1, -1, 60); //Sadler
	//(g_Vehicle[1456], 0);
	g_Vehicle[1457] = CreateVehicle(468, -22.2045, 1123.5083, 19.4094, 176.0903, -1, -1, 60); //Sanchez
	//(g_Vehicle[1457], 0);
	g_Vehicle[1458] = CreateVehicle(403, -159.1065, 1060.1151, 20.6254, 0.9132, -1, -1, 60); //Linerunner
	//(g_Vehicle[1458], 0);
	g_Vehicle[1459] = CreateVehicle(599, -224.1936, 992.7145, 19.7455, 270.4413, -1, -1, 60); //Police Ranger
	g_Vehicle[1460] = CreateVehicle(599, -224.8070, 998.3137, 19.7814, 274.7940, -1, -1, 60); //Police Ranger
	//(g_Vehicle[1460], 0);
	g_Vehicle[1461] = CreateVehicle(416, -303.5810, 1036.1850, 19.7425, 270.8692, -1, -1, 60); //Ambulance
	//(g_Vehicle[1461], 0);
	g_Vehicle[1462] = CreateVehicle(416, -305.4525, 1028.0147, 19.7434, 90.5686, -1, -1, 60); //Ambulance
	//(g_Vehicle[1462], 0);
	g_Vehicle[1463] = CreateVehicle(543, -304.5285, 1015.9146, 19.4150, 271.5632, -1, -1, 60); //Sadler
	g_Vehicle[1464] = CreateVehicle(401, -305.0732, 1019.7993, 19.3733, 272.2265, -1, -1, 60); //Bravura
	//(g_Vehicle[1464], 0);
	g_Vehicle[1465] = CreateVehicle(471, -255.7187, 1059.0927, 19.2250, 123.9209, -1, -1, 60); //Quad
	//(g_Vehicle[1465], 0);
	g_Vehicle[1466] = CreateVehicle(542, -353.3447, 1160.9194, 19.4855, 208.7232, -1, -1, 60); //Clover
	//(g_Vehicle[1466], 0);
	g_Vehicle[1467] = CreateVehicle(489, -369.5546, 1127.0490, 19.9029, 88.9192, -1, -1, 60); //Rancher
	g_Vehicle[1468] = CreateVehicle(478, -314.7125, 1175.3937, 19.7327, 359.4183, -1, -1, 60); //Walton
	//(g_Vehicle[1468], 0);
	g_Vehicle[1469] = CreateVehicle(468, -2.8215, 943.7739, 19.2856, 266.8888, -1, -1, 60); //Sanchez
	//(g_Vehicle[1469], 0);
	g_Vehicle[1470] = CreateVehicle(600, 13.2778, 904.8585, 23.3526, 188.5502, -1, -1, 60); //Picador
	//(g_Vehicle[1470], 0);
	g_Vehicle[1471] = CreateVehicle(421, -43.5167, 892.9459, 22.0018, 142.2973, -1, -1, 60); //Washington
	g_Vehicle[1472] = CreateVehicle(463, -330.2066, 827.7351, 13.7820, 359.8963, -1, -1, 60); //Freeway
	//(g_Vehicle[1472], 0);
	g_Vehicle[1473] = CreateVehicle(482, -288.9206, 833.3483, 13.2276, 94.7100, -1, -1, 60); //Burrito
	//(g_Vehicle[1473], 0);
	g_Vehicle[1474] = CreateVehicle(525, 594.1295, 1239.8491, 11.5959, 43.6646, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1474], 0);
	g_Vehicle[1475] = CreateVehicle(403, 582.1790, 1215.0780, 12.8863, 211.4347, -1, -1, 60); //Linerunner
	g_Vehicle[1476] = CreateVehicle(543, 575.5623, 1209.5080, 12.1970, 211.3289, -1, -1, 60); //Sadler
	//(g_Vehicle[1476], 0);
	g_Vehicle[1477] = CreateVehicle(554, 484.7193, 1381.9645, 4.7876, 235.2010, -1, -1, 60); //Yosemite
	//(g_Vehicle[1477], 0);
	g_Vehicle[1478] = CreateVehicle(543, 197.9467, 1415.4565, 10.4055, 91.7164, -1, -1, 60); //Sadler
	//(g_Vehicle[1478], 0);
	g_Vehicle[1479] = CreateVehicle(500, 195.0308, 1465.7158, 10.6964, 270.6187, -1, -1, 60); //Mesa
	g_Vehicle[1480] = CreateVehicle(468, 253.7790, 1424.7091, 10.2522, 90.4512, -1, -1, 60); //Sanchez
	//(g_Vehicle[1480], 0);
	g_Vehicle[1481] = CreateVehicle(586, 650.1384, 1702.9343, 6.5118, 313.6105, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1481], 0);
	g_Vehicle[1482] = CreateVehicle(567, 658.5643, 1721.3256, 6.8586, 221.6448, -1, -1, 60); //Savanna
	//(g_Vehicle[1482], 0);
	g_Vehicle[1483] = CreateVehicle(586, 651.9063, 1700.9136, 6.5110, 313.4966, -1, -1, 60); //Wayfarer
	g_Vehicle[1484] = CreateVehicle(411, 608.4835, 1699.7763, 6.7210, 304.8486, -1, -1, 60); //Infernus
	//(g_Vehicle[1484], 0);
	g_Vehicle[1485] = CreateVehicle(411, 612.1845, 1694.9163, 6.7192, 304.3298, -1, -1, 60); //Infernus
	//(g_Vehicle[1485], 0);
	g_Vehicle[1486] = CreateVehicle(403, 600.2841, 1651.9191, 7.5816, 243.8007, -1, -1, 60); //Linerunner
	//(g_Vehicle[1486], 0);
	g_Vehicle[1487] = CreateVehicle(435, 605.6486, 1655.4605, 7.5724, 64.8613, -1, -1, 60); //Trailer
	g_Vehicle[1488] = CreateVehicle(450, 635.8098, 1225.5218, 12.7301, 122.5696, -1, -1, 60); //Trailer
	//(g_Vehicle[1488], 0);
	g_Vehicle[1489] = CreateVehicle(567, 686.5156, 1946.5955, 5.4100, 359.8967, -1, -1, 60); //Savanna
	//(g_Vehicle[1489], 0);
	g_Vehicle[1490] = CreateVehicle(401, 706.4428, 1947.4440, 5.3186, 180.8679, -1, -1, 60); //Bravura
	//(g_Vehicle[1490], 0);
	g_Vehicle[1491] = CreateVehicle(463, 721.6701, 1948.3236, 5.0788, 359.9205, -1, -1, 60); //Freeway
	g_Vehicle[1492] = CreateVehicle(463, 726.7943, 1948.3790, 5.0791, 4.4731, -1, -1, 60); //Freeway
	//(g_Vehicle[1492], 0);
	g_Vehicle[1493] = CreateVehicle(478, 755.5938, 1967.2078, 5.3298, 282.8078, -1, -1, 60); //Walton
	//(g_Vehicle[1493], 0);
	g_Vehicle[1494] = CreateVehicle(468, 768.3364, 2012.5627, 5.5680, 262.9367, -1, -1, 60); //Sanchez
	//(g_Vehicle[1494], 0);
	g_Vehicle[1495] = CreateVehicle(554, 768.9951, 2089.9960, 6.8010, 350.1155, -1, -1, 60); //Yosemite
	g_Vehicle[1496] = CreateVehicle(543, -36.5703, 2343.9338, 23.9552, 88.5315, -1, -1, 60); //Sadler
	//(g_Vehicle[1496], 0);
	g_Vehicle[1497] = CreateVehicle(568, -267.6664, 2085.4218, 28.2350, 247.1184, -1, -1, 60); //Bandito
	//(g_Vehicle[1497], 0);
	g_Vehicle[1498] = CreateVehicle(461, 228.3988, 2545.1191, 16.2294, 196.5722, -1, -1, 60); //PCJ-600
	//(g_Vehicle[1498], 0);
	g_Vehicle[1499] = CreateVehicle(487, 382.8606, 2535.8291, 16.7152, 213.0074, -1, -1, 60); //Maverick
	g_Vehicle[1500] = CreateVehicle(586, 524.6804, 2367.6975, 29.8994, 150.4217, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1500], 0);
	g_Vehicle[1501] = CreateVehicle(586, 521.0599, 2369.9216, 29.8827, 149.7266, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1501], 0);
	g_Vehicle[1502] = CreateVehicle(475, 528.7833, 2366.8168, 30.2134, 192.6022, -1, -1, 60); //Sabre
	//(g_Vehicle[1502], 0);
	g_Vehicle[1503] = CreateVehicle(473, -483.4696, 2180.5839, 40.2966, 179.7984, -1, -1, 60); //Dinghy
	g_Vehicle[1504] = CreateVehicle(473, -483.3937, 2187.7937, 40.3838, 179.0520, -1, -1, 60); //Dinghy
	//(g_Vehicle[1504], 0);
	g_Vehicle[1505] = CreateVehicle(568, -186.4467, 1861.0107, 51.1178, 240.6369, -1, -1, 60); //Bandito
	//(g_Vehicle[1505], 0);
	g_Vehicle[1506] = CreateVehicle(568, -167.0720, 1672.7178, 14.8376, 174.3531, -1, -1, 60); //Bandito
	//(g_Vehicle[1506], 0);
	g_Vehicle[1507] = CreateVehicle(508, 64.9485, 968.3701, 16.9384, 271.0809, -1, -1, 60); //Journey
	g_Vehicle[1508] = CreateVehicle(429, 168.0688, 1182.8461, 14.4375, 171.1508, -1, -1, 60); //Banshee
	//(g_Vehicle[1508], 0);
	g_Vehicle[1509] = CreateVehicle(586, 180.4965, 1170.9260, 14.2778, 57.3349, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1509], 0);
	g_Vehicle[1510] = CreateVehicle(424, 309.9406, 1152.2440, 8.3662, 92.8470, -1, -1, 60); //BF Injection
	//(g_Vehicle[1510], 0);
	g_Vehicle[1511] = CreateVehicle(543, 394.3825, 1148.7456, 8.4118, 247.3247, -1, -1, 60); //Sadler
	g_Vehicle[1512] = CreateVehicle(468, 408.5379, 1169.1868, 7.5731, 270.9849, -1, -1, 60); //Sanchez
	//(g_Vehicle[1512], 0);
	g_Vehicle[1513] = CreateVehicle(549, 418.7980, 1164.1499, 7.5854, 270.0798, -1, -1, 60); //Tampa
	//(g_Vehicle[1513], 0);
	g_Vehicle[1514] = CreateVehicle(605, -130.1385, 2244.4833, 31.9743, 169.1918, -1, -1, 60); //Sadler
	//(g_Vehicle[1514], 0);
	g_Vehicle[1515] = CreateVehicle(524, 687.0164, 895.0748, -38.5859, 78.9521, -1, -1, 60); //Cement Truck
	g_Vehicle[1516] = CreateVehicle(525, 596.8068, 872.9094, -43.2350, 185.6432, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1516], 0);
	g_Vehicle[1517] = CreateVehicle(468, -735.1237, 2755.1318, 46.8950, 266.4757, -1, -1, 60); //Sanchez
	//(g_Vehicle[1517], 0);
	g_Vehicle[1518] = CreateVehicle(478, -767.0834, 2758.8774, 45.7563, 358.3536, -1, -1, 60); //Walton
	//(g_Vehicle[1518], 0);
	g_Vehicle[1519] = CreateVehicle(479, -784.2089, 2753.3964, 45.4415, 269.4912, -1, -1, 60); //Regina
	g_Vehicle[1520] = CreateVehicle(468, -866.5963, 2767.2468, 45.6691, 269.6087, -1, -1, 60); //Sanchez
	//(g_Vehicle[1520], 0);
	g_Vehicle[1521] = CreateVehicle(482, -844.1182, 2753.1840, 45.9700, 271.7795, -1, -1, 60); //Burrito
	//(g_Vehicle[1521], 0);
	g_Vehicle[1522] = CreateVehicle(460, -943.4879, 2640.3840, 42.2746, 216.3265, -1, -1, 60); //Skimmer
	//(g_Vehicle[1522], 0);
	g_Vehicle[1523] = CreateVehicle(599, -1400.0966, 2631.6567, 55.9454, 89.9377, -1, -1, 60); //Police Ranger
	g_Vehicle[1524] = CreateVehicle(599, -1408.4202, 2656.5622, 55.8772, 359.9002, -1, -1, 60); //Police Ranger
	//(g_Vehicle[1524], 0);
	g_Vehicle[1525] = CreateVehicle(600, -1399.9003, 2644.0771, 55.3996, 88.6643, -1, -1, 60); //Picador
	//(g_Vehicle[1525], 0);
	g_Vehicle[1526] = CreateVehicle(489, -1445.9099, 2629.4877, 55.9791, 68.1606, -1, -1, 60); //Rancher
	//(g_Vehicle[1526], 0);
	g_Vehicle[1527] = CreateVehicle(471, -1447.7237, 2645.5598, 55.3170, 254.0852, -1, -1, 60); //Quad
	g_Vehicle[1528] = CreateVehicle(468, -1474.1904, 2702.0869, 55.4259, 157.1582, -1, -1, 60); //Sanchez
	//(g_Vehicle[1528], 0);
	g_Vehicle[1529] = CreateVehicle(496, -1478.3544, 2650.0290, 55.5522, 0.1259, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1529], 0);
	g_Vehicle[1530] = CreateVehicle(522, -1280.2207, 2719.3791, 49.6273, 119.8673, -1, -1, 60); //NRG-500
	//(g_Vehicle[1530], 0);
	g_Vehicle[1531] = CreateVehicle(443, -1296.2133, 2713.6496, 50.6958, 5.7505, -1, -1, 60); //Packer
	g_Vehicle[1532] = CreateVehicle(403, -1329.1464, 2671.8989, 50.6692, 262.2380, -1, -1, 60); //Linerunner
	//(g_Vehicle[1532], 0);
	g_Vehicle[1533] = CreateVehicle(435, -1307.8533, 2705.8735, 49.6342, 184.4974, -1, -1, 60); //Trailer
	//(g_Vehicle[1533], 0);
	g_Vehicle[1534] = CreateVehicle(468, -662.1752, 2305.8408, 135.7178, 90.3149, -1, -1, 60); //Sanchez
	//(g_Vehicle[1534], 0);
	g_Vehicle[1535] = CreateVehicle(531, -778.7886, 2420.9665, 157.0897, 144.8343, -1, -1, 60); //Tractor
	g_Vehicle[1536] = CreateVehicle(554, -809.7921, 2406.8044, 156.3750, 191.0581, -1, -1, 60); //Yosemite
	//(g_Vehicle[1536], 0);
	g_Vehicle[1537] = CreateVehicle(599, -807.0115, -942.0936, 104.6270, 314.7196, -1, -1, 60); //Police Ranger
	//(g_Vehicle[1537], 0);
	g_Vehicle[1538] = CreateVehicle(405, -589.3417, -1079.1354, 23.3770, 236.8903, -1, -1, 60); //Sentinel
	//(g_Vehicle[1538], 0);
	g_Vehicle[1539] = CreateVehicle(505, -569.3895, -1048.4031, 24.0146, 237.8018, -1, -1, 60); //Rancher
	g_Vehicle[1540] = CreateVehicle(403, -349.3221, -1052.6651, 59.4551, 89.0787, -1, -1, 60); //Linerunner
	//(g_Vehicle[1540], 0);
	g_Vehicle[1541] = CreateVehicle(505, -388.6629, -1150.0758, 69.5785, 357.9838, -1, -1, 60); //Rancher
	//(g_Vehicle[1541], 0);
	g_Vehicle[1542] = CreateVehicle(403, -76.0173, -1110.5596, 1.0456, 157.5384, -1, -1, 60); //Linerunner
	//(g_Vehicle[1542], 0);
	g_Vehicle[1543] = CreateVehicle(531, -41.9499, -1153.2261, 1.0440, 63.5908, -1, -1, 60); //Tractor
	g_Vehicle[1544] = CreateVehicle(403, -39.6652, -1149.7799, 1.0408, 65.3597, -1, -1, 60); //Linerunner
	//(g_Vehicle[1544], 0);
	g_Vehicle[1545] = CreateVehicle(531, -82.1817, -1137.4266, 1.0401, 340.8923, -1, -1, 60); //Tractor
	//(g_Vehicle[1545], 0);
	g_Vehicle[1546] = CreateVehicle(531, -85.4141, -1135.9937, 1.0412, 337.3026, -1, -1, 60); //Tractor
	//(g_Vehicle[1546], 0);
	g_Vehicle[1547] = CreateVehicle(403, -184.4848, -1307.1466, 5.7090, 103.7042, -1, -1, 60); //Linerunner
	g_Vehicle[1548] = CreateVehicle(531, -367.7308, -1437.3648, 25.6921, 89.2236, -1, -1, 60); //Tractor
	//(g_Vehicle[1548], 0);
	g_Vehicle[1549] = CreateVehicle(422, -587.1984, -1499.8406, 10.1746, 36.7555, -1, -1, 60); //Bobcat
	//(g_Vehicle[1549], 0);
	g_Vehicle[1550] = CreateVehicle(422, -657.5598, -1606.0065, 25.1821, 175.4013, -1, -1, 60); //Bobcat
	//(g_Vehicle[1550], 0);
	g_Vehicle[1551] = CreateVehicle(400, -495.5439, -1834.0343, 17.7954, 184.7055, -1, -1, 60); //Landstalker
	g_Vehicle[1552] = CreateVehicle(473, -512.5999, -1902.9431, 5.0015, 179.0171, -1, -1, 60); //Dinghy
	//(g_Vehicle[1552], 0);
	g_Vehicle[1553] = CreateVehicle(468, -655.3087, -1998.3327, 26.7546, 211.5583, -1, -1, 60); //Sanchez
	//(g_Vehicle[1553], 0);
	g_Vehicle[1554] = CreateVehicle(466, -841.4815, -2274.6650, 20.8199, 210.7536, -1, -1, 60); //Glendale
	//(g_Vehicle[1554], 0);
	g_Vehicle[1555] = CreateVehicle(466, -714.6011, -2547.3081, 50.9398, 128.7565, -1, -1, 60); //Glendale
	g_Vehicle[1556] = CreateVehicle(473, -485.8806, -2852.4318, -0.1372, 248.4978, -1, -1, 60); //Dinghy
	//(g_Vehicle[1556], 0);
	g_Vehicle[1557] = CreateVehicle(473, -196.7364, -2925.3259, 0.0006, 269.7705, -1, -1, 60); //Dinghy
	//(g_Vehicle[1557], 0);
	g_Vehicle[1558] = CreateVehicle(473, -237.4600, -1794.3875, -0.1057, 3.6693, -1, -1, 60); //Dinghy
	//(g_Vehicle[1558], 0);
	g_Vehicle[1559] = CreateVehicle(468, -271.2445, -1790.1850, 10.9364, 163.2745, -1, -1, 60); //Sanchez
	g_Vehicle[1560] = CreateVehicle(400, -379.1094, -2171.6398, 46.6781, 140.2350, -1, -1, 60); //Landstalker
	//(g_Vehicle[1560], 0);
	g_Vehicle[1561] = CreateVehicle(410, -1196.9538, -2364.4787, 18.5772, 236.2259, -1, -1, 60); //Manana
	//(g_Vehicle[1561], 0);
	g_Vehicle[1562] = CreateVehicle(532, -759.8405, -2458.4460, 72.6365, 319.4753, -1, -1, 60); //Combine
	//(g_Vehicle[1562], 0);
	g_Vehicle[1563] = CreateVehicle(400, -20.6879, -2498.1813, 36.7407, 122.2801, -1, -1, 60); //Landstalker
	g_Vehicle[1564] = CreateVehicle(400, -17.0690, -2520.2580, 36.7477, 213.8455, -1, -1, 60); //Landstalker
	//(g_Vehicle[1564], 0);
	g_Vehicle[1565] = CreateVehicle(410, -31.9095, -2493.5383, 36.3036, 194.0151, -1, -1, 60); //Manana
	//(g_Vehicle[1565], 0);
	g_Vehicle[1566] = CreateVehicle(599, -11.5139, -2512.1457, 36.8428, 121.2561, -1, -1, 60); //Police Ranger
	//(g_Vehicle[1566], 0);
	g_Vehicle[1567] = CreateVehicle(489, 20.0118, -2648.0332, 40.6164, 92.6500, -1, -1, 60); //Rancher
	g_Vehicle[1568] = CreateVehicle(489, -186.1632, -2516.2021, 31.3677, 342.0026, -1, -1, 60); //Rancher
	//(g_Vehicle[1568], 0);
	g_Vehicle[1569] = CreateVehicle(466, -384.6081, -2474.8984, 102.4779, 268.9366, -1, -1, 60); //Glendale
	//(g_Vehicle[1569], 0);
	g_Vehicle[1570] = CreateVehicle(466, -485.5411, -2688.4248, 152.3251, 102.3787, -1, -1, 60); //Glendale
	//(g_Vehicle[1570], 0);
	g_Vehicle[1571] = CreateVehicle(471, -765.0048, -2686.1196, 83.7727, 114.8460, -1, -1, 60); //Quad
	g_Vehicle[1572] = CreateVehicle(586, -1541.8570, -1342.7785, 50.5055, 14.3389, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1572], 0);
	g_Vehicle[1573] = CreateVehicle(586, -1029.8485, -638.6541, 31.5279, 93.4599, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1573], 0);
	g_Vehicle[1574] = CreateVehicle(586, -1006.8740, -674.1090, 31.5279, 275.2717, -1, -1, 60); //Wayfarer
	//(g_Vehicle[1574], 0);
	g_Vehicle[1575] = CreateVehicle(400, -983.5593, -641.0239, 32.1002, 271.1476, -1, -1, 60); //Landstalker
	g_Vehicle[1576] = CreateVehicle(400, -1006.5242, -623.0822, 32.1002, 90.1121, -1, -1, 60); //Landstalker
	//(g_Vehicle[1576], 0);
	g_Vehicle[1577] = CreateVehicle(483, -1030.8570, -658.6420, 32.0000, 90.1085, -1, -1, 60); //Camper
	//(g_Vehicle[1577], 0);
	g_Vehicle[1578] = CreateVehicle(531, -940.2722, -498.2120, 25.9274, 256.5564, -1, -1, 60); //Tractor
	//(g_Vehicle[1578], 0);
	g_Vehicle[1579] = CreateVehicle(531, -918.0817, -534.8812, 25.9174, 357.6101, -1, -1, 60); //Tractor
	g_Vehicle[1580] = CreateVehicle(532, -1140.0839, -991.7650, 130.1963, 86.3862, -1, -1, 60); //Combine
	//(g_Vehicle[1580], 0);
	g_Vehicle[1581] = CreateVehicle(532, -1164.6876, -1057.4521, 130.2021, 277.3219, -1, -1, 60); //Combine
	//(g_Vehicle[1581], 0);
	g_Vehicle[1582] = CreateVehicle(466, -1407.8011, -1165.6596, 103.0781, 151.5498, -1, -1, 60); //Glendale
	//(g_Vehicle[1582], 0);
	g_Vehicle[1583] = CreateVehicle(531, -1444.6822, -1496.3507, 101.7241, 183.6463, -1, -1, 60); //Tractor
	g_Vehicle[1584] = CreateVehicle(531, -1417.1289, -1534.5874, 101.7192, 184.5565, -1, -1, 60); //Tractor
	//(g_Vehicle[1584], 0);
	g_Vehicle[1585] = CreateVehicle(531, -1451.8494, -1456.9764, 101.7236, 175.8479, -1, -1, 60); //Tractor
	//(g_Vehicle[1585], 0);
	g_Vehicle[1586] = CreateVehicle(468, -219.3871, -906.6090, 40.6608, 186.4501, -1, -1, 60); //Sanchez
	//(g_Vehicle[1586], 0);
	g_Vehicle[1587] = CreateVehicle(471, -504.2121, -1660.6406, 10.6084, 43.9901, -1, -1, 60); //Quad
	g_Vehicle[1588] = CreateVehicle(468, -916.9661, -1459.5213, 122.9254, 13.1392, -1, -1, 60); //Sanchez
	//(g_Vehicle[1588], 0);
	g_Vehicle[1589] = CreateVehicle(468, -1071.7696, -1296.8829, 128.8867, 278.9760, -1, -1, 60); //Sanchez
	//(g_Vehicle[1589], 0);
	g_Vehicle[1590] = CreateVehicle(468, -1112.6062, -1671.9421, 76.0362, 359.7007, -1, -1, 60); //Sanchez
	//(g_Vehicle[1590], 0);
	g_Vehicle[1591] = CreateVehicle(532, -1058.2370, -1612.5803, 77.3616, 174.8907, -1, -1, 60); //Combine
	g_Vehicle[1592] = CreateVehicle(471, -1040.5019, -1662.9650, 77.5812, 217.8247, -1, -1, 60); //Quad
	//(g_Vehicle[1592], 0);
	g_Vehicle[1593] = CreateVehicle(471, -925.3804, -1439.3502, 125.5587, 24.4561, -1, -1, 60); //Quad
	//(g_Vehicle[1593], 0);
	g_Vehicle[1594] = CreateVehicle(531, -85.5814, -1608.7993, 2.7153, 300.0013, -1, -1, 60); //Tractor
	//(g_Vehicle[1594], 0);
	g_Vehicle[1595] = CreateVehicle(403, -47.9697, -1570.7785, 3.2227, 152.9309, -1, -1, 60); //Linerunner
	g_Vehicle[1596] = CreateVehicle(400, -93.0630, -1194.6671, 2.3429, 344.3190, -1, -1, 60); //Landstalker
	//(g_Vehicle[1596], 0);
	g_Vehicle[1597] = CreateVehicle(422, -81.0025, -1198.4222, 2.2848, 345.3638, -1, -1, 60); //Bobcat
	//(g_Vehicle[1597], 0);
	g_Vehicle[1598] = CreateVehicle(487, -2227.7431, 2327.1259, 7.7581, 178.6620, -1, -1, 60); //Maverick
	//(g_Vehicle[1598], 0);
	g_Vehicle[1599] = CreateVehicle(400, -2272.3713, 2285.2504, 4.9223, 270.0000, -1, -1, 60); //Landstalker
	g_Vehicle[1600] = CreateVehicle(400, -2251.1696, 2284.9853, 4.9106, 91.8943, -1, -1, 60); //Landstalker
	//(g_Vehicle[1600], 0);
	g_Vehicle[1601] = CreateVehicle(418, -2251.1718, 2290.9372, 4.9095, 270.3710, -1, -1, 60); //Moonbeam
	//(g_Vehicle[1601], 0);
	g_Vehicle[1602] = CreateVehicle(587, -2272.0285, 2300.4328, 4.5462, 89.7395, -1, -1, 60); //Euros
	//(g_Vehicle[1602], 0);
	g_Vehicle[1603] = CreateVehicle(581, -2184.2810, 2418.5031, 4.6261, 225.5440, -1, -1, 60); //BF-400
	g_Vehicle[1604] = CreateVehicle(484, -2227.5676, 2446.2382, 0.2238, 229.2436, -1, -1, 60); //Marquis
	//(g_Vehicle[1604], 0);
	g_Vehicle[1605] = CreateVehicle(454, -2323.5996, 2492.2419, -0.0163, 230.2642, -1, -1, 60); //Tropic
	//(g_Vehicle[1605], 0);
	g_Vehicle[1606] = CreateVehicle(454, -2238.8278, 2533.3969, 0.0676, 228.0608, -1, -1, 60); //Tropic
	//(g_Vehicle[1606], 0);
	g_Vehicle[1607] = CreateVehicle(454, -2235.0234, 2394.8408, 0.2048, 225.3403, -1, -1, 60); //Tropic
	g_Vehicle[1608] = CreateVehicle(484, -2222.4343, 2399.7363, 0.3907, 47.6966, -1, -1, 60); //Marquis
	//(g_Vehicle[1608], 0);
	g_Vehicle[1609] = CreateVehicle(484, -2211.9018, 2412.5371, 0.3222, 45.0241, -1, -1, 60); //Marquis
	//(g_Vehicle[1609], 0);
	g_Vehicle[1610] = CreateVehicle(484, -2035.5737, 2337.9326, 0.3637, 93.8939, -1, -1, 60); //Marquis
	//(g_Vehicle[1610], 0);
	g_Vehicle[1611] = CreateVehicle(460, -2044.7675, 2348.1140, 1.5707, 85.2721, -1, -1, 60); //Skimmer
	g_Vehicle[1612] = CreateVehicle(492, -2351.7927, 2438.0439, 7.5215, 326.6075, -1, -1, 60); //Greenwood
	//(g_Vehicle[1612], 0);
	g_Vehicle[1613] = CreateVehicle(484, -2319.6972, 2297.0566, 0.1447, 177.2915, -1, -1, 60); //Marquis
	//(g_Vehicle[1613], 0);
	g_Vehicle[1614] = CreateVehicle(524, -2380.8869, 2370.3657, 4.4517, 109.2158, -1, -1, 60); //Cement Truck
	//(g_Vehicle[1614], 0);
	g_Vehicle[1615] = CreateVehicle(525, -2451.8999, 2302.0273, 4.8565, 90.9254, -1, -1, 60); //Tow Truck
	g_Vehicle[1616] = CreateVehicle(541, -2621.1914, 2250.5888, 8.0296, 183.8325, -1, -1, 60); //Bullet
	//(g_Vehicle[1616], 0);
	g_Vehicle[1617] = CreateVehicle(541, -2616.7475, 2250.0974, 7.8063, 184.5471, -1, -1, 60); //Bullet
	//(g_Vehicle[1617], 0);
	g_Vehicle[1618] = CreateVehicle(554, -2609.3669, 2251.1684, 8.2938, 182.2680, -1, -1, 60); //Yosemite
	//(g_Vehicle[1618], 0);
	g_Vehicle[1619] = CreateVehicle(446, -2597.6831, 2231.7883, -0.5205, 262.0585, -1, -1, 60); //Squalo
	g_Vehicle[1620] = CreateVehicle(581, -2632.2297, 2299.0673, 8.0274, 266.4472, -1, -1, 60); //BF-400
	//(g_Vehicle[1620], 0);
	g_Vehicle[1621] = CreateVehicle(587, -2500.2226, 2326.0214, 4.6304, 267.2315, -1, -1, 60); //Euros
	//(g_Vehicle[1621], 0);
	g_Vehicle[1622] = CreateVehicle(409, -2492.2182, 2410.7954, 16.2327, 29.6429, -1, -1, 60); //Stretch
	//(g_Vehicle[1622], 0);
	g_Vehicle[1623] = CreateVehicle(581, -2635.7233, 2423.7802, 13.5264, 165.2140, -1, -1, 60); //BF-400
	g_Vehicle[1624] = CreateVehicle(419, -2472.6232, 2490.2595, 17.5855, 1.8417, -1, -1, 60); //Esperanto
	//(g_Vehicle[1624], 0);
	g_Vehicle[1625] = CreateVehicle(419, -2455.7502, 2489.7153, 16.0494, 2.9790, -1, -1, 60); //Esperanto
	//(g_Vehicle[1625], 0);
	g_Vehicle[1626] = CreateVehicle(400, -2471.6484, 2511.5083, 17.8419, 178.3648, -1, -1, 60); //Landstalker
	//(g_Vehicle[1626], 0);
	g_Vehicle[1627] = CreateVehicle(421, -2377.9494, 2410.4936, 8.1697, 324.3595, -1, -1, 60); //Washington
	g_Vehicle[1628] = CreateVehicle(493, -2417.5187, 2297.3801, -0.1380, 265.4497, -1, -1, 60); //Jetmax
	//(g_Vehicle[1628], 0);
	g_Vehicle[1629] = CreateVehicle(493, -2417.7243, 2291.5913, -0.2166, 266.5733, -1, -1, 60); //Jetmax
	//(g_Vehicle[1629], 0);
	g_Vehicle[1630] = CreateVehicle(493, -2418.0993, 2286.5983, 0.1419, 268.6933, -1, -1, 60); //Jetmax
	//(g_Vehicle[1630], 0);
	g_Vehicle[1631] = CreateVehicle(587, -2426.7016, 2346.5629, 5.0735, 282.6105, -1, -1, 60); //Euros
	g_Vehicle[1632] = CreateVehicle(587, -2446.9213, 2224.6203, 4.6071, 179.3379, -1, -1, 60); //Euros
	//(g_Vehicle[1632], 0);
	g_Vehicle[1633] = CreateVehicle(496, -2440.6040, 2224.3320, 4.5602, 179.5986, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1633], 0);
	g_Vehicle[1634] = CreateVehicle(480, -2470.7988, 2224.3967, 4.6180, 180.6732, -1, -1, 60); //Comet
	//(g_Vehicle[1634], 0);
	g_Vehicle[1635] = CreateVehicle(477, -2482.4892, 2224.7783, 4.5954, 179.0413, -1, -1, 60); //ZR3 50
	g_Vehicle[1636] = CreateVehicle(530, -2509.7058, 2369.0825, 4.7508, 179.0874, -1, -1, 60); //Forklift
	//(g_Vehicle[1636], 0);
	g_Vehicle[1637] = CreateVehicle(473, -1374.8508, 2116.4689, 40.4057, 319.3677, -1, -1, 60); //Dinghy
	//(g_Vehicle[1637], 0);
	g_Vehicle[1638] = CreateVehicle(473, -1366.9722, 2106.8796, 40.2918, 315.0820, -1, -1, 60); //Dinghy
	//(g_Vehicle[1638], 0);
	g_Vehicle[1639] = CreateVehicle(573, -1804.4702, 2045.1580, 9.6246, 294.1870, -1, -1, 60); //Duneride
	g_Vehicle[1640] = CreateVehicle(468, -1824.8999, 2035.1219, 8.3037, 212.8330, -1, -1, 60); //Sanchez
	//(g_Vehicle[1640], 0);
	g_Vehicle[1641] = CreateVehicle(453, -1854.5021, 2098.8430, -0.2038, 102.5432, -1, -1, 60); //Reefer
	//(g_Vehicle[1641], 0);
	g_Vehicle[1642] = CreateVehicle(453, -1860.6494, 2115.2980, -0.3291, 107.9941, -1, -1, 60); //Reefer
	//(g_Vehicle[1642], 0);
	g_Vehicle[1643] = CreateVehicle(453, -1869.9405, 2128.6623, -0.2784, 113.4105, -1, -1, 60); //Reefer
	g_Vehicle[1644] = CreateVehicle(444, -1871.3125, 2166.4582, 4.9119, 130.7895, -1, -1, 60); //Monster
	//(g_Vehicle[1644], 0);
	g_Vehicle[1645] = CreateVehicle(444, -1877.4138, 2173.9582, 4.4635, 128.7792, -1, -1, 60); //Monster
	//(g_Vehicle[1645], 0);
	g_Vehicle[1646] = CreateVehicle(445, -1940.1118, 2393.2587, 49.3671, 291.4924, -1, -1, 60); //Admiral
	//(g_Vehicle[1646], 0);
	g_Vehicle[1647] = CreateVehicle(482, -1934.0543, 2377.3718, 49.6189, 290.8992, -1, -1, 60); //Burrito
	g_Vehicle[1648] = CreateVehicle(482, -865.7495, 1541.4736, 22.7940, 89.7060, -1, -1, 60); //Burrito
	//(g_Vehicle[1648], 0);
	g_Vehicle[1649] = CreateVehicle(602, -865.9514, 1547.8239, 23.0657, 268.7398, -1, -1, 60); //Alpha
	//(g_Vehicle[1649], 0);
	g_Vehicle[1650] = CreateVehicle(602, -866.0584, 1563.5151, 24.3647, 269.9844, -1, -1, 60); //Alpha
	//(g_Vehicle[1650], 0);
	g_Vehicle[1651] = CreateVehicle(420, -866.0000, 1557.1431, 23.8369, 269.2510, -1, -1, 60); //Taxi
	g_Vehicle[1652] = CreateVehicle(400, -904.0692, 1546.9365, 26.0011, 270.6434, -1, -1, 60); //Landstalker
	//(g_Vehicle[1652], 0);
	g_Vehicle[1653] = CreateVehicle(400, -880.8665, 1518.9014, 26.0063, 84.4363, -1, -1, 60); //Landstalker
	//(g_Vehicle[1653], 0);
	g_Vehicle[1654] = CreateVehicle(552, -837.0482, 1528.4155, 21.4272, 356.9085, -1, -1, 60); //Utility
	//(g_Vehicle[1654], 0);
	g_Vehicle[1655] = CreateVehicle(428, -836.9630, 1518.5032, 20.9587, 356.9584, -1, -1, 60); //Securicar
	g_Vehicle[1656] = CreateVehicle(522, -855.4826, 1529.1182, 22.1490, 175.2427, -1, -1, 60); //NRG-500
	//(g_Vehicle[1656], 0);
	g_Vehicle[1657] = CreateVehicle(522, -854.3848, 1528.8516, 21.8309, 177.4947, -1, -1, 60); //NRG-500
	//(g_Vehicle[1657], 0);
	g_Vehicle[1658] = CreateVehicle(508, -763.8516, 1643.9420, 27.8381, 359.3427, -1, -1, 60); //Journey
	//(g_Vehicle[1658], 0);
	g_Vehicle[1659] = CreateVehicle(508, -759.1082, 1643.9676, 27.7560, 357.9964, -1, -1, 60); //Journey
	g_Vehicle[1660] = CreateVehicle(508, -753.8820, 1643.4702, 27.6587, 357.3247, -1, -1, 60); //Journey
	//(g_Vehicle[1660], 0);
	g_Vehicle[1661] = CreateVehicle(508, -779.0374, 1557.9279, 27.1835, 359.2579, -1, -1, 60); //Journey
	//(g_Vehicle[1661], 0);
	g_Vehicle[1662] = CreateVehicle(495, -771.3682, 1431.5581, 14.1421, 91.6765, -1, -1, 60); //Sandking
	//(g_Vehicle[1662], 0);
	g_Vehicle[1663] = CreateVehicle(495, -771.4456, 1436.7624, 14.1394, 89.8264, -1, -1, 60); //Sandking
	g_Vehicle[1664] = CreateVehicle(554, -772.0689, 1443.1457, 13.8807, 91.3203, -1, -1, 60); //Yosemite
	//(g_Vehicle[1664], 0);
	g_Vehicle[1665] = CreateVehicle(554, -771.5673, 1486.2036, 24.4291, 89.6568, -1, -1, 60); //Yosemite
	//(g_Vehicle[1665], 0);
	g_Vehicle[1666] = CreateVehicle(508, -720.9415, 1438.1918, 18.8516, 358.8136, -1, -1, 60); //Journey
	//(g_Vehicle[1666], 0);
	g_Vehicle[1667] = CreateVehicle(483, -685.9805, 1444.2805, 17.2556, 358.8250, -1, -1, 60); //Camper
	g_Vehicle[1668] = CreateVehicle(452, -859.7169, 1383.5662, -0.4431, 255.0146, -1, -1, 60); //Speeder
	//(g_Vehicle[1668], 0);
	g_Vehicle[1669] = CreateVehicle(525, -967.3430, 1322.6412, 39.9578, 290.9067, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1669], 0);
	g_Vehicle[1670] = CreateVehicle(525, -1202.8786, 1677.6721, 20.1641, 63.4199, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1670], 0);
	g_Vehicle[1671] = CreateVehicle(525, -1492.0198, 1877.8155, 32.5073, 3.4296, -1, -1, 60); //Tow Truck
	g_Vehicle[1672] = CreateVehicle(554, -1485.6687, 1877.9528, 32.7206, 2.7032, -1, -1, 60); //Yosemite
	//(g_Vehicle[1672], 0);
	g_Vehicle[1673] = CreateVehicle(522, -1460.4990, 1871.0664, 32.2060, 3.0443, -1, -1, 60); //NRG-500
	//(g_Vehicle[1673], 0);
	g_Vehicle[1674] = CreateVehicle(522, -1459.1002, 1871.1022, 32.1945, 6.0306, -1, -1, 60); //NRG-500
	//(g_Vehicle[1674], 0);
	g_Vehicle[1675] = CreateVehicle(522, -1457.7523, 1871.1092, 32.1941, 8.4307, -1, -1, 60); //NRG-500
	g_Vehicle[1676] = CreateVehicle(420, -1450.4544, 1870.4368, 32.4110, 2.9921, -1, -1, 60); //Taxi
	//(g_Vehicle[1676], 0);
	g_Vehicle[1677] = CreateVehicle(525, -1766.5352, 1882.8725, 17.5407, 198.3128, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1677], 0);
	g_Vehicle[1678] = CreateVehicle(525, -837.5615, 813.0667, 18.5289, 199.0021, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1678], 0);
	g_Vehicle[1679] = CreateVehicle(421, -680.4998, 948.1251, 12.0151, 36.5625, -1, -1, 60); //Washington
	g_Vehicle[1680] = CreateVehicle(444, -669.6080, 945.8577, 12.5040, 89.2779, -1, -1, 60); //Monster
	//(g_Vehicle[1680], 0);
	g_Vehicle[1681] = CreateVehicle(444, -669.8880, 950.3906, 12.5040, 92.0677, -1, -1, 60); //Monster
	//(g_Vehicle[1681], 0);
	g_Vehicle[1682] = CreateVehicle(444, -669.9730, 955.0540, 12.5040, 91.0208, -1, -1, 60); //Monster
	//(g_Vehicle[1682], 0);
	g_Vehicle[1683] = CreateVehicle(545, -710.5756, 939.2570, 12.2112, 182.5872, -1, -1, 60); //Hustler
	g_Vehicle[1684] = CreateVehicle(572, -666.9448, 962.4420, 11.7128, 180.1996, -1, -1, 60); //Mower
	//(g_Vehicle[1684], 0);
	g_Vehicle[1685] = CreateVehicle(473, -792.8610, 937.9166, 0.1685, 121.3300, -1, -1, 60); //Dinghy
	//(g_Vehicle[1685], 0);
	g_Vehicle[1686] = CreateVehicle(472, -615.6751, 1807.6965, 0.1010, 81.7139, -1, -1, 60); //Coastguard
	//(g_Vehicle[1686], 0);
	g_Vehicle[1687] = CreateVehicle(473, -527.8142, 1634.6472, -0.2518, 232.0554, -1, -1, 60); //Dinghy
	g_Vehicle[1688] = CreateVehicle(468, -1044.5810, 1559.1264, 32.8484, 222.2500, -1, -1, 60); //Sanchez
	//(g_Vehicle[1688], 0);
	g_Vehicle[1689] = CreateVehicle(462, -1214.5260, 1841.3583, 41.3185, 264.4565, -1, -1, 60); //Faggio
	//(g_Vehicle[1689], 0);
	g_Vehicle[1690] = CreateVehicle(482, -1203.9337, 1813.2630, 41.8329, 44.3244, -1, -1, 60); //Burrito
	//(g_Vehicle[1690], 0);
	g_Vehicle[1691] = CreateVehicle(568, -1295.9022, 2496.5747, 86.8473, 198.8607, -1, -1, 60); //Bandito
	g_Vehicle[1692] = CreateVehicle(568, -1506.3028, 1966.6508, 48.2420, 293.1870, -1, -1, 60); //Bandito
	//(g_Vehicle[1692], 0);
	g_Vehicle[1693] = CreateVehicle(510, -767.7841, 1103.9338, 44.4799, 321.7752, -1, -1, 60); //Mountain Bike
	//(g_Vehicle[1693], 0);
	g_Vehicle[1694] = CreateVehicle(466, 287.4403, -53.5150, 1.3216, 180.3742, -1, -1, 60); //Glendale
	//(g_Vehicle[1694], 0);
	g_Vehicle[1695] = CreateVehicle(422, 109.2890, -150.6062, 1.7834, 182.5753, -1, -1, 60); //Bobcat
	g_Vehicle[1696] = CreateVehicle(498, -196.8096, -232.7299, 1.4901, 90.5921, -1, -1, 60); //Boxville
	//(g_Vehicle[1696], 0);
	g_Vehicle[1697] = CreateVehicle(403, -199.9956, -285.4143, 2.0350, 90.5923, -1, -1, 60); //Linerunner
	//(g_Vehicle[1697], 0);
	g_Vehicle[1698] = CreateVehicle(403, -200.2189, -275.2890, 2.0383, 91.6567, -1, -1, 60); //Linerunner
	//(g_Vehicle[1698], 0);
	g_Vehicle[1699] = CreateVehicle(578, -194.7877, -196.3294, 2.0529, 257.8565, -1, -1, 60); //DFT-30
	g_Vehicle[1700] = CreateVehicle(422, -169.0729, -202.1835, 1.4063, 257.8461, -1, -1, 60); //Bobcat
	//(g_Vehicle[1700], 0);
	g_Vehicle[1701] = CreateVehicle(402, -39.7196, -377.4630, 5.2613, 180.2380, -1, -1, 60); //Buffalo
	//(g_Vehicle[1701], 0);
	g_Vehicle[1702] = CreateVehicle(566, -9.5253, -377.6481, 5.2111, 178.0852, -1, -1, 60); //Tahoma
	//(g_Vehicle[1702], 0);
	g_Vehicle[1703] = CreateVehicle(529, -0.4524, -353.8909, 5.0620, 269.4471, -1, -1, 60); //Willard
	g_Vehicle[1704] = CreateVehicle(603, -62.5941, -324.9349, 5.2677, 90.3766, -1, -1, 60); //Phoenix
	//(g_Vehicle[1704], 0);
	g_Vehicle[1705] = CreateVehicle(401, 179.2976, -310.8240, 1.3518, 207.7474, -1, -1, 60); //Bravura
	//(g_Vehicle[1705], 0);
	g_Vehicle[1706] = CreateVehicle(445, 319.0325, -126.0533, 2.0655, 90.7404, -1, -1, 60); //Admiral
	//(g_Vehicle[1706], 0);
	g_Vehicle[1707] = CreateVehicle(440, 329.5296, -52.3254, 1.6188, 177.8881, -1, -1, 60); //Rumpo
	g_Vehicle[1708] = CreateVehicle(458, 319.1394, -84.5798, 2.0518, 91.7452, -1, -1, 60); //Solair
	//(g_Vehicle[1708], 0);
	g_Vehicle[1709] = CreateVehicle(467, 218.0326, -178.1497, 1.3181, 270.4042, -1, -1, 60); //Oceanic
	//(g_Vehicle[1709], 0);
	g_Vehicle[1710] = CreateVehicle(475, 218.7911, -173.3128, 1.3817, 270.2327, -1, -1, 60); //Sabre
	//(g_Vehicle[1710], 0);
	g_Vehicle[1711] = CreateVehicle(489, 244.8728, -148.5339, 1.7216, 88.8349, -1, -1, 60); //Rancher
	g_Vehicle[1712] = CreateVehicle(492, 247.1553, -129.2906, 2.0627, 90.8534, -1, -1, 60); //Greenwood
	//(g_Vehicle[1712], 0);
	g_Vehicle[1713] = CreateVehicle(498, 176.3294, -7.4976, 1.6480, 180.2088, -1, -1, 60); //Boxville
	//(g_Vehicle[1713], 0);
	g_Vehicle[1714] = CreateVehicle(439, 278.4607, -54.8498, 1.4739, 359.8853, -1, -1, 60); //Stallion
	//(g_Vehicle[1714], 0);
	g_Vehicle[1715] = CreateVehicle(475, 320.5599, -253.1714, 1.3885, 176.4384, -1, -1, 60); //Sabre
	g_Vehicle[1716] = CreateVehicle(524, 312.2955, -251.1325, 2.5129, 175.4649, -1, -1, 60); //Cement Truck
	//(g_Vehicle[1716], 0);
	g_Vehicle[1717] = CreateVehicle(527, 235.0122, -300.2692, 1.2936, 2.3085, -1, -1, 60); //Cadrona
	//(g_Vehicle[1717], 0);
	g_Vehicle[1718] = CreateVehicle(536, 213.0003, -244.5480, 1.3202, 272.8866, -1, -1, 60); //Blade
	//(g_Vehicle[1718], 0);
	g_Vehicle[1719] = CreateVehicle(531, 1077.2227, -288.7219, 73.9531, 358.7784, -1, -1, 60); //Tractor
	g_Vehicle[1720] = CreateVehicle(422, 1112.7650, -306.5776, 73.9654, 267.5964, -1, -1, 60); //Bobcat
	//(g_Vehicle[1720], 0);
	g_Vehicle[1721] = CreateVehicle(531, 1067.0961, -288.6842, 73.9569, 2.3921, -1, -1, 60); //Tractor
	//(g_Vehicle[1721], 0);
	g_Vehicle[1722] = CreateVehicle(599, 622.2626, -610.1339, 17.3153, 270.2242, -1, -1, 60); //Police Ranger
	//(g_Vehicle[1722], 0);
	g_Vehicle[1723] = CreateVehicle(599, 622.2755, -606.0399, 17.3059, 269.8338, -1, -1, 60); //Police Ranger
	g_Vehicle[1724] = CreateVehicle(585, 707.2459, -461.4757, 15.9223, 269.7681, -1, -1, 60); //Emperor
	//(g_Vehicle[1724], 0);
	g_Vehicle[1725] = CreateVehicle(500, 667.6416, -461.4851, 16.4435, 268.6326, -1, -1, 60); //Mesa
	//(g_Vehicle[1725], 0);
	g_Vehicle[1726] = CreateVehicle(461, 669.1239, -471.0320, 15.9138, 270.8030, -1, -1, 60); //PCJ-600
	//(g_Vehicle[1726], 0);
	g_Vehicle[1727] = CreateVehicle(542, 668.1328, -546.3010, 16.0793, 269.8266, -1, -1, 60); //Clover
	g_Vehicle[1728] = CreateVehicle(522, 753.7540, -586.7283, 16.9004, 181.3294, -1, -1, 60); //NRG-500
	//(g_Vehicle[1728], 0);
	g_Vehicle[1729] = CreateVehicle(549, 748.6428, -581.7985, 16.9130, 269.3826, -1, -1, 60); //Tampa
	//(g_Vehicle[1729], 0);
	g_Vehicle[1730] = CreateVehicle(429, 763.1588, -509.2890, 16.8661, 180.4317, -1, -1, 60); //Banshee
	//(g_Vehicle[1730], 0);
	g_Vehicle[1731] = CreateVehicle(547, 786.0645, -498.4352, 17.0708, 3.0964, -1, -1, 60); //Primo
	g_Vehicle[1732] = CreateVehicle(456, 797.4796, -607.9578, 16.5111, 0.4181, -1, -1, 60); //Yankee
	//(g_Vehicle[1732], 0);
	g_Vehicle[1733] = CreateVehicle(554, 751.6055, -553.2161, 17.3698, 180.8740, -1, -1, 60); //Yosemite
	//(g_Vehicle[1733], 0);
	g_Vehicle[1734] = CreateVehicle(445, 1396.5654, 395.3847, 19.6326, 66.5843, -1, -1, 60); //Admiral
	//(g_Vehicle[1734], 0);
	g_Vehicle[1735] = CreateVehicle(559, 1404.2180, 411.9714, 19.4141, 67.1747, -1, -1, 60); //Jester
	g_Vehicle[1736] = CreateVehicle(580, 768.8480, 348.3186, 19.7427, 190.0995, -1, -1, 60); //Stafford
	//(g_Vehicle[1736], 0);
	g_Vehicle[1737] = CreateVehicle(473, 2103.2500, -98.4897, -0.2213, 122.9253, -1, -1, 60); //Dinghy
	//(g_Vehicle[1737], 0);
	g_Vehicle[1738] = CreateVehicle(473, 2108.5275, -106.2101, -0.2393, 122.9440, -1, -1, 60); //Dinghy
	//(g_Vehicle[1738], 0);
	g_Vehicle[1739] = CreateVehicle(448, 2323.3232, 63.0302, 26.0883, 265.2745, -1, -1, 60); //Pizzaboy
	g_Vehicle[1740] = CreateVehicle(439, 2358.1835, -62.4556, 27.3645, 179.8343, -1, -1, 60); //Stallion
	//(g_Vehicle[1740], 0);
	g_Vehicle[1741] = CreateVehicle(436, 2443.9980, -47.9165, 26.9962, 179.6730, -1, -1, 60); //Previon
	//(g_Vehicle[1741], 0);
	g_Vehicle[1742] = CreateVehicle(436, 2503.7507, 125.9337, 26.2434, 1.0102, -1, -1, 60); //Previon
	//(g_Vehicle[1742], 0);
	g_Vehicle[1743] = CreateVehicle(419, 2493.9169, 95.9779, 26.2805, 179.8298, -1, -1, 60); //Esperanto
	g_Vehicle[1744] = CreateVehicle(412, 2549.9116, 81.1801, 26.3143, 270.4565, -1, -1, 60); //Voodoo
	//(g_Vehicle[1744], 0);
	g_Vehicle[1745] = CreateVehicle(410, 2551.1191, 9.4252, 26.6690, 270.6199, -1, -1, 60); //Manana
	//(g_Vehicle[1745], 0);
	g_Vehicle[1746] = CreateVehicle(508, 2502.7741, 6.0906, 27.5811, 2.9588, -1, -1, 60); //Journey
	//(g_Vehicle[1746], 0);
	g_Vehicle[1747] = CreateVehicle(505, 2380.9570, 37.7924, 27.1163, 89.9017, -1, -1, 60); //Rancher
	g_Vehicle[1748] = CreateVehicle(500, 2211.6928, -88.3423, 26.9027, 88.7286, -1, -1, 60); //Mesa
	//(g_Vehicle[1748], 0);
	g_Vehicle[1749] = CreateVehicle(496, 2263.8969, -82.7568, 26.2451, 1.1014, -1, -1, 60); //Blista Compact
	//(g_Vehicle[1749], 0);
	g_Vehicle[1750] = CreateVehicle(492, 2257.5104, -83.1763, 26.3073, 359.2124, -1, -1, 60); //Greenwood
	//(g_Vehicle[1750], 0);
	g_Vehicle[1751] = CreateVehicle(405, 2290.2622, 155.5207, 26.9787, 0.1089, -1, -1, 60); //Sentinel
	g_Vehicle[1752] = CreateVehicle(532, 1996.7519, 175.8992, 31.3614, 79.7076, -1, -1, 60); //Combine
	//(g_Vehicle[1752], 0);
	g_Vehicle[1753] = CreateVehicle(532, 1914.0113, 192.1062, 36.0154, 358.2131, -1, -1, 60); //Combine
	//(g_Vehicle[1753], 0);
	g_Vehicle[1754] = CreateVehicle(478, 1905.3486, 174.1228, 37.1748, 341.5606, -1, -1, 60); //Walton
	//(g_Vehicle[1754], 0);
	g_Vehicle[1755] = CreateVehicle(549, 1240.2758, 214.9924, 19.2518, 243.7369, -1, -1, 60); //Tampa
	g_Vehicle[1756] = CreateVehicle(550, 1367.7468, 365.9338, 20.3661, 246.2637, -1, -1, 60); //Sunrise
	//(g_Vehicle[1756], 0);
	g_Vehicle[1757] = CreateVehicle(547, 1289.3825, 339.9177, 19.2903, 247.1900, -1, -1, 60); //Primo
	//(g_Vehicle[1757], 0);
	g_Vehicle[1758] = CreateVehicle(536, 1231.7341, 295.6075, 19.2922, 336.8392, -1, -1, 60); //Blade
	//(g_Vehicle[1758], 0);
	g_Vehicle[1759] = CreateVehicle(455, -580.8630, -64.8466, 65.3631, 3.7867, -1, -1, 60); //Flatbed
	g_Vehicle[1760] = CreateVehicle(468, -543.4542, -180.5744, 78.0749, 4.1579, -1, -1, 60); //Sanchez
	//(g_Vehicle[1760], 0);
	g_Vehicle[1761] = CreateVehicle(468, -541.5283, -180.6667, 78.0746, 0.2240, -1, -1, 60); //Sanchez
	//(g_Vehicle[1761], 0);
	g_Vehicle[1762] = CreateVehicle(471, -774.8654, -115.3843, 64.6716, 24.2185, -1, -1, 60); //Quad
	//(g_Vehicle[1762], 0);
	g_Vehicle[1763] = CreateVehicle(471, -771.7145, -113.4644, 64.8308, 26.8405, -1, -1, 60); //Quad
	g_Vehicle[1764] = CreateVehicle(532, -273.9301, -41.3983, 3.4405, 339.6637, -1, -1, 60); //Combine
	//(g_Vehicle[1764], 0);
	g_Vehicle[1765] = CreateVehicle(532, -127.1731, 55.7261, 4.0942, 158.3291, -1, -1, 60); //Combine
	//(g_Vehicle[1765], 0);
	g_Vehicle[1766] = CreateVehicle(478, -137.3238, -48.9942, 3.1078, 342.2243, -1, -1, 60); //Walton
	//(g_Vehicle[1766], 0);
	g_Vehicle[1767] = CreateVehicle(475, 1368.2946, 476.2749, 19.9363, 335.9671, -1, -1, 60); //Sabre
	g_Vehicle[1768] = CreateVehicle(475, 2331.3063, 133.1183, 26.7203, 270.6835, -1, -1, 60); //Sabre
	//(g_Vehicle[1768], 0);
	g_Vehicle[1769] = CreateVehicle(482, 2308.6682, -74.7183, 26.5995, 89.9092, -1, -1, 60); //Burrito
	//(g_Vehicle[1769], 0);
	g_Vehicle[1770] = CreateVehicle(468, 2208.6223, 110.5542, 27.0100, 275.3439, -1, -1, 60); //Sanchez
	//(g_Vehicle[1770], 0);
	g_Vehicle[1771] = CreateVehicle(471, 1923.8338, 147.8247, 36.7281, 93.4718, -1, -1, 60); //Quad
	g_Vehicle[1772] = CreateVehicle(415, 1586.3273, 38.5555, 24.6067, 272.3959, -1, -1, 60); //Cheetah
	//(g_Vehicle[1772], 0);
	g_Vehicle[1773] = CreateVehicle(468, 1547.5861, 10.6920, 23.7738, 265.3786, -1, -1, 60); //Sanchez
	//(g_Vehicle[1773], 0);
	g_Vehicle[1774] = CreateVehicle(402, 889.0991, -21.7845, 63.1124, 152.4678, -1, -1, 60); //Buffalo
	//(g_Vehicle[1774], 0);
	g_Vehicle[1775] = CreateVehicle(403, 1207.5240, 189.3296, 20.9521, 334.8106, -1, -1, 60); //Linerunner
	g_Vehicle[1776] = CreateVehicle(416, 1249.8206, 338.2164, 19.6291, 66.7975, -1, -1, 60); //Ambulance
	//(g_Vehicle[1776], 0);
	g_Vehicle[1777] = CreateVehicle(482, 1335.0803, 284.7403, 19.6860, 243.0010, -1, -1, 60); //Burrito
	//(g_Vehicle[1777], 0);
	g_Vehicle[1778] = CreateVehicle(468, 1414.2615, 248.6772, 19.2238, 65.7798, -1, -1, 60); //Sanchez
	//(g_Vehicle[1778], 0);
	g_Vehicle[1779] = CreateVehicle(475, 751.2299, 277.2576, 27.1364, 199.6289, -1, -1, 60); //Sabre
	g_Vehicle[1780] = CreateVehicle(468, 747.8585, 346.7843, 20.1558, 209.1134, -1, -1, 60); //Sanchez
	//(g_Vehicle[1780], 0);
	g_Vehicle[1781] = CreateVehicle(403, 221.6419, 30.1998, 3.1849, 186.4463, -1, -1, 60); //Linerunner
	//(g_Vehicle[1781], 0);
	g_Vehicle[1782] = CreateVehicle(525, 157.2516, -166.2276, 1.4527, 90.9328, -1, -1, 60); //Tow Truck
	//(g_Vehicle[1782], 0);
	g_Vehicle[1783] = CreateVehicle(532, 20.7658, 24.6322, 4.0942, 340.4432, -1, -1, 60); //Combine
	g_Vehicle[1784] = CreateVehicle(532, -6.4191, -11.1534, 4.0939, 163.1181, -1, -1, 60); //Combine
	//(g_Vehicle[1784], 0);
	g_Vehicle[1785] = CreateVehicle(460, -332.7806, -467.6666, 1.6828, 228.5234, -1, -1, 60); //Skimmer
	//(g_Vehicle[1785], 0);
	g_Vehicle[1786] = CreateVehicle(403, -564.8430, -473.1026, 26.1266, 178.3204, -1, -1, 60); //Linerunner
	//(g_Vehicle[1786], 0);
	g_Vehicle[1787] = CreateVehicle(415, -535.2667, -488.2196, 25.2957, 358.2052, -1, -1, 60); //Cheetah
	g_Vehicle[1788] = CreateVehicle(479, -499.9451, -472.3691, 25.3183, 178.8489, -1, -1, 60); //Regina
	//(g_Vehicle[1788], 0);
	g_Vehicle[1789] = CreateVehicle(482, -480.4370, -486.2536, 25.6331, 177.1058, -1, -1, 60); //Burrito
	//(g_Vehicle[1789], 0);

	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}


