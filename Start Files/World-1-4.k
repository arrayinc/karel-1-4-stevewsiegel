/*
 * File: World-1-4.k
 * ---------------------------
 * Why so many potholes everywhere? Write a reusable
 * function to make Karel check for potholes
 * autonomously.
 */

 import "turns";

 function FillAllPotholes(){
 	while(frontIsClear()){
 		fillPothole();
 		move();
 	}
 	fillPothole();
 }

 function fillPothole(){
 	if(rightIsClear()){
 		turnRight();
 		move();
 		if(noBeepersPresent()){
 			putBeeper();
 		}
 		turnAround();
 		move();
 		turnRight();
 	}
 }

 
