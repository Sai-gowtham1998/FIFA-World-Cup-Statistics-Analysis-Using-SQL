show databases;

use project;

show tables;

select * from teams;
describe teams;

select * from stats_goals;
describe stats_goals;


#2
select distinct(team) from teams;


#3
select team from teams where `rank`=1 and `group`=7;


#4
select count(team)from teams;


#5
select team, matches_played from teams;


#6
select team,(wins/matches_played)*100 as win_percentage from teams;


#7
select team, goals_scored from teams
where goals_scored=(select max(goals_scored) from teams);


#8
select team, round((draws/matches_played)*100) as Draw_Percent 
from teams;


#9
select team, goals_scored from teams 
where goals_scored=(select min(goals_scored) from teams);


#10
select team, (losses/matches_played)*100 as loss_Percent
from teams order by loss_Percent asc;

#11
select avg(goal_difference) from teams;


#12
select team, points from teams where points=0;


#13
select * from teams 
where expected_goal_scored < exp_goal_conceded;


#14
select * from teams 
where exp_goal_difference between -0.5 and 0.5;


#15
select * from teams
order by exp_goal_difference_per_90 asc;


#16
select team, players_used from stats_goals
where players_used=(select max(players_used)from stats_goals); 


#17
select team, avg_age from stats_goals
order by avg_age asc;


#18
select team, avg(possession) as Avg_
from stats_goals group by team;


#19
select team, games from stats_goals
where games>=5;


#20
select team, minutes from stats_goals
where minutes > 600;


#21
select team, goals, assists from stats_goals
order by goals;


#22
select team, pens_made, pens_att from stats_goals
order by pens_made desc;


#23
select team, cards_yellow, cards_red from stats_goals
where cards_red=1 order by cards_yellow;


#24
select team, goals_per90, assists_per90, goals_assists_per90 from stats_goals
order by goals_assists_per90 desc;


#25
select team, goals_pens_per90, goals_assists_pens_per90 from stats_goals
order by goals_assists_pens_per90;


#26
select team, shots, shots_on_target, shots_on_target_pct from stats_goals
where shots_on_target_pct < 30 order by shots_on_target_pct;


#27
select team, shots_per90, shots_on_target_per90 from stats_goals
where team='Belgium';


#28
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance
from stats_goals order by average_shot_distance desc;


#29
select team, errors, touches from stats_goals
where errors= 0 and touches<1500;


#30
select team, fouls from stats_goals
where fouls=(select max(fouls) from stats_goals);


#31
select team, offsides from stats_goals
where offsides < 10 or offsides > 20;


#32
select team, aerials_won, aerials_lost, aerials_won_pct from stats_goals
order by aerials_won_pct desc;


#33
select `group`, count(team) from teams
group by `group`;


#34
select team, `group` from teams
where `group`=6;


#35
select team, `group` from teams where team="Australia";


#36. Write an SQL query to show group, average wins by each group
select `group`, avg(wins) from teams group by `group`;


#37
select `group`, max(expected_goal_scored) as Max_Score from teams
group by `group`order by Max_Score;


#38
select `group`, min(exp_goal_conceded) from teams
group by `group`order by min(exp_goal_conceded) desc;


#39
select `group`, avg(exp_goal_difference_per_90) from teams
group by `group`order by avg(exp_goal_difference_per_90);


#40
select team, goals_scored, goals_against from teams
where goals_scored = goals_against;


#41
select team, players_used from stats_goals
where players_used=(select max(players_used) from stats_goals);


#42
select team, players_used, avg_age, games, minutes from stats_goals
where minutes < 500 and minutes > 200;


#43
select * from teams order by points;


#44. Write an SQL query to show ALL UNIQUE team in ascending order by team
select distinct (team) from teams order by team;


#45
select t.`group`, avg(s.avg_age) as Avg_Age_Group 
from teams t join stats_goals s
on t.team=s.team group by t.`group` 
order by Avg_Age_Group desc;


/*46. Write an SQL query to show sum of fouls for 
 * each group and arrange it in ascending order by fouls.*/
select t.`group`, sum(s.fouls) as total_fouls 
from teams t join stats_goals s
on t.team=s.team group by `group` order by total_fouls;



#47
select t.`group`, sum(s.games) Total_games from teams t
join stats_goals s on t.team=s.team
group by `group` order by Total_games desc;


#48
select t.`group`, sum(s.players_used) Total_No_Players from teams t
join stats_goals s on t.team=s.team
group by `group` order by Total_No_Players;


#49
select t.`group`, sum(s.offsides) Total_Offsides from teams t
join stats_goals s on t.team=s.team
group by `group` order by Total_Offsides;


#50
select t.`group`, avg(s.passes_pct) Avg_Passes from teams t
join stats_goals s on t.team=s.team
group by `group` order by Avg_Passes desc;


#51
select t.`group`, avg(s.goals_per90) Avg_Goals from teams t
join stats_goals s on t.team=s.team
group by `group` order by Avg_Goals;







