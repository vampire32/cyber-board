import 'package:flutter/material.dart';
import 'package:invovision_s_application1/presentation/loading_screen/loading_screen.dart';
import 'package:invovision_s_application1/presentation/menu_screen/menu_screen.dart';
import 'package:invovision_s_application1/presentation/guide_screen/guide_screen.dart';
import 'package:invovision_s_application1/presentation/create_playertab_container_screen/create_playertab_container_screen.dart';
import 'package:invovision_s_application1/presentation/createteamplayer_screen/createteamplayer_screen.dart';
import 'package:invovision_s_application1/presentation/createcompetitionchallenge_screen/createcompetitionchallenge_screen.dart';
import 'package:invovision_s_application1/presentation/createcompetitionleague_screen/createcompetitionleague_screen.dart';
import 'package:invovision_s_application1/presentation/createcompetitionplayoff_screen/createcompetitionplayoff_screen.dart';
import 'package:invovision_s_application1/presentation/createcompetitionchalleng_tab_container_screen/createcompetitionchalleng_tab_container_screen.dart';
import 'package:invovision_s_application1/presentation/createcompetitionone_screen/createcompetitionone_screen.dart';
import 'package:invovision_s_application1/presentation/profileplayer_screen/profileplayer_screen.dart';
import 'package:invovision_s_application1/presentation/profileteamone_screen/profileteamone_screen.dart';
import 'package:invovision_s_application1/presentation/competitionchallenge_screen/competitionchallenge_screen.dart';
import 'package:invovision_s_application1/presentation/competitionchallengeone_screen/competitionchallengeone_screen.dart';
import 'package:invovision_s_application1/presentation/competitiontableplayoff_tab_container_screen/competitiontableplayoff_tab_container_screen.dart';
import 'package:invovision_s_application1/presentation/competition_screen/competition_screen.dart';
import 'package:invovision_s_application1/presentation/end_screen/end_screen.dart';
import 'package:invovision_s_application1/presentation/prizes_screen/prizes_screen.dart';
import 'package:invovision_s_application1/presentation/randomorder_tab_container_screen/randomorder_tab_container_screen.dart';
import 'package:invovision_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loadingScreen = '/loading_screen';

  static const String menuScreen = '/menu_screen';

  static const String processcontainerPage = '/processcontainer_page';

  static const String guideScreen = '/guide_screen';

  static const String createPage = '/create_page';

  static const String createPlayerPage = '/create_player_page';

  static const String createPlayertabContainerScreen =
      '/create_playertab_container_screen';

  static const String createTeamPage = '/create_team_page';

  static const String createteamplayerScreen = '/createteamplayer_screen';

  static const String createcompetitionchallengeScreen =
      '/createcompetitionchallenge_screen';

  static const String createcompetitionleagueScreen =
      '/createcompetitionleague_screen';

  static const String createcompetitionplayoffScreen =
      '/createcompetitionplayoff_screen';

  static const String createcompetitionchallengPage =
      '/createcompetitionchalleng_page';

  static const String createcompetitionchallengTabContainerScreen =
      '/createcompetitionchalleng_tab_container_screen';

  static const String createcompetitiononeScreen =
      '/createcompetitionone_screen';

  static const String profileplayerScreen = '/profileplayer_screen';

  static const String profileteamoneScreen = '/profileteamone_screen';

  static const String competitionchallengeScreen =
      '/competitionchallenge_screen';

  static const String competitionchallengeoneScreen =
      '/competitionchallengeone_screen';

  static const String competitionplayoffonePage = '/competitionplayoffone_page';

  static const String competitionleagueThreePage =
      '/competitionleague_three_page';

  static const String competitionLeagueOnePage = '/competition_league_one_page';

  static const String competitionLeaguegroupPage =
      '/competition_leaguegroup_page';

  static const String competitionChallengeTwoPage =
      '/competition_challenge_two_page';

  static const String competitionstagetwoPage = '/competitionstagetwo_page';

  static const String competitionstagethreePage = '/competitionstagethree_page';

  static const String competitionStageonePage = '/competition_stageone_page';

  static const String competitionStageFourPage = '/competition_stage_four_page';

  static const String competitionStagePage = '/competition_stage_page';

  static const String competitionTableLeagueTwoPage =
      '/competition_table_league_two_page';

  static const String competitionTableLeagueThreePage =
      '/competition_table_league_three_page';

  static const String competitionTablePlayoffOnePage =
      '/competition_table_playoff_one_page';

  static const String competitiontablechallangeonePage =
      '/competitiontablechallangeone_page';

  static const String competitiontableleagueonePage =
      '/competitiontableleagueone_page';

  static const String competitiontableplayoffPage =
      '/competitiontableplayoff_page';

  static const String competitiontableplayoffTabContainerScreen =
      '/competitiontableplayoff_tab_container_screen';

  static const String competitionScreen = '/competition_screen';

  static const String competitionTableLeaguePage =
      '/competition_table_league_page';

  static const String competitionTablePlayofftwoPage =
      '/competition_table_playofftwo_page';

  static const String endScreen = '/end_screen';

  static const String prizesScreen = '/prizes_screen';

  static const String randomorderPage = '/randomorder_page';

  static const String randomorderTabContainerScreen =
      '/randomorder_tab_container_screen';

  static const String randomSeparateTwoPage = '/random_separate_two_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loadingScreen: LoadingScreen.builder,
        menuScreen: MenuScreen.builder,
        guideScreen: GuideScreen.builder,
        createPlayertabContainerScreen: CreatePlayertabContainerScreen.builder,
        createteamplayerScreen: CreateteamplayerScreen.builder,
        createcompetitionchallengeScreen:
            CreatecompetitionchallengeScreen.builder,
        createcompetitionleagueScreen: CreatecompetitionleagueScreen.builder,
        createcompetitionplayoffScreen: CreatecompetitionplayoffScreen.builder,
        createcompetitionchallengTabContainerScreen:
            CreatecompetitionchallengTabContainerScreen.builder,
        createcompetitiononeScreen: CreatecompetitiononeScreen.builder,
        profileplayerScreen: ProfileplayerScreen.builder,
        profileteamoneScreen: ProfileteamoneScreen.builder,
        competitionchallengeScreen: CompetitionchallengeScreen.builder,
        competitionchallengeoneScreen: CompetitionchallengeoneScreen.builder,
        competitiontableplayoffTabContainerScreen:
            CompetitiontableplayoffTabContainerScreen.builder,
        competitionScreen: CompetitionScreen.builder,
        endScreen: EndScreen.builder,
        prizesScreen: PrizesScreen.builder,
        randomorderTabContainerScreen: RandomorderTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoadingScreen.builder
      };
}
