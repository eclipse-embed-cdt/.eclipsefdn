local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-embed-cdt') {
  settings+: {
    billing_email: "webmaster@eclpse-foundation.org",
    default_repository_permission: "none",
    default_workflow_permissions: "write",
    dependabot_alerts_enabled_for_new_repositories: false,
    dependabot_security_updates_enabled_for_new_repositories: false,
    dependency_graph_enabled_for_new_repositories: false,
    description: "",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: true,
    members_can_delete_repositories: true,
    name: "Eclipse Embedded CDT (C/C++ Development Tools)",
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
  },
  _repositories+:: [
    orgs.newRepo('Liqp') {
      allow_update_branch: false,
      default_branch: "develop",
      dependabot_alerts_enabled: false,
      description: "An ANTLR based 'Liquid Template' parser and rendering engine.",
      has_issues: false,
      homepage: "",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('assets') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      description: "Various assets, like images, icons, etc.",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('eclipse-embed-cdt.github.io') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      description: "The Eclipse Embedded CDT web static site.",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "master",
      gh_pages_source_path: "/docs",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "https://eclipse-embed-cdt.github.io/",
      topics+: [
        "cdt",
        "eclipse",
        "embedded",
        "static-site",
        "web"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('eclipse-plugins') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_security_updates_enabled: true,
      description: "The Eclipse Embedded CDT plug-ins for Arm & RISC-V C/C++ developers (formerly known as the GNU MCU Eclipse plug-ins). Includes the archive of previous plug-ins versions, as Releases.",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "http://eclipse-embed-cdt.github.io/",
      topics+: [
        "arm",
        "cdt",
        "eclipse",
        "eclipse-marketplace",
        "embedded",
        "plug-ins",
        "plugins",
        "risc-v"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('org.eclipse.epp.packages') {
      allow_update_branch: false,
      default_branch: "embed-cdt",
      dependabot_security_updates_enabled: true,
      description: "A fork of the Eclipse project used to generate distributable binaries, extended to include the Eclipse Embedded CDT plug-ins. The archive of previous packages is also here, as Releases.",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "",
      topics+: [
        "eclipse",
        "epp",
        "profiles",
        "rcp",
        "signing-profiles-enabled"
      ],
      web_commit_signoff_required: false,
    },
    orgs.newRepo('web-jekyll') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      description: "The Jekyll source code used to generate the project static web.",
      has_projects: false,
      has_wiki: false,
      homepage: "https://eclipse-embed-cdt.github.io/",
      topics+: [
        "jekyll",
        "static"
      ],
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://notify.travis-ci.org') {
          events+: [
            "create",
            "delete",
            "issue_comment",
            "member",
            "public",
            "pull_request",
            "push",
            "repository"
          ],
        },
      ],
      secrets: [
        orgs.newRepoSecret('ILG_TOKEN') {
          value: "********",
        },
      ],
      environments: [
        orgs.newEnvironment('BABURIBA'),
      ],
    },
    orgs.newRepo('web-preview') {
      allow_update_branch: false,
      default_branch: "master",
      dependabot_alerts_enabled: false,
      description: "Preview of the web-jekyll content.",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "master",
      gh_pages_source_path: "/docs",
      has_issues: false,
      has_projects: false,
      has_wiki: false,
      homepage: "https://eclipse-embed-cdt.github.io/web-preview/",
      topics+: [
        "jekyll"
      ],
      web_commit_signoff_required: false,
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
  ],
}
