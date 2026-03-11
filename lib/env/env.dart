import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'lib/env/.env')
abstract class Env {
    @EnviedField(varName: 'READIFY_API_BASE_URL')
    static const String readifyApiBaseUrl = _Env.readifyApiBaseUrl ;

    
}