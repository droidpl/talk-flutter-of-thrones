import 'package:meta/meta.dart';

/*
  {
    "titles": [
      "Lord Commander of the Night's Watch"
    ],
    "spouse": [

    ],
    "children": [

    ],
    "allegiance": [
      "House Stark",
      "Night's Watch"
    ],
    "books": [
      "A Game of Thrones",
      "A Clash of Kings",
      "A Storm of Swords",
      "A Feast for Crows",
      "A Dance with Dragons"
    ],
    "plod": 0,
    "longevity": [

    ],
    "plodB": 0.19394725561141968,
    "plodC": 0,
    "longevityB": [
      0.8060527443885803,
      0.7992352843284607,
      0.8354265093803406,
      0.6084668040275574,
      0.18627959489822388,
      0.19833599030971527,
      0.09789765626192093,
      0.08788727968931198,
      0.07237233966588974,
      0.07682874798774719,
      0.060974348336458206,
      0.06112829968333244,
      0.06699807941913605,
      0.06681221723556519,
      0.05129653215408325,
      0.06829609721899033,
      0.06660496443510056,
      0.05506491661071777,
      0.053465377539396286,
      0.03383256867527962,
      0.031670644879341125
    ],
    "longevityC": [

    ],
    "_id": "5cc08e61888dfb00103cd985",
    "name": "Jon Snow",
    "slug": "Jon_Snow",
    "gender": "male",
    "image": "https://awoiaf.westeros.org/thumb.php?f=Cristi_Balanescu_Jon_SnowGhost.png&width=300",
    "culture": "Northmen",
    "house": "House Stark",
    "birth": 283,
    "alive": true,
    "createdAt": "2019-04-24T16:27:13.460Z",
    "updatedAt": "2019-04-24T16:27:13.460Z",
    "__v": 1,
    "longevityStartB": 300,
    "pagerank": {
      "title": "Jon_Snow",
      "rank": 1504
    },
    "id": "5cc08e61888dfb00103cd985"
  },
 */
import 'package:json_annotation/json_annotation.dart';
part 'gotcharacter.g.dart';

@JsonSerializable(nullable: false, createToJson: false)
class GOTCharacter {
  final String name;
  final String gender;
  @JsonKey(name: "image")
  final String imageUrl;
  final String culture;
  final bool alive;

  GOTCharacter({@required this.name, @required this.gender, @required this.imageUrl, @required this.culture, @required this.alive});

  factory GOTCharacter.fromJson(Map<String, dynamic> json) => _$GOTCharacterFromJson(json);
}