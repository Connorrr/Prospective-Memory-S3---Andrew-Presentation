#Function: 		PM.sce
#Description:	Scenario File for Prospective Memory
#Programmer:	Connor Reid
#Created@:		7/7/14
#LastMod@:		7/7/14
#-------------------------------------------------------------------

scenario = "PM";
response_matching = simple_matching;
no_logfile = true;

active_buttons = 27;
button_codes = 1, 2, 3, 4, 5, 6, 7, 8 ,9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27;

default_background_color = 0,0,0;
default_font_size = 65;

write_codes = true;			#write codes to port
pulse_width = 10; 			#if port is parallel

pcl_file = "PM.pcl";

begin;

text {caption = "tmp"; font_size = 18;} ot_instructions_text;

trial{
	trial_duration = forever;
	trial_type = first_response;
	stimulus_event{
		picture{}instructions_pic;
		response_active = true;
	}instructions_stim_event;
}instructions;

trial{
	trial_duration = 3000;
	trial_type = fixed;
	picture{
		text{
			caption = "You have now completed all trials.  Thank you for your participation.";
			font_size = 18;
		}goodbye_text; x = 0; y = 0;
	}goodbye_pic;
}goodbye_trial;

trial{
	trial_duration = 1600;
	trial_type = first_response;
	stimulus_event{
		picture{
			text { caption = "1"; } stim_trial_text; x = 0; y = 0;
		}stim_trial_pic;
		response_active = true;
	}stim_trial_event;
}stim_trial;

trial{
	trial_duration = 500; #STUDY 1 THIS WAS SET TO 800ms
	trial_type = fixed;
	picture{
		text{ caption = "+"; font_size = 48;}fixation_text; x = 0; y = 0;
	}fixation_pic;
}fixation_trial;

trial{
	trial_duration = 100;
	trial_type = fixed;
	picture{}short_blank_pic;
}short_blank_trial;

trial{
	trial_duration = 800; #THIS IS THE TIME THE SCREEN GOES BLANK BETWEEN A STIMULUS PRESENTATION AND NEXT FIXATION POINT...STUDY 1 THIS WAS SET TO 1000ms
	trial_type = fixed;
	picture{}short_blank_pic2;
}short_blank_trial2;

trial{
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 3;
	picture{
		text{caption = "Please press the Space-Bar when you are ready"; font_size = 30;}space_txt; x = 0; y = 0;
	}space_pic;
}space_trial;

trial{
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 3;
	picture{
		text{caption = "Please press re-position your fingers on the Keyboard, then press the space-bar when you are ready to continue!"; font_size = 30;}reposition_text; x = 0; y = 0;
	}reposition_pic;
}reposition_trial;

trial{
	trial_duration = 2000;
	trial_type = fixed;
	picture{
		text{caption = "Target letter is"; font_size = 30;}target_letter_txt; x = 0; y = 0;
	}target_letter_pic;
}target_letter_trial;

trial{
	trial_duration = 1200;
	trial_type = fixed;
	picture{
		text{ caption = "+"; font_size = 48;}short_fixation_text; x = 0; y = 0;
	}short_fixation_pic;
}short_fixation_trial;

trial{
	trial_duration = forever;
	trial_type = first_response;
	stimulus_event{
		picture{
			text { caption = "A"; } target_trial_text; x = 0; y = 0;
		}target_trial_pic;
		response_active = true;
	}target_trial_event;
}target_trial;

trial{
	trial_duration = 2000;
	trial_type = first_response;
	picture{
		text{caption = "That was the wrong key, please try again"; font_size = 18;}return_txt; x = 0; y = 0;
	}return_pic;
}return_trial;

trial{
	trial_duration = 500;
	trial_type = fixed;
	picture{
		bitmap{ filename="img/tick.JPG"; scale_factor = 0.4;}response_bitmap; x = 0; y = 0;
	}practice_response_pic;
}practice_response_trial;

trial{
	trial_duration = 1000;
	trial_type = fixed;
	picture{
		
	}blank_pic;
}blank_trial;