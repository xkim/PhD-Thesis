//This file was generated from (Commercial) UPPAAL 4.0.15 rev. CB6BB307F6F681CB, November 2019

/*
After collecting the ballot Voter i=0 will eventually mark her choice
*/
Voter(0).has_ballot --> (!Sys.results || Voter(0).marked_choice)