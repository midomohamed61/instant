void main() {
  var team = Team(
    name: 'Red Stars',
    age:25,
    Trainer: 'Coach John',
    attacks: [],
    defenders: [],
    goalkeepers: [],
  );

  var attackPlayer = AttackPlayer(name: 'Alex',age: 22, place: 'attack',numberGoals:  15);
  var defenderPlayer = DefenderPlayer(name: 'Emily',age: 28, place: 'defender',numberGoals:  10);
  var goalkeeperPlayer = GoalkeepersPlayer(name: 'David',age:  25,place:  'goalkeeper',numberGoals:  8);

  team.addPlayer(attackPlayer);
  team.addPlayer(defenderPlayer);
  team.addPlayer(goalkeeperPlayer);

  team.info();
}

class Player {
  String? name;
  int? age;
  String? place;

  Player({required this.name, required this.age, required this.place});
}

class AttackPlayer extends Player {
  int? numberGoals;
  AttackPlayer({required super.name, required super.age, required super.place,this.numberGoals});

}
class DefenderPlayer extends Player{
  int? numberGoals;
  DefenderPlayer({required super.name, required super.age, required super.place,this.numberGoals});
}
class GoalkeepersPlayer extends Player{
  int? numberGoals;
  GoalkeepersPlayer({required super.name, required super.age, required super.place,this.numberGoals});
}
 class Team{
  String name;
 int age;
 String Trainer;
 List<AttackPlayer> attacks; 
 List<DefenderPlayer> defenders;
 List<GoalkeepersPlayer> goalkeepers;
 Team({required this.name,required this.age,required this.Trainer,required this.attacks,required this.defenders,required this.goalkeepers});

void addPlayer(Player player) {
    if (player.age !>= 18 && player.age !<= 30) {
      if (player is AttackPlayer) {
        attacks.add(player);
      } else if (player is DefenderPlayer) {
        defenders.add(player);
      } else if (player is GoalkeepersPlayer) {
        goalkeepers.add(player);
      }
    }
  }
  info(){
    print("hi my team is $name , my age is & $age and my trainer is ${Trainer} and Attck players is ");
    for (var player in attacks) {
      print('${player.name} - Goals: ${player.numberGoals}');
    }
    print('Defender Players:');
    for (var player in defenders) {
      print('${player.name} - Assists: ${player.numberGoals}');
    }
    print('Goalkeeper Players:');
    for (var player in goalkeepers) {
      print('${player.name} - Clean Sheets: ${player.numberGoals}');
    }
  }
}
