/// @description Insert description here

age++;
timeLeft=round((timecheck-age)/60);
//with(oEnemyParent){
//	if(distance_to_object(oTower)<oTower.energy+50){
		if(oTowerCapture.age==oTowerCapture.timecheck){
			room_goto(rGameOver); //game over they captured	
			audio_stop_all();
		}
//	}
	// NEEDS TO RESET! Currently not only does it not reset, the timer keeps ticking as game goes on and goes into negative
//}
