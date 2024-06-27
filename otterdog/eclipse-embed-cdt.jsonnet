local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-embed-cdt') {
  settings+: {
    description: "",
    name: "Eclipse Embedded CDT (C/C++ Development Tools)",
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('Liqp') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "develop",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "An ANTLR based 'Liquid Template' parser and rendering engine.",
      has_issues: false,
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('assets') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      description: "Various assets, like images, icons, etc.",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('eclipse-embed-cdt.github.io') {
      allow_merge_commit: true,
      allow_squash_merge: false,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
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
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('eclipse-plugins') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
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
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('org.eclipse.epp.packages') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "embed-cdt",
      delete_branch_on_merge: false,
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
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('web-jekyll') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
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
      workflows+: {
        default_workflow_permissions: "write",
      },
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
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
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
      workflows+: {
        default_workflow_permissions: "write",
      },
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
  ],
}
