# FIFA World Cup Statistics Analysis

## Project Overview
In this project, we analyze FIFA World Cup data using two key tables: `teams` and `stats_goals`. This analysis provides detailed insights into team performances and player statistics throughout the tournament. The data is utilized by sports analysts at Sky Sports Channel to highlight key moments, performances, and tactical decisions.

## Dataset Description

### 1. `teams`
This table captures detailed performance metrics for each team in the group stage. The key columns include:
- **team_name**: The name of the team.
- **game_date**: Date of the match.
- **goals_scored**: Total goals scored by the team.
- **goals_conceded**: Total goals conceded by the team.
- **shots_on_target**: Number of shots on target.
- **shots_off_target**: Number of shots off target.
- **possession**: Possession percentage.

### 2. `stats_goals`
This table provides overall statistics for each team at the current FIFA World Cup. The key columns include:
- **player_name**: Name of the player.
- **position**: Player's position.
- **number_of_appearances**: Number of appearances made by the player.
- **goals_scored**: Total goals scored by the player.
- **assists**: Total assists made by the player.
- **yellow_cards**: Total yellow cards received.
- **red_cards**: Total red cards received.

## Analysis Goals
1. **Join Tables**: Use the common `team` column to join `group_stage_team_stats` and `overall_wc_stats` for comprehensive insights.
2. **Performance Insights**: Analyze team performance based on goals scored, possession, and other metrics.
3. **Player Statistics**: Evaluate individual player contributions including goals, assists, and disciplinary records.
4. **Tactical Analysis**: Extract insights into tactical decisions and key moments from match statistics.

## SQL Queries
To achieve the above goals, several SQL queries can be used:
- **Join Query**: To combine data from both tables based on the common `team` column.
- **Aggregate Functions**: To compute total goals, average possession, and other aggregated metrics.
- **Filtering**: To focus on specific teams or matches for deeper analysis.

## Key Insights
- **Team Performance**: Detailed performance metrics provide insights into each team's effectiveness during the group stage.
- **Player Contributions**: Statistics highlight key players and their impact on the tournament.
- **Tactical Decisions**: Analysis of goals, possession, and shots offers a view into tactical decisions made by coaches.

