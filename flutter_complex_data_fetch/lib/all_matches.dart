class AllMatches {
  AllMatches({
      String? status, 
      Response? response, 
      String? etag, 
      String? modified, 
      String? datetime, 
      String? apiVersion,}){
    _status = status;
    _response = response;
    _etag = etag;
    _modified = modified;
    _datetime = datetime;
    _apiVersion = apiVersion;
}

  AllMatches.fromJson(dynamic json) {
    _status = json['status'];
    _response = json['response'] != null ? Response.fromJson(json['response']) : null;
    _etag = json['etag'];
    _modified = json['modified'];
    _datetime = json['datetime'];
    _apiVersion = json['api_version'];
  }
  String? _status;
  Response? _response;
  String? _etag;
  String? _modified;
  String? _datetime;
  String? _apiVersion;

  String? get status => _status;
  Response? get response => _response;
  String? get etag => _etag;
  String? get modified => _modified;
  String? get datetime => _datetime;
  String? get apiVersion => _apiVersion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_response != null) {
      map['response'] = _response?.toJson();
    }
    map['etag'] = _etag;
    map['modified'] = _modified;
    map['datetime'] = _datetime;
    map['api_version'] = _apiVersion;
    return map;
  }

}

class Response {
  Response({
      List<Items>? items, 
      int? totalItems, 
      int? totalPages,}){
    _items = items;
    _totalItems = totalItems;
    _totalPages = totalPages;
}

  Response.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _totalItems = json['total_items'];
    _totalPages = json['total_pages'];
  }
  List<Items>? _items;
  int? _totalItems;
  int? _totalPages;

  List<Items>? get items => _items;
  int? get totalItems => _totalItems;
  int? get totalPages => _totalPages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    map['total_items'] = _totalItems;
    map['total_pages'] = _totalPages;
    return map;
  }

}

class Items {
  Items({
      int? matchId, 
      String? title, 
      String? shortTitle, 
      String? subtitle, 
      int? format, 
      String? formatStr, 
      int? status, 
      String? statusStr, 
      String? statusNote, 
      String? verified, 
      String? preSquad, 
      String? oddsAvailable, 
      int? gameState, 
      String? gameStateStr, 
      String? domestic, 
      Competition? competition, 
      Teama? teama, 
      Teamb? teamb, 
      String? dateStart, 
      String? dateEnd, 
      int? timestampStart, 
      int? timestampEnd, 
      Venue? venue, 
      String? umpires, 
      String? referee, 
      String? equation, 
      String? live, 
      String? result, 
      int? resultType, 
      String? winMargin, 
      int? winningTeamId, 
      int? commentary, 
      int? wagon, 
      int? latestInningNumber, 
      Toss? toss,}){
    _matchId = matchId;
    _title = title;
    _shortTitle = shortTitle;
    _subtitle = subtitle;
    _format = format;
    _formatStr = formatStr;
    _status = status;
    _statusStr = statusStr;
    _statusNote = statusNote;
    _verified = verified;
    _preSquad = preSquad;
    _oddsAvailable = oddsAvailable;
    _gameState = gameState;
    _gameStateStr = gameStateStr;
    _domestic = domestic;
    _competition = competition;
    _teama = teama;
    _teamb = teamb;
    _dateStart = dateStart;
    _dateEnd = dateEnd;
    _timestampStart = timestampStart;
    _timestampEnd = timestampEnd;
    _venue = venue;
    _umpires = umpires;
    _referee = referee;
    _equation = equation;
    _live = live;
    _result = result;
    _resultType = resultType;
    _winMargin = winMargin;
    _winningTeamId = winningTeamId;
    _commentary = commentary;
    _wagon = wagon;
    _latestInningNumber = latestInningNumber;
    _toss = toss;
}

  Items.fromJson(dynamic json) {
    _matchId = json['match_id'];
    _title = json['title'];
    _shortTitle = json['short_title'];
    _subtitle = json['subtitle'];
    _format = json['format'];
    _formatStr = json['format_str'];
    _status = json['status'];
    _statusStr = json['status_str'];
    _statusNote = json['status_note'];
    _verified = json['verified'];
    _preSquad = json['pre_squad'];
    _oddsAvailable = json['odds_available'];
    _gameState = json['game_state'];
    _gameStateStr = json['game_state_str'];
    _domestic = json['domestic'];
    _competition = json['competition'] != null ? Competition.fromJson(json['competition']) : null;
    _teama = json['teama'] != null ? Teama.fromJson(json['teama']) : null;
    _teamb = json['teamb'] != null ? Teamb.fromJson(json['teamb']) : null;
    _dateStart = json['date_start'];
    _dateEnd = json['date_end'];
    _timestampStart = json['timestamp_start'];
    _timestampEnd = json['timestamp_end'];
    _venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    _umpires = json['umpires'];
    _referee = json['referee'];
    _equation = json['equation'];
    _live = json['live'];
    _result = json['result'];
    _resultType = json['result_type'];
    _winMargin = json['win_margin'];
    _winningTeamId = json['winning_team_id'];
    _commentary = json['commentary'];
    _wagon = json['wagon'];
    _latestInningNumber = json['latest_inning_number'];
    _toss = json['toss'] != null ? Toss.fromJson(json['toss']) : null;
  }
  int? _matchId;
  String? _title;
  String? _shortTitle;
  String? _subtitle;
  int? _format;
  String? _formatStr;
  int? _status;
  String? _statusStr;
  String? _statusNote;
  String? _verified;
  String? _preSquad;
  String? _oddsAvailable;
  int? _gameState;
  String? _gameStateStr;
  String? _domestic;
  Competition? _competition;
  Teama? _teama;
  Teamb? _teamb;
  String? _dateStart;
  String? _dateEnd;
  int? _timestampStart;
  int? _timestampEnd;
  Venue? _venue;
  String? _umpires;
  String? _referee;
  String? _equation;
  String? _live;
  String? _result;
  int? _resultType;
  String? _winMargin;
  int? _winningTeamId;
  int? _commentary;
  int? _wagon;
  int? _latestInningNumber;
  Toss? _toss;

  int? get matchId => _matchId;
  String? get title => _title;
  String? get shortTitle => _shortTitle;
  String? get subtitle => _subtitle;
  int? get format => _format;
  String? get formatStr => _formatStr;
  int? get status => _status;
  String? get statusStr => _statusStr;
  String? get statusNote => _statusNote;
  String? get verified => _verified;
  String? get preSquad => _preSquad;
  String? get oddsAvailable => _oddsAvailable;
  int? get gameState => _gameState;
  String? get gameStateStr => _gameStateStr;
  String? get domestic => _domestic;
  Competition? get competition => _competition;
  Teama? get teama => _teama;
  Teamb? get teamb => _teamb;
  String? get dateStart => _dateStart;
  String? get dateEnd => _dateEnd;
  int? get timestampStart => _timestampStart;
  int? get timestampEnd => _timestampEnd;
  Venue? get venue => _venue;
  String? get umpires => _umpires;
  String? get referee => _referee;
  String? get equation => _equation;
  String? get live => _live;
  String? get result => _result;
  int? get resultType => _resultType;
  String? get winMargin => _winMargin;
  int? get winningTeamId => _winningTeamId;
  int? get commentary => _commentary;
  int? get wagon => _wagon;
  int? get latestInningNumber => _latestInningNumber;
  Toss? get toss => _toss;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['match_id'] = _matchId;
    map['title'] = _title;
    map['short_title'] = _shortTitle;
    map['subtitle'] = _subtitle;
    map['format'] = _format;
    map['format_str'] = _formatStr;
    map['status'] = _status;
    map['status_str'] = _statusStr;
    map['status_note'] = _statusNote;
    map['verified'] = _verified;
    map['pre_squad'] = _preSquad;
    map['odds_available'] = _oddsAvailable;
    map['game_state'] = _gameState;
    map['game_state_str'] = _gameStateStr;
    map['domestic'] = _domestic;
    if (_competition != null) {
      map['competition'] = _competition?.toJson();
    }
    if (_teama != null) {
      map['teama'] = _teama?.toJson();
    }
    if (_teamb != null) {
      map['teamb'] = _teamb?.toJson();
    }
    map['date_start'] = _dateStart;
    map['date_end'] = _dateEnd;
    map['timestamp_start'] = _timestampStart;
    map['timestamp_end'] = _timestampEnd;
    if (_venue != null) {
      map['venue'] = _venue?.toJson();
    }
    map['umpires'] = _umpires;
    map['referee'] = _referee;
    map['equation'] = _equation;
    map['live'] = _live;
    map['result'] = _result;
    map['result_type'] = _resultType;
    map['win_margin'] = _winMargin;
    map['winning_team_id'] = _winningTeamId;
    map['commentary'] = _commentary;
    map['wagon'] = _wagon;
    map['latest_inning_number'] = _latestInningNumber;
    if (_toss != null) {
      map['toss'] = _toss?.toJson();
    }
    return map;
  }

}

/// text : "Kolkata Knight Riders won the toss & elected to field"
/// winner : 591
/// decision : 2

class Toss {
  Toss({
      String? text, 
      int? winner, 
      int? decision,}){
    _text = text;
    _winner = winner;
    _decision = decision;
}

  Toss.fromJson(dynamic json) {
    _text = json['text'];
    _winner = json['winner'];
    _decision = json['decision'];
  }
  String? _text;
  int? _winner;
  int? _decision;

  String? get text => _text;
  int? get winner => _winner;
  int? get decision => _decision;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['winner'] = _winner;
    map['decision'] = _decision;
    return map;
  }

}

class Venue {
  Venue({
      String? venueId, 
      String? name, 
      String? location, 
      String? timezone,}){
    _venueId = venueId;
    _name = name;
    _location = location;
    _timezone = timezone;
}

  Venue.fromJson(dynamic json) {
    _venueId = json['venue_id'];
    _name = json['name'];
    _location = json['location'];
    _timezone = json['timezone'];
  }
  String? _venueId;
  String? _name;
  String? _location;
  String? _timezone;

  String? get venueId => _venueId;
  String? get name => _name;
  String? get location => _location;
  String? get timezone => _timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['venue_id'] = _venueId;
    map['name'] = _name;
    map['location'] = _location;
    map['timezone'] = _timezone;
    return map;
  }

}


class Teamb {
  Teamb({
      int? teamId, 
      String? name, 
      String? shortName, 
      String? logoUrl, 
      String? scoresFull, 
      String? scores, 
      String? overs,}){
    _teamId = teamId;
    _name = name;
    _shortName = shortName;
    _logoUrl = logoUrl;
    _scoresFull = scoresFull;
    _scores = scores;
    _overs = overs;
}

  Teamb.fromJson(dynamic json) {
    _teamId = json['team_id'];
    _name = json['name'];
    _shortName = json['short_name'];
    _logoUrl = json['logo_url'];
    _scoresFull = json['scores_full'];
    _scores = json['scores'];
    _overs = json['overs'];
  }
  int? _teamId;
  String? _name;
  String? _shortName;
  String? _logoUrl;
  String? _scoresFull;
  String? _scores;
  String? _overs;

  int? get teamId => _teamId;
  String? get name => _name;
  String? get shortName => _shortName;
  String? get logoUrl => _logoUrl;
  String? get scoresFull => _scoresFull;
  String? get scores => _scores;
  String? get overs => _overs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['team_id'] = _teamId;
    map['name'] = _name;
    map['short_name'] = _shortName;
    map['logo_url'] = _logoUrl;
    map['scores_full'] = _scoresFull;
    map['scores'] = _scores;
    map['overs'] = _overs;
    return map;
  }

}


class Teama {
  Teama({
      int? teamId, 
      String? name, 
      String? shortName, 
      String? logoUrl, 
      String? scoresFull, 
      String? scores, 
      String? overs,}){
    _teamId = teamId;
    _name = name;
    _shortName = shortName;
    _logoUrl = logoUrl;
    _scoresFull = scoresFull;
    _scores = scores;
    _overs = overs;
}

  Teama.fromJson(dynamic json) {
    _teamId = json['team_id'];
    _name = json['name'];
    _shortName = json['short_name'];
    _logoUrl = json['logo_url'];
    _scoresFull = json['scores_full'];
    _scores = json['scores'];
    _overs = json['overs'];
  }
  int? _teamId;
  String? _name;
  String? _shortName;
  String? _logoUrl;
  String? _scoresFull;
  String? _scores;
  String? _overs;

  int? get teamId => _teamId;
  String? get name => _name;
  String? get shortName => _shortName;
  String? get logoUrl => _logoUrl;
  String? get scoresFull => _scoresFull;
  String? get scores => _scores;
  String? get overs => _overs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['team_id'] = _teamId;
    map['name'] = _name;
    map['short_name'] = _shortName;
    map['logo_url'] = _logoUrl;
    map['scores_full'] = _scoresFull;
    map['scores'] = _scores;
    map['overs'] = _overs;
    return map;
  }

}


class Competition {
  Competition({
      int? cid, 
      String? title, 
      String? abbr, 
      String? type, 
      String? category, 
      String? matchFormat, 
      String? status, 
      String? season, 
      String? datestart, 
      String? dateend, 
      String? totalMatches, 
      String? totalRounds, 
      String? totalTeams, 
      String? country,}){
    _cid = cid;
    _title = title;
    _abbr = abbr;
    _type = type;
    _category = category;
    _matchFormat = matchFormat;
    _status = status;
    _season = season;
    _datestart = datestart;
    _dateend = dateend;
    _totalMatches = totalMatches;
    _totalRounds = totalRounds;
    _totalTeams = totalTeams;
    _country = country;
}

  Competition.fromJson(dynamic json) {
    _cid = json['cid'];
    _title = json['title'];
    _abbr = json['abbr'];
    _type = json['type'];
    _category = json['category'];
    _matchFormat = json['match_format'];
    _status = json['status'];
    _season = json['season'];
    _datestart = json['datestart'];
    _dateend = json['dateend'];
    _totalMatches = json['total_matches'];
    _totalRounds = json['total_rounds'];
    _totalTeams = json['total_teams'];
    _country = json['country'];
  }
  int? _cid;
  String? _title;
  String? _abbr;
  String? _type;
  String? _category;
  String? _matchFormat;
  String? _status;
  String? _season;
  String? _datestart;
  String? _dateend;
  String? _totalMatches;
  String? _totalRounds;
  String? _totalTeams;
  String? _country;

  int? get cid => _cid;
  String? get title => _title;
  String? get abbr => _abbr;
  String? get type => _type;
  String? get category => _category;
  String? get matchFormat => _matchFormat;
  String? get status => _status;
  String? get season => _season;
  String? get datestart => _datestart;
  String? get dateend => _dateend;
  String? get totalMatches => _totalMatches;
  String? get totalRounds => _totalRounds;
  String? get totalTeams => _totalTeams;
  String? get country => _country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cid'] = _cid;
    map['title'] = _title;
    map['abbr'] = _abbr;
    map['type'] = _type;
    map['category'] = _category;
    map['match_format'] = _matchFormat;
    map['status'] = _status;
    map['season'] = _season;
    map['datestart'] = _datestart;
    map['dateend'] = _dateend;
    map['total_matches'] = _totalMatches;
    map['total_rounds'] = _totalRounds;
    map['total_teams'] = _totalTeams;
    map['country'] = _country;
    return map;
  }

}