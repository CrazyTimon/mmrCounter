import 'package:angular2/angular2.dart';

@Component(
    selector: 'main-app',
    templateUrl: 'main_app.html',
    styleUrls: const ['main_app.css'],
    directives: const [
      CORE_DIRECTIVES,
      FORM_DIRECTIVES
    ]
)
class AppComponent {
  MMR mmr = new MMR('0', '0');

  AppComponent() {
  }
}

class MMR {
  String count;
  String needed;

  String mathcCount(int winPoint) =>
      ((int.parse(needed, onError: (_) => 0) - int.parse(count, onError: (_) => 0)) / winPoint).toString();

  MMR(this.count, this.needed);
}