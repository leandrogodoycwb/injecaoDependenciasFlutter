enum Env { HOMOL, MOCK }

class AppConfig {
  static Env env;

  static void setEnv(Env env) {
    AppConfig.env = env;
  }

  static bool isHomol() => env == Env.HOMOL;

  static bool isMock() => env == Env.MOCK;
}
