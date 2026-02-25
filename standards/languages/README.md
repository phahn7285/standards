=========================================================

languages/README.md

=========================================================



\# languages Standards



\## Standards

Implementation standards for programming languages, frameworks, tools, and configuration formats.



\## Scope

Programming languages, UI frameworks, infrastructure as code, CI tooling, testing frameworks, and scripting environments.



\## Responsibilities

\- Define how code is written, structured, tested, and executed

\- Establish tooling, framework, and configuration rules

\- Provide language- and framework-specific testing defaults



\## Usage

Applied based on detected or selected language, framework, or tool.

Selection and precedence are governed by agents/orchestration.md.



\## Structure

languages/

|-- ansible.md Ansible standards

|-- appium.md Appium standards

|-- asyncapi.md AsyncAPI standards

|-- bash.md Bash scripting standards

|-- bicep.md Bicep standards

|-- c.md C language standards

|-- catch2.md Catch2 standards

|-- cloudformation.md CloudFormation standards

|-- cpp.md C++ standards

|-- csharp-dotnet.md C# and .NET standards

|-- css.md CSS standards

|-- csh.md C shell standards

|-- cypress.md Cypress standards

|-- dart.md Dart standards

|-- detox.md Detox standards

|-- dockerfile.md Dockerfile standards

|-- elixir.md Elixir standards

|-- erlang.md Erlang standards

|-- gatling.md Gatling standards

|-- github-actions.md GitHub Actions standards

|-- gitlab-ci.md GitLab CI standards

|-- go.md Go standards

|-- go-testing.md Go testing standards

|-- googletest.md GoogleTest standards

|-- groovy.md Groovy standards

|-- helm.md Helm standards

|-- html.md HTML standards

|-- java.md Java standards

|-- jest.md Jest standards

|-- jmeter.md JMeter standards

|-- json.md JSON standards

|-- julia.md Julia standards

|-- k6.md k6 standards

|-- kotlin.md Kotlin standards

|-- kubernetes-yaml.md Kubernetes YAML standards

|-- kustomize.md Kustomize standards

|-- lua.md Lua standards

|-- makefile.md Makefile standards

|-- minitest.md Minitest standards

|-- mstest.md MSTest standards

|-- nginx.md NGINX standards

|-- nunit.md NUnit standards

|-- openapi.md OpenAPI standards

|-- opentofo.md OpenTofu standards

|-- php.md PHP standards

|-- playwright.md Playwright standards

|-- powershell.md PowerShell standards

|-- protobuf.md Protocol Buffers schema and compatibility standards

|-- pytest.md Pytest standards

|-- python.md Python standards

|-- r.md R standards

|-- react.md React (web) standards

|-- reactnative.md React Native (mobile) standards

|-- rspec.md RSpec standards

|-- ruby.md Ruby standards

|-- rust.md Rust standards

|-- scala.md Scala standards

|-- selenium.md Selenium standards

|-- sql.md SQL standards

|-- storybook.md Storybook standards

|-- swift.md Swift standards

|-- testify.md Testify standards

|-- terraform.md Terraform standards

|-- typescript.md TypeScript standards

|-- xunit.md xUnit standards

|-- yaml.md YAML standards

|-- zsh.md Zsh standards

`-- README.md Directory mapping



\## File Decomposition

Each file defines exactly one language, framework, or tool.

Framework-specific files override language-level files only for their domain.



\## Application Rules

\- Applied per technology choice

\- Must conform to agents standards

\- Default test frameworks are selected by orchestration when not explicitly specified

