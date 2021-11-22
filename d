[33mcommit 3b6ae1129e6b05b72ea4e6116ea3074eb9854d54[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m, [m[1;31morigin/HEAD[m[33m, [m[1;31mMybatisBoard/master[m[33m)[m
Author: uonod1323 <uonod1323@gmail.com>
Date:   Mon Nov 22 17:46:18 2021 +0900

    Mybatis first board

[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..c2065bc[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,37 @@[m
[32m+[m[32mHELP.md[m
[32m+[m[32m.gradle[m
[32m+[m[32mbuild/[m
[32m+[m[32m!gradle/wrapper/gradle-wrapper.jar[m
[32m+[m[32m!**/src/main/**/build/[m
[32m+[m[32m!**/src/test/**/build/[m
[32m+[m
[32m+[m[32m### STS ###[m
[32m+[m[32m.apt_generated[m
[32m+[m[32m.classpath[m
[32m+[m[32m.factorypath[m
[32m+[m[32m.project[m
[32m+[m[32m.settings[m
[32m+[m[32m.springBeans[m
[32m+[m[32m.sts4-cache[m
[32m+[m[32mbin/[m
[32m+[m[32m!**/src/main/**/bin/[m
[32m+[m[32m!**/src/test/**/bin/[m
[32m+[m
[32m+[m[32m### IntelliJ IDEA ###[m
[32m+[m[32m.idea[m
[32m+[m[32m*.iws[m
[32m+[m[32m*.iml[m
[32m+[m[32m*.ipr[m
[32m+[m[32mout/[m
[32m+[m[32m!**/src/main/**/out/[m
[32m+[m[32m!**/src/test/**/out/[m
[32m+[m
[32m+[m[32m### NetBeans ###[m
[32m+[m[32m/nbproject/private/[m
[32m+[m[32m/nbbuild/[m
[32m+[m[32m/dist/[m
[32m+[m[32m/nbdist/[m
[32m+[m[32m/.nb-gradle/[m
[32m+[m
[32m+[m[32m### VS Code ###[m
[32m+[m[32m.vscode/[m
[1mdiff --git a/H2 + mybatis.txt b/H2 + mybatis.txt[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/build.gradle b/build.gradle[m
[1mnew file mode 100644[m
[1mindex 0000000..3fb77d4[m
[1m--- /dev/null[m
[1m+++ b/build.gradle[m
[36m@@ -0,0 +1,35 @@[m
[32m+[m[32mplugins {[m
[32m+[m[32m    id 'org.springframework.boot' version '2.5.6'[m
[32m+[m[32m    id 'io.spring.dependency-management' version '1.0.11.RELEASE'[m
[32m+[m[32m    id 'java'[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mgroup = 'com.example'[m
[32m+[m[32mversion = '0.0.1-SNAPSHOT'[m
[32m+[m[32msourceCompatibility = '11'[m
[32m+[m
[32m+[m[32mconfigurations {[m
[32m+[m[32m    compileOnly {[m
[32m+[m[32m        extendsFrom annotationProcessor[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mrepositories {[m
[32m+[m[32m    mavenCentral()[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mdependencies {[m
[32m+[m[32m    implementation 'org.springframework.boot:spring-boot-starter-thymeleaf'[m
[32m+[m[32m    implementation 'org.springframework.boot:spring-boot-starter-web'[m
[32m+[m[32m    compileOnly 'org.projectlombok:lombok'[m
[32m+[m[32m    annotationProcessor 'org.projectlombok:lombok'[m
[32m+[m[32m    implementation 'org.mybatis.spring.boot:mybatis-spring-boot-starter:1.3.2'[m
[32m+[m[32m    developmentOnly 'org.springframework.boot:spring-boot-devtools'[m
[32m+[m[32m    runtimeOnly 'com.h2database:h2'[m
[32m+[m[32m    testImplementation 'org.springframework.boot:spring-boot-starter-test'[m
[32m+[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mtest {[m
[32m+[m[32m    useJUnitPlatform()[m
[32m+[m[32m}[m
[1mdiff --git a/gradle/wrapper/gradle-wrapper.jar b/gradle/wrapper/gradle-wrapper.jar[m
[1mnew file mode 100644[m
[1mindex 0000000..7454180[m
Binary files /dev/null and b/gradle/wrapper/gradle-wrapper.jar differ
[1mdiff --git a/gradle/wrapper/gradle-wrapper.properties b/gradle/wrapper/gradle-wrapper.properties[m
[1mnew file mode 100644[m
[1mindex 0000000..ffed3a2[m
[1m--- /dev/null[m
[1m+++ b/gradle/wrapper/gradle-wrapper.properties[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32mdistributionBase=GRADLE_USER_HOME[m
[32m+[m[32mdistributionPath=wrapper/dists[m
[32m+[m[32mdistributionUrl=https\://services.gradle.org/distributions/gradle-7.2-bin.zip[m
[32m+[m[32mzipStoreBase=GRADLE_USER_HOME[m
[32m+[m[32mzipStorePath=wrapper/dists[m
[1mdiff --git a/gradlew b/gradlew[m
[1mnew file mode 100644[m
[1mindex 0000000..1b6c787[m
[1m--- /dev/null[m
[1m+++ b/gradlew[m
[36m@@ -0,0 +1,234 @@[m
[32m+[m[32m#!/bin/sh[m
[32m+[m
[32m+[m[32m#[m
[32m+[m[32m# Copyright © 2015-2021 the original authors.[m
[32m+[m[32m#[m
[32m+[m[32m# Licensed under the Apache License, Version 2.0 (the "License");[m
[32m+[m[32m# you may not use this file except in compliance with the License.[m
[32m+[m[32m# You may obtain a copy of the License at[m
[32m+[m[32m#[m
[32m+[m[32m#      https://www.apache.org/licenses/LICENSE-2.0[m
[32m+[m[32m#[m
[32m+[m[32m# Unless required by applicable law or agreed to in writing, software[m
[32m+[m[32m# distributed under the License is distributed on an "AS IS" BASIS,[m
[32m+[m[32m# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.[m
[32m+[m[32m# See the License for the specific language governing permissions and[m
[32m+[m[32m# limitations under the License.[m
[32m+[m[32m#[m
[32m+[m
[32m+[m[32m##############################################################################[m
[32m+[m[32m#[m
[32m+[m[32m#   Gradle start up script for POSIX generated by Gradle.[m
[32m+[m[32m#[m
[32m+[m[32m#   Important for running:[m
[32m+[m[32m#[m
[32m+[m[32m#   (1) You need a POSIX-compliant shell to run this script. If your /bin/sh is[m
[32m+[m[32m#       noncompliant, but you have some other compliant shell such as ksh or[m
[32m+[m[32m#       bash, then to run this script, type that shell name before the whole[m
[32m+[m[32m#       command line, like:[m
[32m+[m[32m#[m
[32m+[m[32m#           ksh Gradle[m
[32m+[m[32m#[m
[32m+[m[32m#       Busybox and similar reduced shells will NOT work, because this script[m
[32m+[m[32m#       requires all of these POSIX shell features:[m
[32m+[m[32m#         * functions;[m
[32m+[m[32m#         * expansions «$var», «${var}», «${var:-default}», «${var+SET}»,[m
[32m+[m[32m#           «${var#prefix}», «${var%suffix}», and «$( cmd )»;[m
[32m+[m[32m#         * compound commands having a testable exit status, especially «case»;[m
[32m+[m[32m#         * various built-in commands including «command», «set», and «ulimit».[m
[32m+[m[32m#[m
[32m+[m[32m#   Important for patching:[m
[32m+[m[32m#[m
[32m+[m[32m#   (2) This script targets any POSIX shell, so it avoids extensions provided[m
[32m+[m[32m#       by Bash, Ksh, etc; in particular arrays are avoided.[m
[32m+[m[32m#[m
[32m+[m[32m#       The "traditional" practice of packing multiple parameters into a[m
[32m+[m[32m#       space-separated string is a well documented source of bugs and security[m
[32m+[m[32m#       problems, so this is (mostly) avoided, by progressively accumulating[m
[32m+[m[32m#       options in "$@", and eventually passing that to Java.[m
[32m+[m[32m#[m
[32m+[m[32m#       Where the inherited environment variables (DEFAULT_JVM_OPTS, JAVA_OPTS,[m
[32m+[m[32m#       and GRADLE_OPTS) rely on word-splitting, this is performed explicitly;[m
[32m+[m[32m#       see the in-line comments for details.[m
[32m+[m[32m#[m
[32m+[m[32m#       There are tweaks for specific operating systems such as AIX, CygWin,[m
[32m+[m[32m#       Darwin, MinGW, and NonStop.[m
[32m+[m[32m#[m
[32m+[m[32m#   (3) This script is generated from the Groovy template[m
[32m+[m[32m#       https://github.com/gradle/gradle/blob/master/subprojects/plugins/src/main/resources/org/gradle/api/internal/plugins/unixStartScript.txt[m
[32m+[m[32m#       within the Gradle project.[m
[32m+[m[32m#[m
[32m+[m[32m#       You can find Gradle at https://github.com/gradle/gradle/.[m
[32m+[m[32m#[m
[32m+[m[32m##############################################################################[m
[32m+[m
[32m+[m[32m# Attempt to set APP_HOME[m
[32m+[m
[32m+[m[32m# Resolve links: $0 may be a link[m
[32m+[m[32mapp_path=$0[m
[32m+[m
[32m+[m[32m# Need this for daisy-chained symlinks.[m
[32m+[m[32mwhile[m
[32m+[m[32m    APP_HOME=${app_path%"${app_path##*/}"}  # leaves a trailing /; empty if no leading path[m
[32m+[m[32m    [ -h "$app_path" ][m
[32m+[m[32mdo[m
[32m+[m[32m    ls=$( ls -ld "$app_path" )[m
[32m+[m[32m    link=${ls#*' -> '}[m
[32m+[m[32m    case $link in             #([m
[32m+[m[32m      /*)   app_path=$link ;; #([m
[32m+[m[32m      *)    app_path=$APP_HOME$link ;;[m
[32m+[m[32m    esac[m
[32m+[m[32mdone[m
[32m+[m
[32m+[m[32mAPP_HOME=$( cd "${APP_HOME:-./}" && pwd -P ) || exit[m
[32m+[m
[32m+[m[32mAPP_NAME="Gradle"[m
[32m+[m[32mAPP_BASE_NAME=${0##*/}[m
[32m+[m
[32m+[m[32m# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.[m
[32m+[m[32mDEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'[m
[32m+[m
[32m+[m[32m# Use the maximum available, or set MAX_FD != -1 to use that value.[m
[32m+[m[32mMAX_FD=maximum[m
[32m+[m
[32m+[m[32mwarn () {[m
[32m+[m[32m    echo "$*"[m
[32m+[m[32m} >&2[m
[32m+[m
[32m+[m[32mdie () {[m
[32m+[m[32m    echo[m
[32m+[m[32m    echo "$*"[m
[32m+[m[32m    echo[m
[32m+[m[32m    exit 1[m
[32m+[m[32m} >&2[m
[32m+[m
[32m+[m[32m# OS specific support (must be 'true' or 'false').[m
[32m+[m[32mcygwin=false[m
[32m+[m[32mmsys=false[m
[32m+[m[32mdarwin=false[m
[32m+[m[32mnonstop=false[m
[32m+[m[32mcase "$( uname )" in                #([m
[32m+[m[32m  CYGWIN* )         cygwin=true  ;; #([m
[32m+[m[32m  Darwin* )         darwin=true  ;; #([m
[32m+[m[32m  MSYS* | MINGW* )  msys=true    ;; #([m
[32m+[m[32m  NONSTOP* )        nonstop=true ;;[m
[32m+[m[32mesac[m
[32m+[m
[32m+[m[32mCLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar[m
[32m+[m
[32m+[m
[32m+[m[32m# Determine the Java command to use to start the JVM.[m
[32m+[m[32mif [ -n "$JAVA_HOME" ] ; then[m
[32m+[m[32m    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then[m
[32m+[m[32m        # IBM's JDK on AIX uses strange locations for the executables[m
[32m+[m[32m        JAVACMD=$JAVA_HOME/jre/sh/java[m
[32m+[m[32m    else[m
[32m+[m[32m        JAVACMD=$JAVA_HOME/bin/java[m
[32m+[m[32m    fi[m
[32m+[m[32m    if [ ! -x "$JAVACMD" ] ; then[m
[32m+[m[32m        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME[m
[32m+[m
[32m+[m[32mPlease set the JAVA_HOME variable in your environment to match the[m
[32m+[m[32mlocation of your Java installation."[m
[32m+[m[32m    fi[m
[32m+[m[32melse[m
[32m+[m[32m    JAVACMD=java[m
[32m+[m[32m    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.[m
[32m+[m
[32m+[m[32mPlease set the JAVA_HOME variable in your environment to match the[m
[32m+[m[32mlocation of your Java installation."[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# Increase the maximum file descriptors if we can.[m
[32m+[m[32mif ! "$cygwin" && ! "$darwin" && ! "$nonstop" ; then[m
[32m+[m[32m    case $MAX_FD in #([m
[32m+[m[32m      max*)[m
[32m+[m[32m        MAX_FD=$( ulimit -H -n ) ||[m
[32m+[m[32m            warn "Could not query maximum file descriptor limit"[m
[32m+[m[32m    esac[m
[32m+[m[32m    case $MAX_FD in  #([m
[32m+[m[32m      '' | soft) :;; #([m
[32m+[m[32m      *)[m
[32m+[m[32m        ulimit -n "$MAX_FD" ||[m
[32m+[m[32m            warn "Could not set maximum file descriptor limit to $MAX_FD"[m
[32m+[m[32m    esac[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# Collect all arguments for the java command, stacking in reverse order:[m
[32m+[m[32m#   * args from the command line[m
[32m+[m[32m#   * the main class name[m
[32m+[m[32m#   * -classpath[m
[32m+[m[32m#   * -D...appname settings[m
[32m+[m[32m#   * --module-path (only if needed)[m
[32m+[m[32m#   * DEFAULT_JVM_OPTS, JAVA_OPTS, and GRADLE_OPTS environment variables.[m
[32m+[m
[32m+[m[32m# For Cygwin or MSYS, switch paths to Windows format before running java[m
[32m+[m[32mif "$cygwin" || "$msys" ; then[m
[32m+[m[32m    APP_HOME=$( cygpath --path --mixed "$APP_HOME" )[m
[32m+[m[32m    CLASSPATH=$( cygpath --path --mixed "$CLASSPATH" )[m
[32m+[m
[32m+[m[32m    JAVACMD=$( cygpath --unix "$JAVACMD" )[m
[32m+[m
[32m+[m[32m    # Now convert the arguments - kludge to limit ourselves to /bin/sh[m
[32m+[m[32m    for arg do[m
[32m+[m[32m        if[m
[32m+[m[32m            case $arg in                                #([m
[32m+[m[32m              -*)   false ;;                            # don't mess with options #([m
[32m+[m[32m              /?*)  t=${arg#/} t=/${t%%/*}              # looks like a POSIX filepath[m
[32m+[m[32m                    [ -e "$t" ] ;;                      #([m
[32m+[m[32m              *)    false ;;[m
[32m+[m[32m            esac[m
[32m+[m[32m        then[m
[32m+[m[32m            arg=$( cygpath --path --ignore --mixed "$arg" )[m
[32m+[m[32m        fi[m
[32m+[m[32m        # Roll the args list around exactly as many times as the number of[m
[32m+[m[32m        # args, so each arg winds up back in the position where it started, but[m
[32m+[m[32m        # possibly modified.[m
[32m+[m[32m        #[m
[32m+[m[32m        # NB: a `for` loop captures its iteration list before it begins, so[m
[32m+[m[32m        # changing the positional parameters here affects neither the number of[m
[32m+[m[32m        # iterations, nor the values presented in `arg`.[m
[32m+[m[32m        shift                   # remove old arg[m
[32m+[m[32m        set -- "$@" "$arg"      # push replacement arg[m
[32m+[m[32m    done[m
[32m+[m[32mfi[m
[32m+[m
[32m+[m[32m# Collect all arguments for the java command;[m
[32m+[m[32m#   * $DEFAULT_JVM_OPTS, $JAVA_OPTS, and $GRADLE_OPTS can contain fragments of[m
[32m+[m[32m#     shell script including quotes and variable substitutions, so put them in[m
[32m+[m[32m#     double quotes to make sure that they get re-expanded; and[m
[32m+[m[32m#   * put everything else in single quotes, so that it's not re-expanded.[m
[32m+[m
[32m+[m[32mset -- \[m
[32m+[m[32m        "-Dorg.gradle.appname=$APP_BASE_NAME" \[m
[32m+[m[32m        -classpath "$CLASSPATH" \[m
[32m+[m[32m        org.gradle.wrapper.GradleWrapperMain \[m
[32m+[m[32m        "$@"[m
[32m+[m
[32m+[m[32m# Use "xargs" to parse quoted args.[m
[32m+[m[32m#[m
[32m+[m[32m# With -n1 it outputs one arg per line, with the quotes and backslashes removed.[m
[32m+[m[32m#[m
[32m+[m[32m# In Bash we could simply go:[m
[32m+[m[32m#[m
[32m+[m[32m#   readarray ARGS < <( xargs -n1 <<<"$var" ) &&[m
[32m+[m[32m#   set -- "${ARGS[@]}" "$@"[m
[32m+[m[32m#[m
[32m+[m[32m# but POSIX shell has neither arrays nor command substitution, so instead we[m
[32m+[m[32m# post-process each arg (as a line of input to sed) to backslash-escape any[m
[32m+[m[32m# character that might be a shell metacharacter, then use eval to reverse[m
[32m+[m[32m# that process (while maintaining the separation between arguments), and wrap[m
[32m+[m[32m# the whole thing up as a single "set" statement.[m
[32m+[m[32m#[m
[32m+[m[32m# This will of course break if any of these variables contains a newline or[m
[32m+[m[32m# an unmatched quote.[m
[32m+[m[32m#[m
[32m+[m
[32m+[m[32meval "set -- $([m
[32m+[m[32m        printf '%s\n' "$DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS" |[m
[32m+[m[32m        xargs -n1 |[m
[32m+[m[32m        sed ' s~[^-[:alnum:]+,./:=@_]~\\&~g; ' |[m
[32m+[m[32m        tr '\n' ' '[m
[32m+[m[32m    )" '"$@"'[m
[32m+[m
[32m+[m[32mexec "$JAVACMD" "$@"[m
[1mdiff --git a/gradlew.bat b/gradlew.bat[m
[1mnew file mode 100644[m
[1mindex 0000000..107acd3[m
[1m--- /dev/null[m
[1m+++ b/gradlew.bat[m
[36m@@ -0,0 +1,89 @@[m
[32m+[m[32m@rem[m
[32m+[m[32m@rem Copyright 2015 the original author or authors.[m
[32m+[m[32m@rem[m
[32m+[m[32m@rem Licensed under the Apache License, Version 2.0 (the "License");[m
[32m+[m[32m@rem you may not use this file except in compliance with the License.[m
[32m+[m[32m@rem You may obtain a copy of the License at[m
[32m+[m[32m@rem[m
[32m+[m[32m@rem      https://www.apache.org/licenses/LICENSE-2.0[m
[32m+[m[32m@rem[m
[32m+[m[32m@rem Unless required by applicable law or agreed to in writing, software[m
[32m+[m[32m@rem distributed under the License is distributed on an "AS IS" BASIS,[m
[32m+[m[32m@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.[m
[32m+[m[32m@rem See the License for the specific language governing permissions and[m
[32m+[m[32m@rem limitations under the License.[m
[32m+[m[32m@rem[m
[32m+[m
[32m+[m[32m@if "%DEBUG%" == "" @echo off[m
[32m+[m[32m@rem ##########################################################################[m
[32m+[m[32m@rem[m
[32m+[m[32m@rem  Gradle startup script for Windows[m
[32m+[m[32m@rem[m
[32m+[m[32m@rem ##########################################################################[m
[32m+[m
[32m+[m[32m@rem Set local scope for the variables with windows NT shell[m
[32m+[m[32mif "%OS%"=="Windows_NT" setlocal[m
[32m+[m
[32m+[m[32mset DIRNAME=%~dp0[m
[32m+[m[32mif "%DIRNAME%" == "" set DIRNAME=.[m
[32m+[m[32mset APP_BASE_NAME=%~n0[m
[32m+[m[32mset APP_HOME=%DIRNAME%[m
[32m+[m
[32m+[m[32m@rem Resolve any "." and ".." in APP_HOME to make it shorter.[m
[32m+[m[32mfor %%i in ("%APP_HOME%") do set APP_HOME=%%~fi[m
[32m+[m
[32m+[m[32m@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.[m
[32m+[m[32mset DEFAULT_JVM_OPTS="-Xmx64m" "-Xms64m"[m
[32m+[m
[32m+[m[32m@rem Find java.exe[m
[32m+[m[32mif defined JAVA_HOME goto findJavaFromJavaHome[m
[32m+[m
[32m+[m[32mset JAVA_EXE=java.exe[m
[32m+[m[32m%JAVA_EXE% -version >NUL 2>&1[m
[32m+[m[32mif "%ERRORLEVEL%" == "0" goto execute[m
[32m+[m
[32m+[m[32mecho.[m
[32m+[m[32mecho ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.[m
[32m+[m[32mecho.[m
[32m+[m[32mecho Please set the JAVA_HOME variable in your environment to match the[m
[32m+[m[32mecho location of your Java installation.[m
[32m+[m
[32m+[m[32mgoto fail[m
[32m+[m
[32m+[m[32m:findJavaFromJavaHome[m
[32m+[m[32mset JAVA_HOME=%JAVA_HOME:"=%[m
[32m+[m[32mset JAVA_EXE=%JAVA_HOME%/bin/java.exe[m
[32m+[m
[32m+[m[32mif exist "%JAVA_EXE%" goto execute[m
[32m+[m
[32m+[m[32mecho.[m
[32m+[m[32mecho ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%[m
[32m+[m[32mecho.[m
[32m+[m[32mecho Please set the JAVA_HOME variable in your environment to match the[m
[32m+[m[32mecho location of your Java installation.[m
[32m+[m
[32m+[m[32mgoto fail[m
[32m+[m
[32m+[m[32m:execute[m
[32m+[m[32m@rem Setup the command line[m
[32m+[m
[32m+[m[32mset CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar[m
[32m+[m
[32m+[m
[32m+[m[32m@rem Execute Gradle[m
[32m+[m[32m"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*[m
[32m+[m
[32m+[m[32m:end[m
[32m+[m[32m@rem End local scope for the variables with windows NT shell[m
[32m+[m[32mif "%ERRORLEVEL%"=="0" goto mainEnd[m
[32m+[m
[32m+[m[32m:fail[m
[32m+[m[32mrem Set variable GRADLE_EXIT_CONSOLE if you need the _script_ return code instead of[m
[32m+[m[32mrem the _cmd.exe /c_ return code![m
[32m+[m[32mif  not "" == "%GRADLE_EXIT_CONSOLE%" exit 1[m
[32m+[m[32mexit /b 1[m
[32m+[m
[32m+[m[32m:mainEnd[m
[32m+[m[32mif "%OS%"=="Windows_NT" endlocal[m
[32m+[m
[32m+[m[32m:omega[m
[1mdiff --git a/settings.gradle b/settings.gradle[m
[1mnew file mode 100644[m
[1mindex 0000000..eaa1ff7[m
[1m--- /dev/null[m
[1m+++ b/settings.gradle[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32mrootProject.name = 'mybatisboard'[m
[1mdiff --git a/src/main/java/c