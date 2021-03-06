local level = {}

level.levelname = "Birthing Place"
level.blocks = {{['y'] = -2624,['x'] = 1536,['height'] = 448,['type'] = 'dirt',['width'] = 640},
[2] = {['permeable'] = true,['y'] = 64,['x'] = -2112,['height'] = 128,['type'] = 'water',['width'] = 192},
[3] = {['permeable'] = true,['y'] = 0,['x'] = -2240,['height'] = 192,['type'] = 'water',['width'] = 128},
[4] = {['permeable'] = true,['y'] = 0,['x'] = -2112,['height'] = 64,['type'] = 'water',['width'] = 320},
[5] = {['permeable'] = true,['y'] = 64,['x'] = -1920,['height'] = 192,['type'] = 'water',['width'] = 128},
[6] = {['permeable'] = true,['y'] = 256,['x'] = -1920,['height'] = 64,['type'] = 'water',['width'] = 192},
[7] = {['permeable'] = true,['y'] = 0,['x'] = -1792,['height'] = 128,['type'] = 'water',['width'] = 128},
[8] = {['permeable'] = true,['y'] = 128,['x'] = -1792,['height'] = 128,['type'] = 'water',['width'] = 128},
[9] = {['permeable'] = true,['y'] = 0,['x'] = -1664,['height'] = 128,['type'] = 'water',['width'] = 256},
[10] = {['permeable'] = true,['y'] = 128,['x'] = -1664,['height'] = 128,['type'] = 'water',['width'] = 256},
[11] = {['permeable'] = true,['y'] = 0,['x'] = -1408,['height'] = 64,['type'] = 'water',['width'] = 256},
[12] = {['permeable'] = true,['y'] = 0,['x'] = -1152,['height'] = 64,['type'] = 'water',['width'] = 256},
[13] = {['permeable'] = true,['y'] = 64,['x'] = -1216,['height'] = 128,['type'] = 'water',['width'] = 320},
[14] = {['permeable'] = true,['y'] = 64,['x'] = -1408,['height'] = 128,['type'] = 'water',['width'] = 192},
[15] = {['permeable'] = true,['y'] = 192,['x'] = -1408,['height'] = 192,['type'] = 'water',['width'] = 192},
[16] = {['permeable'] = true,['y'] = 192,['x'] = -1216,['height'] = 128,['type'] = 'water',['width'] = 256},
[17] = {['permeable'] = true,['y'] = 192,['x'] = -960,['height'] = 128,['type'] = 'water',['width'] = 192},
[18] = {['permeable'] = true,['y'] = 0,['x'] = -896,['height'] = 192,['type'] = 'water',['width'] = 192},
[19] = {['y'] = -64,['x'] = -704,['height'] = 64,['type'] = 'grassydirt',['width'] = 256},
[20] = {['y'] = 64,['type'] = 'grassydirt',['height'] = 384,['x'] = 2880,['width'] = 128},
[21] = {['y'] = 128,['type'] = 'grassydirt',['height'] = 320,['x'] = 2368,['width'] = 512},
[22] = {['y'] = 64,['type'] = 'grassydirt',['height'] = 384,['x'] = 2240,['width'] = 128},
[23] = {['y'] = 128,['type'] = 'grassydirt',['height'] = 320,['x'] = 2048,['width'] = 192},
[24] = {['y'] = 64,['type'] = 'grassydirt',['height'] = 384,['x'] = 1984,['width'] = 64},
[25] = {['y'] = 0,['type'] = 'grassydirt',['height'] = 448,['x'] = 1920,['width'] = 64},
[26] = {['y'] = 64,['type'] = 'grassydirt',['height'] = 384,['x'] = 1856,['width'] = 64},
[27] = {['y'] = 64,['type'] = 'grassydirt',['height'] = 384,['x'] = 1792,['width'] = 64},
[28] = {['y'] = 128,['type'] = 'grassydirt',['height'] = 320,['x'] = 1408,['width'] = 384},
[29] = {['y'] = 64,['type'] = 'grassydirt',['height'] = 384,['x'] = 1344,['width'] = 64},
[30] = {['y'] = 128,['type'] = 'grassydirt',['height'] = 320,['x'] = 960,['width'] = 384},
[31] = {['y'] = 128,['type'] = 'grassydirt',['height'] = 320,['x'] = 576,['width'] = 384},
[32] = {['y'] = 128,['x'] = 192,['height'] = 320,['type'] = 'grassydirt',['width'] = 384},
[33] = {['y'] = 128,['x'] = -64,['height'] = 320,['type'] = 'grassydirt',['width'] = 256},
[34] = {['y'] = 128,['x'] = -128,['height'] = 64,['type'] = 'grassydirt',['width'] = 64},
[35] = {['y'] = 64,['x'] = -256,['height'] = 128,['type'] = 'grassydirt',['width'] = 128},
[36] = {['y'] = 0,['x'] = -448,['height'] = 192,['type'] = 'grassydirt',['width'] = 192},
[37] = {['y'] = 768,['x'] = 2880,['height'] = 256,['type'] = 'dirt',['width'] = 128},
[38] = {['y'] = 640,['x'] = 2624,['height'] = 128,['type'] = 'dirt',['width'] = 256},
[39] = {['y'] = 448,['x'] = 2560,['height'] = 192,['type'] = 'dirt',['width'] = 192},
[40] = {['y'] = 448,['x'] = 2752,['height'] = 192,['type'] = 'dirt',['width'] = 128},
[41] = {['y'] = 640,['x'] = 2880,['height'] = 128,['type'] = 'dirt',['width'] = 128},
[42] = {['y'] = 448,['x'] = 2880,['height'] = 192,['type'] = 'dirt',['width'] = 128},
[43] = {['y'] = 768,['x'] = -1280,['height'] = 64,['type'] = 'dirt',['width'] = 192},
[44] = {['y'] = 768,['x'] = -1536,['height'] = 64,['type'] = 'dirt',['width'] = 256},
[45] = {['y'] = 768,['x'] = -1856,['height'] = 64,['type'] = 'dirt',['width'] = 320},
[46] = {['y'] = 768,['x'] = -2112,['height'] = 64,['type'] = 'dirt',['width'] = 256},
[47] = {['y'] = 768,['x'] = -2496,['height'] = 64,['type'] = 'dirt',['width'] = 384},
[48] = {['y'] = 448,['x'] = -1152,['height'] = 320,['type'] = 'dirt',['width'] = 64},
[49] = {['y'] = 448,['x'] = -1280,['height'] = 320,['type'] = 'dirt',['width'] = 128},
[50] = {['y'] = 448,['x'] = -1536,['height'] = 320,['type'] = 'dirt',['width'] = 256},
[51] = {['y'] = 448,['x'] = -1856,['height'] = 320,['type'] = 'dirt',['width'] = 320},
[52] = {['y'] = 448,['x'] = -2048,['height'] = 320,['type'] = 'dirt',['width'] = 192},
[53] = {['y'] = 448,['x'] = -2240,['height'] = 320,['type'] = 'dirt',['width'] = 192},
[54] = {['y'] = 448,['x'] = -2496,['height'] = 320,['type'] = 'dirt',['width'] = 256},
[55] = {['y'] = 320,['x'] = -2496,['height'] = 128,['type'] = 'dirt',['width'] = 384},
[56] = {['y'] = 192,['x'] = -2496,['height'] = 128,['type'] = 'dirt',['width'] = 192},
[57] = {['y'] = -128,['x'] = -2496,['height'] = 320,['type'] = 'dirt',['width'] = 256},
[58] = {['y'] = 192,['x'] = -2304,['height'] = 128,['type'] = 'dirt',['width'] = 384},
[59] = {['y'] = 320,['x'] = -2112,['height'] = 128,['type'] = 'dirt',['width'] = 384},
[60] = {['y'] = 256,['x'] = -1728,['height'] = 192,['type'] = 'dirt',['width'] = 320},
[61] = {['y'] = 384,['x'] = -1408,['height'] = 64,['type'] = 'dirt',['width'] = 192},
[62] = {['y'] = 320,['x'] = -1216,['height'] = 128,['type'] = 'dirt',['width'] = 256},
[63] = {['y'] = 320,['x'] = -960,['height'] = 128,['type'] = 'dirt',['width'] = 192},
[64] = {['y'] = 192,['x'] = -768,['height'] = 256,['type'] = 'dirt',['width'] = 192},
[65] = {['y'] = 192,['x'] = -576,['height'] = 256,['type'] = 'dirt',['width'] = 256},
[66] = {['y'] = 192,['x'] = -320,['height'] = 256,['type'] = 'dirt',['width'] = 256},
[67] = {['y'] = 0,['x'] = -704,['height'] = 192,['type'] = 'dirt',['width'] = 256},
[68] = {['y'] = 576,['x'] = 4992,['height'] = 896,['type'] = 'dirt',['width'] = 896},
[69] = {['y'] = 512,['x'] = 4480,['height'] = 1024,['type'] = 'dirt',['width'] = 512},
[70] = {['y'] = 832,['x'] = 4224,['height'] = 704,['type'] = 'dirt',['width'] = 256},
[71] = {['y'] = 896,['x'] = 3776,['height'] = 576,['type'] = 'dirt',['width'] = 448},
[72] = {['y'] = 1024,['x'] = 2944,['height'] = 448,['type'] = 'dirt',['width'] = 832},
[73] = {['y'] = 1472,['x'] = 2944,['height'] = 384,['type'] = 'dirt',['width'] = 4992},
[74] = {['y'] = -2624,['x'] = 7360,['height'] = 4096,['type'] = 'dirt',['width'] = 576},
[75] = {['y'] = -2624,['x'] = 5888,['height'] = 448,['type'] = 'dirt',['width'] = 1472},
[76] = {['y'] = -2624,['x'] = 4608,['height'] = 448,['type'] = 'dirt',['width'] = 1280},
[77] = {['y'] = -2624,['type'] = 'dirt',['height'] = 448,['x'] = 3904,['width'] = 704},
[78] = {['y'] = -2624,['type'] = 'dirt',['height'] = 448,['x'] = 3200,['width'] = 704},
[79] = {['y'] = -2624,['type'] = 'dirt',['height'] = 448,['x'] = 2752,['width'] = 448},
[80] = {['y'] = -2624,['type'] = 'dirt',['height'] = 448,['x'] = 2176,['width'] = 576},
[81] = {['y'] = -2624,['type'] = 'dirt',['height'] = 448,['x'] = 832,['width'] = 704},
[82] = {['y'] = -2624,['type'] = 'dirt',['height'] = 448,['x'] = 256,['width'] = 576},
[83] = {['y'] = 512,['type'] = 'dirt',['height'] = 384,['x'] = 4096,['width'] = 128},
[84] = {['y'] = 512,['type'] = 'dirt',['height'] = 384,['x'] = 3968,['width'] = 128},
[85] = {['y'] = 512,['type'] = 'dirt',['height'] = 384,['x'] = 3776,['width'] = 192},
[86] = {['y'] = 1024,['type'] = 'dirt',['height'] = 64,['x'] = 3520,['width'] = 256},
[87] = {['y'] = 448,['type'] = 'dirt',['height'] = 384,['x'] = 256,['width'] = 320},
[88] = {['y'] = 448,['type'] = 'dirt',['height'] = 384,['x'] = 0,['width'] = 256},
[89] = {['y'] = 448,['type'] = 'dirt',['height'] = 384,['x'] = -576,['width'] = 576},
[90] = {['y'] = 448,['type'] = 'dirt',['height'] = 384,['x'] = -1088,['width'] = 512},
[91] = {['y'] = 512,['x'] = 3520,['height'] = 512,['type'] = 'dirt',['width'] = 256},
[92] = {['y'] = 640,['x'] = 3008,['height'] = 448,['type'] = 'dirt',['width'] = 512},
[93] = {['permeable'] = true,['y'] = -260,['x'] = -443,['height'] = 128,['text'] = '||Welcome to the Birthing Place|| ---You have just been born.--- |||Please procede to your right|||',['type'] = 'sign',['width'] = 500},
[94] = {['permeable'] = true,['y'] = -192,['type'] = 'sign',['height'] = 84,['text'] = 'Kill these things by jumping on them',['x'] = 2048,['width'] = 320},
[95] = {['permeable'] = true,['y'] = -64,['type'] = 'sign',['height'] = 84,['text'] = "Use the w key to jump",['x'] = 960,['width'] = 256},
[96] = {['permeable'] = true, ['y'] = -64,['type'] = 'sign',['height'] = 84,['text'] = "Use the a and d keys to move",['x'] = -192,['width'] = 256},
[97] = {['permeable'] = true, ['y'] = -64,['type'] = 'sign',['height'] = 45,['text'] = "Save often!",['x'] = 400,['width'] = 192}}

level.doors = {{['y'] = 0,['x'] = 1600,['height'] = 128,['width'] = 128, goesto = 'Birthing Place Shop', id = 'a1', double = true}, {['y'] = 0,['x'] = 200,['height'] = 128,['width'] = 64,goesto='levelend'}}

--level.enemySpawnPoints = {enemySpawnPoint(2600,0,"pawn",0.3,30),enemySpawnPoint(3075,380,'foe',1.5,13,nil,10)}

level.enemySpawnPoints = {enemySpawnPoint.make{x=2600,y=-150,type='monkey',spawnrate=1.5,totalenemies=5, enemyatts={xspeed=50, leftBoundary = 2300,rightBoundary=2800}, display=true }}

level.allpawns = {}
level.numPawns = 0

level.allsoldiers = {}
level.numSoldiers = 0

level.spawnpoint = {-300,-150}

return level
