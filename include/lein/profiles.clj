{:user {:aliases {"clj-kondo" ["run" "-m" "clj-kondo.main"]}}
 :tools {:dependencies [[cheshire "5.10.0"]
                        [clj-time "0.15.2"]
                        [clj-commons/clj-yaml "0.7.1"]
                        [com.clojure-goes-fast/clj-async-profiler "0.5.1"]
                        [criterium "0.4.6"]
                        [org.clojure/tools.namespace "1.2.0"]
                        [clojure-complete "0.2.5"]
                        [org.clojure/test.check "0.10.0"]]
         :plugins [[lein-cloverage "1.2.2"]
                   [circleci/deps-plus "0.1.0-SNAPSHOT"]
                   [lein-pprint "1.3.2"]]}
 :repl {:dev-dependencies [#_[clojure-complete "0.2.6-SNAPSHOT"]]}}
