# Releases

```bash
git clone https://github.com/studzien/erlang_release_example
cd erlang_release_example

rm -rf _build deploy
mkdir -p deploy

git checkout 0.1.0
rebar3 tar
cp _build/default/rel/erlang_release_example/erlang_release_example-0.1.0.tar.gz deploy/
(cd deploy && tar xzf erlang_release_example-0.1.0.tar.gz)

./deploy/bin/erlang_release_example console
(erlang_release_example@MBP)1> current_version:get().
"0.1.0"

git checkout 0.2.0
rebar3 appup compile
rebar3 relup -u 0.1.0
rebar3 tar
mkdir -p deploy/releases/0.2.0
cp _build/default/rel/erlang_release_example/erlang_release_example-0.2.0.tar.gz deploy/releases/0.2.0

./deploy/bin/erlang_release_example upgrade 0.2.0
(erlang_release_example@MBP)3> current_version:get().
"0.2.0"

./deploy/bin/erlang_release_example downgrade 0.1.0
(erlang_release_example@MBP)4> current_version:get().
"0.1.0"
```
