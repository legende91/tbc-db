-- ------------------------------------------
-- Templates
-- ------------------------------------------
-- Fix ExtraFlags in preparation for The Final Code Rescript
UPDATE `creature_template` SET `ExtraFlags`=0 WHERE `Entry`=21039; -- Mana Bomb Kill Credit Trigger
UPDATE `creature_template` SET `ExtraFlags`=0 WHERE `Entry`=20767; -- Mana Bomb Explosion Trigger
UPDATE `creature_template` SET `ExtraFlags`=0 WHERE `Entry`=21898; -- Mana Bomb Lightning Trigger
UPDATE `creature_template` SET `ExtraFlags`=0 WHERE `Entry`=21899; -- Mana Bomb Lightning Target
UPDATE `creature_template` SET `ExtraFlags`=0 WHERE `Entry`=20809; -- Mana Bomb Channel Trigger

UPDATE creature SET MovementType=0, spawndist=0 WHERE id=21899; -- Mana Bomb Lightning Target

-- ------------------------------------------
-- Spawns
-- ------------------------------------------
-- Delete any old addons first
DELETE FROM creature_addon WHERE guid IN(SELECT guid FROM creature WHERE id IN(1410,5355,16769));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (1410,5355,16769));
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id IN (1410,5355,16769));
DELETE FROM creature_linking WHERE master_guid IN (SELECT guid FROM creature WHERE id IN (1410,5355,16769));
DELETE FROM creature WHERE id IN(1410,5355,16769);
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
-- Firewing Defender
(152436,5355,530,1,0,0,-2270.862,3089.829,13.91197,2.827433,300,300,0,0,4422,2620,0,0), -- Pool 1
(152437,5355,530,1,0,0,-2444.613,3149.943,1.837187,4.445467,300,300,10,0,4422,2620,0,1), -- Not pooled
(152438,5355,530,1,0,0,-2449.79,3217.818,7.678174,2.566882,300,300,10,0,4422,2620,0,1), -- Pool 2
(152439,5355,530,1,0,0,-2398.292,3195.363,2.294224,1.461283,300,300,2,0,4422,2620,0,1), -- Pool 3
(152440,5355,530,1,0,0,-2322.237,3407.676,-11.03205,1.58825,300,300,0,0,4422,2620,0,0), -- Pool 4
(152441,5355,530,1,0,0,-2284.641,3313.623,0.7219113,4.607677,300,300,10,0,4422,2620,0,1), -- Pool 5
(152442,5355,530,1,0,0,-2308.19,3407.123,-11.55861,1.675516,300,300,0,0,4422,2620,0,0), -- Pool 6
(152443,5355,530,1,0,0,-2319.03,3316.981,0.8667273,0.5563343,300,300,10,0,4422,2620,0,1), -- Pool 7
(152444,5355,530,1,0,0,-2315.375,3403.219,-10.81223,4.924847,300,300,0,0,4422,2620,0,2), -- Pool 8, Pat 1
(152445,5355,530,1,0,0,-2307.236,3174.756,0.4275601,0.6422592,300,300,10,0,4422,2620,0,1), -- Pool 9
(152446,5355,530,1,0,0,-2270.046,3094.065,13.91197,3.054326,300,300,0,0,4422,2620,0,0), -- Pool 10
(152447,5355,530,1,0,0,-2298.264,3100.404,138.8355,1.065935,300,300,0,0,4422,2620,0,2), -- Pool 11, Pat 6
(152448,5355,530,1,0,0,-2301.089,3081.469,13.91198,0.8552113,300,300,0,0,4422,2620,0,0), -- Pool 12
(152449,5355,530,1,0,0,-2288.777,3095.463,13.91197,4.502949,300,300,0,0,4422,2620,0,2), -- Pool 13, Pat 8
(152450,5355,530,1,0,0,-2249.521,3122.553,27.4721,3.508112,300,300,0,0,4422,2620,0,0), -- Not pooled
(152451,5355,530,1,0,0,-2383.736,3174.52,2.602277,3.644225,300,300,2,0,4422,2620,0,1), -- Pool 14
(152452,5355,530,1,0,0,-2427.592,3202.236,18.1663,2.194885,300,300,2,0,4422,2620,0,1), -- Not pooled
(152453,5355,530,1,0,0,-2262.827,3185.568,23.75538,3.124139,300,300,0,0,4422,2620,0,0), -- Pool 15
(152454,5355,530,1,0,0,-2277.601,3283.459,0.06079834,2.216368,300,300,10,0,4422,2620,0,1), -- Pool 16
(152455,5355,530,1,0,0,-2277.782,3255.509,-2.177298,0.1698195,300,300,10,0,4422,2620,0,1), -- Pool 17
(152456,5355,530,1,0,0,-2245.719,3183.977,-9.553581,1.58813,300,300,10,0,4422,2620,0,1), -- Not pooled
(152457,5355,530,1,0,0,-2286.528,3215.907,-3.94216,5.686658,300,300,2,0,4422,2620,0,1), -- Not pooled
(152458,5355,530,1,0,0,-2381.978,3315.268,-4.048394,5.463296,300,300,10,0,4422,2620,0,1), -- Pool 18
(152459,5355,530,1,0,0,-2336.95,3291.115,0.4901963,6.243153,300,300,2,0,4422,2620,0,1), -- Pool 19
(152460,5355,530,1,0,0,-2361.144,3291.927,-0.3265947,4.446175,300,300,2,0,4422,2620,0,1), -- Pool 20
(152461,5355,530,1,0,0,-2301.695,3288.952,3.03001,5.88176,300,300,2,0,4422,2620,0,1), -- Not pooled
(152462,5355,530,1,0,0,-2289.18,3186.458,-2.960642,1.467929,300,300,10,0,4422,2620,0,1), -- Not pooled
(152463,5355,530,1,0,0,-2345.878,3276.86,-0.9947997,3.393564,300,300,0,0,4422,2620,0,2), -- Pool 21, Pat 2
(152464,5355,530,1,0,0,-2351.808,3118.778,11.59975,2.755016,300,300,10,0,4422,2620,0,1), -- Not pooled
(152465,5355,530,1,0,0,-2448.628,3249.078,4.988071,4.26314,300,300,10,0,4422,2620,0,1), -- Pool 22
(152466,5355,530,1,0,0,-2424.092,3221.262,5.007755,0.3039983,300,300,10,0,4422,2620,0,1), -- Pool 23
(152467,5355,530,1,0,0,-2393.115,3266.224,2.458288,4.180162,300,300,10,0,4422,2620,0,1), -- Pool 24
-- Firewing Warlock
(152468,16769,530,1,0,0,-2288.777,3095.463,13.91197,4.502949,300,300,0,0,4422,2620,0,2), -- Pool 13, Pat 8
(152469,16769,530,1,0,0,-2354.907,3208.289,-3.292264,2.565634,300,300,0,0,4422,2620,0,0),
(152470,16769,530,1,0,0,-2364.038,3213.519,-3.083104,5.811946,300,300,0,0,4422,2620,0,0),
(152471,16769,530,1,0,0,-2352.868,3240.676,-3.304682,5.654867,300,300,0,0,4422,2620,0,0),
(152472,16769,530,1,0,0,-2285.386,3096.81,138.8272,4.246403,300,300,2,0,4422,2620,0,1),
(152473,16769,530,1,0,0,-2395.54,3232.197,-0.4593336,4.572762,300,300,0,0,4422,2620,0,0),
(152474,16769,530,1,0,0,-2414.936,3183.906,2.279269,5.899213,300,300,2,0,4422,2620,0,1),
(152475,16769,530,1,0,0,-2426.028,3258.69,3.546713,3.577925,300,300,0,0,4422,2620,0,0),
(152476,16769,530,1,0,0,-2415.099,3188.59,18.17255,1.675516,300,300,0,0,4422,2620,0,0),
(152477,16769,530,1,0,0,-2334.993,3183.899,-0.6562517,3.385939,300,300,0,0,4422,2620,0,0),
(152478,16769,530,1,0,0,-2346.051,3182.736,-0.3597077,6.213372,300,300,0,0,4422,2620,0,0),
(152479,16769,530,1,0,0,-2297.996,3241.278,-0.8158097,1.448623,300,300,0,0,4422,2620,0,0),
(152480,16769,530,1,0,0,-2300.232,3251.943,-0.8040747,4.921828,300,300,0,0,4422,2620,0,0),
(152481,16769,530,1,0,0,-2260.24,3214.949,-3.970509,4.341605,300,300,5,0,4422,2620,0,1),
(152482,16769,530,1,0,0,-2369.735,3244.581,-3.292264,0.9773844,300,300,0,0,4422,2620,0,0),
(152483,16769,530,1,0,0,-2394.575,3221.122,-0.5609097,1.361357,300,300,0,0,4422,2620,0,0),
(152484,16769,530,1,0,0,-2326.519,3252.047,-2.71682,2.583087,300,300,0,0,4422,2620,0,0),
(152485,16769,530,1,0,0,-2336.073,3257.75,-3.292264,5.77704,300,300,0,0,4422,2620,0,0),
(152486,16769,530,1,0,0,-2339.743,3242.621,-3.227272,4.014257,300,300,0,0,4422,2620,0,0),
(152487,16769,530,1,0,0,-2350.695,3227.217,-3.227273,1.029744,300,300,0,0,4422,2620,0,0),
(152488,16769,530,1,0,0,-2325.4,3215.804,-3.292264,0.9424778,300,300,0,0,4422,2620,0,0),
(152489,16769,530,1,0,0,-2337.632,3229.243,-3.283849,2.495821,300,300,0,0,4422,2620,0,0),
(152490,16769,530,1,0,0,-2363.625,3252.714,-3.292264,4.049164,300,300,0,0,4422,2620,0,0),
(152491,16769,530,1,0,0,-2319.323,3224.018,-3.292263,4.101524,300,300,0,0,4422,2620,0,0),
-- Firewing Bloodwarder
(152492,1410,530,1,0,0,-2301.089,3081.469,13.91198,0.8552113,300,300,0,0,4422,2620,0,0), -- Pool 12
(152493,1410,530,1,0,0,-2383.736,3174.52,2.602277,5.026548,300,300,2,0,4422,2620,0,1), -- Pool 14
(152494,1410,530,1,0,0,-2308.19,3407.123,-11.55861,1.675516,300,300,0,0,4422,2620,0,0), -- Pool 6
(152495,1410,530,1,0,0,-2315.375,3403.219,-10.81223,4.924847,300,300,0,0,4422,2620,0,2), -- Pool 8, Pat 1
(152496,1410,530,1,0,0,-2322.237,3407.676,-11.03205,1.58825,300,300,0,0,4422,2620,0,0), -- Pool 4
(152497,1410,530,1,0,0,-2381.978,3315.268,-4.048394,3.690899,300,300,10,0,4422,2620,0,1), -- Pool 18
(152498,1410,530,1,0,0,-2277.601,3283.459,0.06079834,2.110169,300,300,10,0,4422,2620,0,1), -- Pool 16
(152499,1410,530,1,0,0,-2361.144,3291.927,-0.3265947,3.674174,300,300,2,0,4422,2620,0,1), -- Pool 20
(152500,1410,530,1,0,0,-2336.95,3291.115,0.4901963,6.021386,300,300,2,0,4422,2620,0,1), -- Pool 19
(152501,1410,530,1,0,0,-2345.878,3276.86,-0.9947997,3.393564,300,300,0,0,4422,2620,0,2), -- Pool 21, Pat 2
(152502,1410,530,1,0,0,-2298.264,3100.404,138.8355,1.065935,300,300,0,0,4422,2620,0,2), -- Pool 11, Pat 6
(152503,1410,530,1,0,0,-2259.765,3225.384,22.94056,4.576806,300,300,2,0,4422,2620,0,1), -- Not pooled
(152504,1410,530,1,0,0,-2262.827,3185.568,23.75538,3.124139,300,300,0,0,4422,2620,0,0), -- Pool 15
(152505,1410,530,1,0,0,-2277.782,3255.509,-2.177298,1.723477,300,300,10,0,4422,2620,0,1), -- Pool 17
(152506,1410,530,1,0,0,-2270.862,3089.829,13.91197,2.827433,300,300,0,0,4422,2620,0,0), -- Pool 1
(152507,1410,530,1,0,0,-2250.759,3120.771,27.4721,3.734071,300,300,0,0,4422,2620,0,2), -- Not pooled, Pat 4
(152508,1410,530,1,0,0,-2270.046,3094.065,13.91197,3.054326,300,300,0,0,4422,2620,0,0), -- Pool 10
(152509,1410,530,1,0,0,-2424.092,3221.262,5.007755,1.029963,300,300,10,0,4422,2620,0,1), -- Pool 23
(152510,1410,530,1,0,0,-2448.628,3249.078,4.988071,5.964251,300,300,10,0,4422,2620,0,1), -- Pool 22
(152511,1410,530,1,0,0,-2393.115,3266.224,2.458288,1.295277,300,300,10,0,4422,2620,0,1), -- Pool 24
(152512,1410,530,1,0,0,-2389.031,3168.941,3.473255,3.929521,300,300,0,0,4422,2620,0,2), -- Not pooled, Pat 3
(152513,1410,530,1,0,0,-2400.156,3168.053,18.16631,0.8338147,300,300,2,0,4422,2620,0,1), -- Not pooled
(152514,1410,530,1,0,0,-2429.803,3170.511,18.1653,3.511274,300,300,2,0,4422,2620,0,1), -- Not pooled
(152515,1410,530,1,0,0,-2398.292,3195.363,2.294224,5.559402,300,300,2,0,4422,2620,0,1), -- Pool 3
(152516,1410,530,1,0,0,-2307.236,3174.756,0.4275601,2.487989,300,300,10,0,4422,2620,0,1), -- Pool 9
(152517,1410,530,1,0,0,-2251.067,3149.718,-8.293937,5.941616,300,300,10,0,4422,2620,0,1), -- Not pooled
(152518,1410,530,1,0,0,-2284.641,3313.623,0.7219113,2.253756,300,300,10,0,4422,2620,0,1), -- Pool 5
(152519,1410,530,1,0,0,-2277.43,3226.13,22.93513,0.8430305,300,300,0,0,4422,2620,0,2), -- Not pooled, Pat 7
(152520,1410,530,1,0,0,-2259.368,3226.275,5.428473,6.02304,300,300,0,0,4422,2620,0,2), -- Not pooled, Pat 5
(152521,1410,530,1,0,0,-2319.03,3316.981,0.8667273,4.150385,300,300,10,0,4422,2620,0,1), -- Pool 7
(152522,1410,530,1,0,0,-2413.594,3146.653,3.05688,5.802691,300,300,10,0,4422,2620,0,1), -- Not pooled
(152523,1410,530,1,0,0,-2449.79,3217.818,7.678174,4.593082,300,300,10,0,4422,2620,0,1), -- Pool 2
(152524,1410,530,1,0,0,-2353.664,3149.435,7.978856,3.587795,300,300,10,0,4422,2620,0,1), -- Not pooled
(152525,1410,530,1,0,0,-2450.011,3184.161,3.311513,3.847738,300,300,10,0,4422,2620,0,1); -- Not pooled

-- ------------------------------------------
-- Addons
-- ------------------------------------------
-- Firewing Bloodwarder, add missing aura Feedback Proc
DELETE FROM `creature_template_addon` WHERE `entry`=1410;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(1410, 0, 0, 1, 16, 0, 0, '32898');

-- Firewing Warlock, some of them should not channel
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES 
(152468, 0, 0, 1, 16, 0, 0, NULL),
(152472, 0, 0, 1, 16, 0, 0, NULL),
(152474, 0, 0, 1, 16, 0, 0, NULL),
(152475, 0, 0, 1, 16, 0, 0, NULL),
(152476, 0, 0, 1, 16, 0, 0, NULL),
(152481, 0, 0, 1, 16, 0, 0, NULL),

-- Warlocks in the middle
(152487, 0, 0, 1, 16, 0, 0, '35782'),
(152471, 0, 0, 1, 16, 0, 0, '35782'),
(152486, 0, 0, 1, 16, 0, 0, '35782'),
(152489, 0, 0, 1, 16, 0, 0, '35782');

-- ------------------------------------------
-- Pooling
-- ------------------------------------------
DELETE FROM pool_template WHERE entry BETWEEN 453 AND 476;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(453,1,'Firewing Point - Firewing Defender/Bloodwarder 1'),
(454,1,'Firewing Point - Firewing Defender/Bloodwarder 2'),
(455,1,'Firewing Point - Firewing Defender/Bloodwarder 3'),
(456,1,'Firewing Point - Firewing Defender/Bloodwarder 4'),
(457,1,'Firewing Point - Firewing Defender/Bloodwarder 5'),
(458,1,'Firewing Point - Firewing Defender/Bloodwarder 6'),
(459,1,'Firewing Point - Firewing Defender/Bloodwarder 7'),
(460,1,'Firewing Point - Firewing Defender/Bloodwarder 8'),
(461,1,'Firewing Point - Firewing Defender/Bloodwarder 9'),
(462,1,'Firewing Point - Firewing Defender/Bloodwarder 10'),
(463,1,'Firewing Point - Firewing Defender/Bloodwarder 11'),
(464,1,'Firewing Point - Firewing Defender/Bloodwarder 12'),
(465,1,'Firewing Point - Firewing Defender/Warlock 13'),
(466,1,'Firewing Point - Firewing Defender/Bloodwarder 14'),
(467,1,'Firewing Point - Firewing Defender/Bloodwarder 15'),
(468,1,'Firewing Point - Firewing Defender/Bloodwarder 16'),
(469,1,'Firewing Point - Firewing Defender/Bloodwarder 17'),
(470,1,'Firewing Point - Firewing Defender/Bloodwarder 18'),
(471,1,'Firewing Point - Firewing Defender/Bloodwarder 19'),
(472,1,'Firewing Point - Firewing Defender/Bloodwarder 20'),
(473,1,'Firewing Point - Firewing Defender/Bloodwarder 21'),
(474,1,'Firewing Point - Firewing Defender/Bloodwarder 22'),
(475,1,'Firewing Point - Firewing Defender/Bloodwarder 23'),
(476,1,'Firewing Point - Firewing Defender/Bloodwarder 24');


DELETE FROM pool_creature WHERE pool_entry BETWEEN 453 AND 476;
INSERT INTO pool_creature (guid, pool_entry, chance, description) VALUES
(152436,453,50,'Firewing Point - Firewing Defender 1'),
(152506,453,50,'Firewing Point - Firewing Bloodwarder 1'),

(152438,454,50,'Firewing Point - Firewing Defender 2'),
(152523,454,50,'Firewing Point - Firewing Bloodwarder 2'),

(152439,455,50,'Firewing Point - Firewing Defender 3'),
(152515,455,50,'Firewing Point - Firewing Bloodwarder 3'),

(152440,456,50,'Firewing Point - Firewing Defender 4'),
(152496,456,50,'Firewing Point - Firewing Bloodwarder 4'),

(152441,457,50,'Firewing Point - Firewing Defender 5'),
(152518,457,50,'Firewing Point - Firewing Bloodwarder 5'),

(152442,458,50,'Firewing Point - Firewing Defender 6'),
(152494,458,50,'Firewing Point - Firewing Bloodwarder 6'),

(152443,459,50,'Firewing Point - Firewing Defender 7'),
(152521,459,50,'Firewing Point - Firewing Bloodwarder 7'),

(152444,460,50,'Firewing Point - Firewing Defender 8'),
(152495,460,50,'Firewing Point - Firewing Bloodwarder 8'),

(152445,461,50,'Firewing Point - Firewing Defender 9'),
(152516,461,50,'Firewing Point - Firewing Bloodwarder 9'),

(152446,462,50,'Firewing Point - Firewing Defender 10'),
(152508,462,50,'Firewing Point - Firewing Bloodwarder 10'),

(152447,463,50,'Firewing Point - Firewing Defender 11'),
(152502,463,50,'Firewing Point - Firewing Bloodwarder 11'),

(152448,464,50,'Firewing Point - Firewing Defender 12'),
(152492,464,50,'Firewing Point - Firewing Bloodwarder 12'),

(152449,465,50,'Firewing Point - Firewing Defender 13'),
(152468,465,50,'Firewing Point - Firewing Warlock 13'),

(152451,466,50,'Firewing Point - Firewing Defender 14'),
(152493,466,50,'Firewing Point - Firewing Bloodwarder 14'),

(152453,467,50,'Firewing Point - Firewing Defender 15'),
(152504,467,50,'Firewing Point - Firewing Bloodwarder 15'),

(152454,468,50,'Firewing Point - Firewing Defender 16'),
(152498,468,50,'Firewing Point - Firewing Bloodwarder 16'),

(152455,469,50,'Firewing Point - Firewing Defender 17'),
(152505,469,50,'Firewing Point - Firewing Bloodwarder 17'),

(152458,470,50,'Firewing Point - Firewing Defender 18'),
(152497,470,50,'Firewing Point - Firewing Bloodwarder 18'),

(152459,471,50,'Firewing Point - Firewing Defender 19'),
(152500,471,50,'Firewing Point - Firewing Bloodwarder 19'),

(152460,472,50,'Firewing Point - Firewing Defender 20'),
(152499,472,50,'Firewing Point - Firewing Bloodwarder 20'),

(152463,473,50,'Firewing Point - Firewing Defender 21'),
(152501,473,50,'Firewing Point - Firewing Bloodwarder 21'),

(152465,474,50,'Firewing Point - Firewing Defender 22'),
(152510,474,50,'Firewing Point - Firewing Bloodwarder 22'),

(152466,475,50,'Firewing Point - Firewing Defender 23'),
(152509,475,50,'Firewing Point - Firewing Bloodwarder 23'),

(152467,476,50,'Firewing Point - Firewing Defender 24'),
(152511,476,50,'Firewing Point - Firewing Bloodwarder 24');

-- ------------------------------------------
-- Paths
-- ------------------------------------------
-- Pat 1
DELETE FROM `creature_movement` WHERE `id` IN(152444,152495);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152444,1,-2313.426,3394.177,-9.813612,0,0,0),
(152444,2,-2317.228,3386.581,-8.224501,0,0,0),
(152444,3,-2327.884,3379.779,-6.052137,0,0,0),
(152444,4,-2336.654,3375.736,-4.625028,0,0,0),
(152444,5,-2345.06,3365.858,-3.398248,0,0,0),
(152444,6,-2349.435,3351.335,-2.562799,0,0,0),
(152444,7,-2351.637,3330.967,-2.15229,0,0,0),
(152444,8,-2352.411,3313.604,-1.396919,0,0,0),
(152444,9,-2348.645,3294.924,-0.8494196,0,0,0),
(152444,10,-2347.5,3285.576,-0.6118708,0,0,0),
(152444,11,-2348.645,3294.924,-0.8494196,0,0,0),
(152444,12,-2352.411,3313.604,-1.396919,0,0,0),
(152444,13,-2351.637,3330.967,-2.15229,0,0,0),
(152444,14,-2349.435,3351.335,-2.562799,0,0,0),
(152444,15,-2345.06,3365.858,-3.398248,0,0,0),
(152444,16,-2336.654,3375.736,-4.625028,0,0,0),
(152444,17,-2327.884,3379.779,-6.052137,0,0,0),
(152444,18,-2317.228,3386.581,-8.224501,0,0,0),
(152444,19,-2313.426,3394.177,-9.813612,0,0,0),
(152444,20,-2314.805,3402.576,-10.76846,0,0,0),

(152495,1,-2313.426,3394.177,-9.813612,0,0,0),
(152495,2,-2317.228,3386.581,-8.224501,0,0,0),
(152495,3,-2327.884,3379.779,-6.052137,0,0,0),
(152495,4,-2336.654,3375.736,-4.625028,0,0,0),
(152495,5,-2345.06,3365.858,-3.398248,0,0,0),
(152495,6,-2349.435,3351.335,-2.562799,0,0,0),
(152495,7,-2351.637,3330.967,-2.15229,0,0,0),
(152495,8,-2352.411,3313.604,-1.396919,0,0,0),
(152495,9,-2348.645,3294.924,-0.8494196,0,0,0),
(152495,10,-2347.5,3285.576,-0.6118708,0,0,0),
(152495,11,-2348.645,3294.924,-0.8494196,0,0,0),
(152495,12,-2352.411,3313.604,-1.396919,0,0,0),
(152495,13,-2351.637,3330.967,-2.15229,0,0,0),
(152495,14,-2349.435,3351.335,-2.562799,0,0,0),
(152495,15,-2345.06,3365.858,-3.398248,0,0,0),
(152495,16,-2336.654,3375.736,-4.625028,0,0,0),
(152495,17,-2327.884,3379.779,-6.052137,0,0,0),
(152495,18,-2317.228,3386.581,-8.224501,0,0,0),
(152495,19,-2313.426,3394.177,-9.813612,0,0,0),
(152495,20,-2314.805,3402.576,-10.76846,0,0,0);

-- Pat 2
DELETE FROM `creature_movement` WHERE `id` IN(152463,152501);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152463,1,-2354.26,3274.702,-1.373956,0,0,0),
(152463,2,-2364.516,3268.476,-1.390313,0,0,0),
(152463,3,-2374.687,3260.501,-1.250597,0,0,0),
(152463,4,-2382.419,3248.859,-1.422716,0,0,0),
(152463,5,-2385.263,3238.87,-1.310289,0,0,0),
(152463,6,-2385.077,3224.941,-1.272868,0,0,0),
(152463,7,-2382.88,3215.065,-1.10612,0,0,0),
(152463,8,-2373.031,3204.094,-1.216716,0,0,0),
(152463,9,-2362.045,3196.487,-1.466716,0,0,0),
(152463,10,-2349.351,3192.811,-1.408488,0,0,0),
(152463,11,-2338.471,3193.571,-1.374552,0,0,0),
(152463,12,-2326.477,3197.87,-1.424235,0,0,0),
(152463,13,-2317.173,3205.313,-1.373644,0,0,0),
(152463,14,-2310.82,3213.454,-1.125597,0,0,0),
(152463,15,-2307.583,3222.53,-1.500597,0,0,0),
(152463,16,-2306.818,3235.682,-1.36126,0,0,0),
(152463,17,-2308.267,3246.324,-1.004693,0,0,0),
(152463,18,-2314.036,3256.474,-1.071832,0,0,0),
(152463,19,-2320.906,3264.052,-1.022515,0,0,0),
(152463,20,-2330.98,3271.191,-1.106798,0,0,0),
(152463,21,-2339.27,3275.36,-0.9937067,0,0,0),
(152463,22,-2346.198,3276.744,-1.077569,0,0,0),

(152501,1,-2354.26,3274.702,-1.373956,0,0,0),
(152501,2,-2364.516,3268.476,-1.390313,0,0,0),
(152501,3,-2374.687,3260.501,-1.250597,0,0,0),
(152501,4,-2382.419,3248.859,-1.422716,0,0,0),
(152501,5,-2385.263,3238.87,-1.310289,0,0,0),
(152501,6,-2385.077,3224.941,-1.272868,0,0,0),
(152501,7,-2382.88,3215.065,-1.10612,0,0,0),
(152501,8,-2373.031,3204.094,-1.216716,0,0,0),
(152501,9,-2362.045,3196.487,-1.466716,0,0,0),
(152501,10,-2349.351,3192.811,-1.408488,0,0,0),
(152501,11,-2338.471,3193.571,-1.374552,0,0,0),
(152501,12,-2326.477,3197.87,-1.424235,0,0,0),
(152501,13,-2317.173,3205.313,-1.373644,0,0,0),
(152501,14,-2310.82,3213.454,-1.125597,0,0,0),
(152501,15,-2307.583,3222.53,-1.500597,0,0,0),
(152501,16,-2306.818,3235.682,-1.36126,0,0,0),
(152501,17,-2308.267,3246.324,-1.004693,0,0,0),
(152501,18,-2314.036,3256.474,-1.071832,0,0,0),
(152501,19,-2320.906,3264.052,-1.022515,0,0,0),
(152501,20,-2330.98,3271.191,-1.106798,0,0,0),
(152501,21,-2339.27,3275.36,-0.9937067,0,0,0),
(152501,22,-2346.198,3276.744,-1.077569,0,0,0);

-- Pat 3
DELETE FROM `creature_movement` WHERE `id`=152512;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152512,1,-2400.481,3157.432,9.24527,0,0,0),
(152512,2,-2411.25,3154.885,12.51691,0,0,0),
(152512,3,-2425.553,3163.988,17.89025,0,0,0),
(152512,4,-2429.365,3184.917,18.08345,0,0,0),
(152512,5,-2421.878,3196.283,18.08459,0,0,0),
(152512,6,-2409.75,3196.483,18.08328,0,0,0),
(152512,7,-2401.37,3186.509,18.08301,0,0,0),
(152512,8,-2403.097,3176.193,18.08498,0,0,0),
(152512,9,-2411.921,3170.701,18.0855,0,0,0),
(152512,10,-2421.156,3170.403,18.08393,0,0,0),
(152512,11,-2424.846,3168.233,18.08253,0,0,0),
(152512,12,-2417.574,3160.759,15.48746,0,0,0),
(152512,13,-2409.663,3157.18,11.92867,0,0,0),
(152512,14,-2399.892,3160.786,8.80059,0,0,0),
(152512,15,-2390.157,3169.781,3.504629,0,0,0),
(152512,16,-2388.426,3169.413,3.038642,0,0,0);

-- Pat 4
DELETE FROM `creature_movement` WHERE `id`=152507;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152507,1,-2265.763,3110.671,25.01889,0,0,0),
(152507,2,-2268.214,3107.563,25.01642,0,0,0),
(152507,3,-2268.52,3102.484,25.01386,0,0,0),
(152507,4,-2265.967,3096.519,24.34951,0,0,0),
(152507,5,-2266.848,3089.23,23.04359,0,0,0),
(152507,6,-2270.148,3082.036,21.52287,0,0,0),
(152507,7,-2276.251,3075.666,19.72087,0,0,0),
(152507,8,-2286.723,3072.353,17.02198,0,0,0),
(152507,9,-2295.428,3073.269,15.1231,0,0,0),
(152507,10,-2302.907,3078.166,13.82998,0,0,0),
(152507,11,-2295.428,3073.269,15.1231,0,0,0),
(152507,12,-2286.723,3072.353,17.02198,0,0,0),
(152507,13,-2276.251,3075.666,19.72087,0,0,0),
(152507,14,-2270.148,3082.036,21.52287,0,0,0),
(152507,15,-2266.848,3089.23,23.04359,0,0,0),
(152507,16,-2265.967,3096.519,24.34951,0,0,0),
(152507,17,-2268.52,3102.484,25.01386,0,0,0),
(152507,18,-2268.214,3107.563,25.01642,0,0,0),
(152507,19,-2265.763,3110.671,25.01889,0,0,0),
(152507,20,-2252.766,3119.429,27.38877,0,0,0);

-- Pat 5
DELETE FROM `creature_movement` WHERE `id`=152520;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152520,1,-2254.217,3224.904,5.11189,0,0,0),
(152520,2,-2249.498,3219.329,2.661664,0,0,0),
(152520,3,-2248.54,3212.486,0.2008621,0,0,0),
(152520,4,-2251.302,3207.916,-1.998069,0,0,0),
(152520,5,-2257.676,3204.946,-4.053625,0,0,0),
(152520,6,-2251.302,3207.916,-1.998069,0,0,0),
(152520,7,-2248.54,3212.486,0.2008621,0,0,0),
(152520,8,-2249.494,3219.303,2.65062,0,0,0),
(152520,9,-2254.217,3224.904,5.11189,0,0,0),
(152520,10,-2260.976,3226.1,5.344983,0,0,0);

-- Pat 6
DELETE FROM `creature_movement` WHERE `id` IN(152447,152502);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152447,1,-2295.782,3104.894,138.7525,0,0,0),
(152447,2,-2291.031,3106.786,138.7525,0,0,0),
(152447,3,-2285.467,3106.582,138.7527,0,0,0),
(152447,4,-2280.745,3103.699,138.7468,0,0,0),
(152447,5,-2277.174,3098.33,138.7533,0,0,0),
(152447,6,-2277.662,3092.126,138.7525,0,0,0),
(152447,7,-2281.936,3085.282,138.7524,0,0,0),
(152447,8,-2289.155,3083.634,139.7566,0,0,0),
(152447,9,-2296.14,3085.783,141.8156,0,0,0),
(152447,10,-2300.859,3092.531,144.2333,0,0,0),
(152447,11,-2300.672,3099.835,147.3188,0,0,0),
(152447,12,-2299.969,3105.141,149.6725,0,0,0),
(152447,13,-2292.289,3110.856,152.6214,0,0,0),
(152447,14,-2283.751,3110.493,152.8173,0,0,0),
(152447,15,-2276.066,3103.917,152.8173,0,0,0),
(152447,16,-2283.751,3110.493,152.8173,0,0,0),
(152447,17,-2292.289,3110.856,152.6214,0,0,0),
(152447,18,-2299.714,3105.331,149.7557,0,0,0),
(152447,19,-2300.636,3100.041,147.398,0,0,0),
(152447,20,-2300.859,3092.531,144.2333,0,0,0),
(152447,21,-2296.14,3085.783,141.8156,0,0,0),
(152447,22,-2289.155,3083.634,139.7566,0,0,0),
(152447,23,-2281.993,3085.269,138.7524,0,0,0),
(152447,24,-2277.662,3092.126,138.7525,0,0,0),
(152447,25,-2277.174,3098.33,138.7533,0,0,0),
(152447,26,-2280.745,3103.699,138.7468,0,0,0),
(152447,27,-2285.467,3106.582,138.7527,0,0,0),
(152447,28,-2291.031,3106.786,138.7525,0,0,0),
(152447,29,-2295.782,3104.894,138.7525,0,0,0),
(152447,30,-2298.116,3100.9,138.7522,0,0,0),

(152502,1,-2295.782,3104.894,138.7525,0,0,0),
(152502,2,-2291.031,3106.786,138.7525,0,0,0),
(152502,3,-2285.467,3106.582,138.7527,0,0,0),
(152502,4,-2280.745,3103.699,138.7468,0,0,0),
(152502,5,-2277.174,3098.33,138.7533,0,0,0),
(152502,6,-2277.662,3092.126,138.7525,0,0,0),
(152502,7,-2281.936,3085.282,138.7524,0,0,0),
(152502,8,-2289.155,3083.634,139.7566,0,0,0),
(152502,9,-2296.14,3085.783,141.8156,0,0,0),
(152502,10,-2300.859,3092.531,144.2333,0,0,0),
(152502,11,-2300.672,3099.835,147.3188,0,0,0),
(152502,12,-2299.969,3105.141,149.6725,0,0,0),
(152502,13,-2292.289,3110.856,152.6214,0,0,0),
(152502,14,-2283.751,3110.493,152.8173,0,0,0),
(152502,15,-2276.066,3103.917,152.8173,0,0,0),
(152502,16,-2283.751,3110.493,152.8173,0,0,0),
(152502,17,-2292.289,3110.856,152.6214,0,0,0),
(152502,18,-2299.714,3105.331,149.7557,0,0,0),
(152502,19,-2300.636,3100.041,147.398,0,0,0),
(152502,20,-2300.859,3092.531,144.2333,0,0,0),
(152502,21,-2296.14,3085.783,141.8156,0,0,0),
(152502,22,-2289.155,3083.634,139.7566,0,0,0),
(152502,23,-2281.993,3085.269,138.7524,0,0,0),
(152502,24,-2277.662,3092.126,138.7525,0,0,0),
(152502,25,-2277.174,3098.33,138.7533,0,0,0),
(152502,26,-2280.745,3103.699,138.7468,0,0,0),
(152502,27,-2285.467,3106.582,138.7527,0,0,0),
(152502,28,-2291.031,3106.786,138.7525,0,0,0),
(152502,29,-2295.782,3104.894,138.7525,0,0,0),
(152502,30,-2298.116,3100.9,138.7522,0,0,0);

-- Pat 7
DELETE FROM `creature_movement` WHERE `id`=152519;
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152519,1,-2272.588,3231.565,22.85181,0,0,0),
(152519,2,-2263.125,3235.337,22.8518,0,0,0),
(152519,3,-2251.486,3234.058,22.85181,0,0,0),
(152519,4,-2242.496,3225.877,22.8518,0,0,0),
(152519,5,-2239.404,3214.779,22.8518,0,0,0),
(152519,6,-2242.387,3202.843,22.8518,0,0,0),
(152519,7,-2249.017,3196.804,22.8231,0,0,0),
(152519,8,-2260.803,3194.38,22.85481,0,0,0),
(152519,9,-2271.738,3198.11,22.85224,0,0,0),
(152519,10,-2277.687,3205.128,22.85181,0,0,0),
(152519,11,-2271.738,3198.11,22.85224,0,0,0),
(152519,12,-2260.803,3194.38,22.85481,0,0,0),
(152519,13,-2249.017,3196.804,22.8231,0,0,0),
(152519,14,-2242.387,3202.843,22.8518,0,0,0),
(152519,15,-2239.479,3214.478,22.85181,0,0,0),
(152519,16,-2242.496,3225.877,22.8518,0,0,0),
(152519,17,-2251.287,3234.036,22.8518,0,0,0),
(152519,18,-2263.125,3235.337,22.8518,0,0,0),
(152519,19,-2272.588,3231.565,22.85181,0,0,0),
(152519,20,-2277.569,3226.189,22.85181,0,0,0);

-- "Pat 8"
DELETE FROM `creature_movement` WHERE `id` IN(152449,152468);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(152449,1,-2288.777,3095.463,13.91197,10000,1676901,4.502949),
(152468,1,-2288.777,3095.463,13.91197,10000,1676901,4.502949);

-- 1. Turn to random guy
-- 2. Emote
-- 3. Buddy emotes
-- 4. Randomly turn or emote
-- 5a. if emote, run step 4. again
-- 5b. if turn, start over from step 1.

-- ------------------------------------------
-- Scripts
-- ------------------------------------------

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1676901);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1676901,0,32,1,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Pause Waypoints',0,0,0,0),
(1676901,0,45,10016,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Start Relay Script 10016',0,0,0,0);

DELETE FROM `dbscripts_on_relay` WHERE `id` BETWEEN 10000 AND 10020;
INSERT INTO `dbscripts_on_relay` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(10000,0,1,1,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - OneShotTalk',0,0,0,0),
(10001,0,1,5,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - OneShotExclamation',0,0,0,0),
(10002,0,1,6,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - OneShotQuestion',0,0,0,0),
(10003,0,1,14,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - OneShotRude',0,0,0,0),
(10004,0,1,15,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - OneShotRoar',0,0,0,0),
(10005,0,1,25,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - OneShotPoint',0,0,0,0),
(10006,0,1,153,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - OneShotLaughNoSheathe',0,0,0,0),
(10007,0,1,274,0,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - OneShotNo',0,0,0,0),

(10008,0,1,1,0,0,0,0,0,0,0,0,0,'Firewing Defender/Bloodwarder - OneShotTalk',0,0,0,0),
(10009,0,1,2,0,0,0,0,0,0,0,0,0,'Firewing Defender/Bloodwarder - OneShotBow',0,0,0,0),
(10010,0,1,5,0,0,0,0,0,0,0,0,0,'Firewing Defender/Bloodwarder - OneShotExclamation',0,0,0,0),
(10011,0,1,6,0,0,0,0,0,0,0,0,0,'Firewing Defender/Bloodwarder - OneShotQuestion',0,0,0,0),
(10012,0,1,66,0,0,0,0,0,0,0,0,0,'Firewing Defender/Bloodwarder - OneShotSalute',0,0,0,0),
(10013,0,1,153,0,0,0,0,0,0,0,0,0,'Firewing Defender/Bloodwarder - OneShotLaughNoSheathe',0,0,0,0),
(10014,0,1,273,0,0,0,0,0,0,0,0,0,'Firewing Defender/Bloodwarder - OneShotYes',0,0,0,0),
(10015,0,1,274,0,0,0,0,0,0,0,0,0,'Firewing Defender/Bloodwarder - OneShotNo',0,0,0,0),

(10016,0,45,0,10002,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Turn to random target Group 1-3',0,0,0,0),

(10017,0,45,0,10000,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Random Emote',0,0,0,0),
(10017,14,45,0,10003,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Either Random Emote again or Turn to random target Group 1-3',0,0,0,0),

(10018,0,36,0,0,0,0,0,0,0,5355,152448,17,'Firewing Defender/Warlock - Turn to random target Group 1',0,0,0,0),
(10018,0,36,0,0,0,0,0,0,0,1410,152492,17,'Firewing Defender/Warlock - Turn to random target Group 1',0,0,0,0),
(10018,1,45,0,10000,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Random Emote',0,0,0,0),
(10018,5,45,0,10001,0,0,0,0,0,5355,152448,16,'Firewing Defender/Bloodwarder - Random Emote',0,0,0,0),
(10018,5,45,0,10001,0,0,0,0,0,1410,152492,16,'Firewing Defender/Bloodwarder - Random Emote',0,0,0,0),
(10018,14,45,0,10003,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Either Random Emote again or Turn to random target Group 1-3',0,0,0,0),

(10019,0,36,0,0,0,0,0,0,0,5355,152446,17,'Firewing Defender/Warlock - Turn to random target Group 2',0,0,0,0),
(10019,0,36,0,0,0,0,0,0,0,1410,152508,17,'Firewing Defender/Warlock - Turn to random target Group 2',0,0,0,0),
(10019,1,45,0,10000,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Random Emote',0,0,0,0),
(10019,5,45,0,10001,0,0,0,0,0,5355,152446,16,'Firewing Defender/Bloodwarder - Random Emote',0,0,0,0),
(10019,5,45,0,10001,0,0,0,0,0,1410,152508,16,'Firewing Defender/Bloodwarder - Random Emote',0,0,0,0),
(10019,14,45,0,10003,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Either Random Emote again or Turn to random target Group 1-3',0,0,0,0),

(10020,0,36,0,0,0,0,0,0,0,5355,152436,17,'Firewing Defender/Warlock - Turn to random target Group 3',0,0,0,0),
(10020,0,36,0,0,0,0,0,0,0,1410,152506,17,'Firewing Defender/Warlock - Turn to random target Group 3',0,0,0,0),
(10020,1,45,0,10000,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Random Emote',0,0,0,0),
(10020,5,45,0,10001,0,0,0,0,0,5355,152436,16,'Firewing Defender/Bloodwarder - Random Emote',0,0,0,0),
(10020,5,45,0,10001,0,0,0,0,0,1410,152506,16,'Firewing Defender/Bloodwarder - Random Emote',0,0,0,0),
(10020,14,45,0,10003,0,0,0,0,0,0,0,0,'Firewing Defender/Warlock - Either Random Emote again or Turn to random target Group 1-3',0,0,0,0);

DELETE FROM dbscript_random_templates WHERE id BETWEEN 10000 AND 10003;
INSERT INTO dbscript_random_templates (id,type,target_id,chance) VALUES
(10000,1,10000,0),
(10000,1,10001,0),
(10000,1,10002,0),
(10000,1,10003,0),
(10000,1,10004,0),
(10000,1,10005,0),
(10000,1,10006,0),
(10000,1,10007,0),

(10001,1,10007,0),
(10001,1,10008,0),
(10001,1,10010,0),
(10001,1,10011,0),
(10001,1,10012,0),
(10001,1,10013,0),
(10001,1,10014,0),
(10001,1,10015,0),

(10002,1,10018,0),
(10002,1,10019,0),
(10002,1,10020,0),

(10003,1,10016,0),
(10003,1,10017,0);
