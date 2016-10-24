[boot]
directory: /drone/.sbt

[repositories]
  local
  typesafe-ivy-releases: http://repo.typesafe.com/typesafe/ivy-releases/, [organization]/[module]/[revision]/[type]s/[artifact](-[classifier]).[ext], bootOnly
  maven-central
  sonatype-snapshots: https://oss.sonatype.org/content/repositories/snapshots

[ivy]
ivy-home: /drone/.ivy2

