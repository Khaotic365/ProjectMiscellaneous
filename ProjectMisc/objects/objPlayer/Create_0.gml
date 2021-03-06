//Creating hitpoints for player

sObjType = "NotWall";
bClicked = 0;
iDashTimer = 0;
bNormal = true;
iClickTimer = 60;
bCanDash = true;
bOnly = 0;
iStartX = 0;
iStartY = 0;
//iClickTimer = 60;
iMiddle = 0;
i = 10;
iClickX = 0;
iClickY = 0;
iClickRX = 0;
iClickRY = 0;
iDashTimerRight = 10;
iDashTimerLeft = 10;
iDashTimerUp = 10;
iDashTimerDown = 10;
iTimesUpRight = 1;
iTimesUpLeft = 1;
iTimesUpUp = 1;
iTimesUpDown = 1;
iHp = 3;
iHpmax = 3;
iSpd = 4;
iSlowTimer = 0;
bSpeedDecrease = false;
objCurrentNet = objPlayer;
bInvincible = false;
bSharkCollide = false;
iCollideTimer = 0;
iCollideTimer2 = 0;
iCollideTimerCrab = 0;
iCollideTimerSnake = 0;

//Elliminating player if damaged below 3 hitpoints

iRmMinX = 0;
iRmMinY = 0;
iRmMaxX = 6144;
iRmMaxY = 6144;

//Variables from objTest

randomize();
//sMoveMode = "BackForth";
//sMoveMode = "Jump";
sMoveMode = "None";
iMinSpeed = 2;
iMaxSpeed = 5;
iMoveSpd = random_range(iMinSpeed,iMaxSpeed);
iSpeedTimer = 100;
iTargetSpd = 4;
iJumpTimer = 125;
iStartY = y;
bJumping = false;
bFalling = false;
iJumpPoint = iStartY - 200;
//instLeftColl = 0;
//instRightColl = 0;
sObjType = "NotWall";
iSharkRange = 300;
bAfter = false;
bCaughtNetPlayer = false;
iCaughtTimerPlayer = 100;
iInvCounterPlayer = 0;
iInvCounterPlayerRand = 0;
bCaughtNetPlayerRand = false;
iCaughtTimerPlayerRand = 100;

iNetNearest = instance_nearest(objPlayer.x,objPlayer.y,objNet);
iNetNearestRand = instance_nearest(objPlayer.x,objPlayer.y,objNetRand);

bCaughtBagRand = false;
iBagRand = instance_nearest(x,y,objBag);
iInvCounterBagRand = 0;
iCaughtTimerBagRand = 100;

//show_debug_message(iBagRand);

bNet = false;
iBagRand = instance_nearest(x,y,objBag);

bKeyboard = false;
bMouse = false;

iTreasureCollect = 0;
iBubbleTimer = 60;

bHpG = true;
bHpY = true;
bHpR = true;


bubbles = part_system_create();
part_system_depth(bubbles,400);
//part_system_position(bubbles, x, y);

global.bubble = part_type_create();
part_type_shape(global.bubble, pt_shape_ring);
part_type_size(global.bubble, 0.1, 0.6, 0, 0.3);
part_type_scale(global.bubble, 0.17, 0.17);
part_type_colour1(global.bubble, c_white);
part_type_alpha2(global.bubble, 0.1, 0.8);
part_type_speed(global.bubble, 1, 3, 0, 0.1);
part_type_direction(global.bubble, 90, 90, 0, 1);
//part_type_gravity(global.p1, 0.20, 270);
part_type_orientation(global.bubble, 0, 0, 0, 0, 1);
//part_type_blend(global.p1, 1);
part_type_life(global.bubble, 8, 20);

bubble_emitter = part_emitter_create(bubbles);
//part_emitter_region(bubbles, bubble_emitter, x, x+10, y, y + 10, pt_shape_ring, ps_distr_linear);
//part_emitter_stream(bubbles, bubble_emitter, global.bubble, 1);