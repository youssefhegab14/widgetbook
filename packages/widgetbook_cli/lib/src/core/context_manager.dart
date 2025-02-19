import 'package:platform/platform.dart';

import '../git/git.dart';
import '../utils/utils.dart';
import 'context.dart';
import 'environment.dart';

class ContextManager {
  const ContextManager({
    this.platform = const LocalPlatform(),
    this.ciManager = const CiManager(),
    this.gitManager = const GitManager(),
  });

  final Platform platform;
  final CiManager ciManager;
  final GitManager gitManager;

  Future<Context?> load(
    String workingDir,
    Environment environment,
  ) async {
    if (!ciManager.isCI) {
      final repository = gitManager.load(workingDir);

      return Context(
        name: 'Local',
        workingDir: workingDir,
        environment: environment,
        user: await repository.user,
        project: await repository.name,
      );
    }

    if (ciManager.isAzure) {
      return Context(
        name: 'Azure',
        workingDir: workingDir,
        environment: environment,
        user: platform.environment['Agent.Name'],
        project: platform.environment['Build.Repository.Name'],
      );
    }

    if (ciManager.isBitbucket) {
      return Context(
        name: 'Bitbucket',
        workingDir: workingDir,
        environment: environment,
        user: platform.environment['BITBUCKET_STEP_TRIGGERER_UUID'],
        project: platform.environment['BITBUCKET_REPO_FULL_NAME'],
      );
    }

    if (ciManager.isCodemagic) {
      return Context(
        name: 'Codemagic',
        workingDir: workingDir,
        environment: environment,
        user: 'Codemagic',
        project: platform.environment['CM_REPO_SLUG'],
        providerSha: platform.environment['CM_COMMIT'],
      );
    }

    if (ciManager.isGitHub) {
      return Context(
        name: 'GitHub',
        workingDir: workingDir,
        environment: environment,
        user: platform.environment['GITHUB_ACTOR'],
        project: platform.environment['GITHUB_REPOSITORY'],
        providerSha: platform.environment['GITHUB_SHA'],
      );
    }

    if (ciManager.isGitLab) {
      return Context(
        name: 'GitLab',
        workingDir: workingDir,
        environment: environment,
        user: platform.environment['GITLAB_USER_NAME'],
        project: platform.environment['CI_PROJECT_NAME'],
      );
    }

    return null;
  }
}
