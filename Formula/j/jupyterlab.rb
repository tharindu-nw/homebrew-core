class Jupyterlab < Formula
  include Language::Python::Virtualenv

  desc "Interactive environments for writing and running code"
  homepage "https://jupyter.org/"
  url "https://files.pythonhosted.org/packages/2f/a5/f0cfd8d8fd521eba1a0beddc201bd0131df8d1355eb4917e92a0ffbac5d6/jupyterlab-4.3.6.tar.gz"
  sha256 "2900ffdbfca9ed37c4ad7fdda3eb76582fd945d46962af3ac64741ae2d6b2ff4"
  license all_of: [
    "BSD-3-Clause",
    "MIT", # semver.py
  ]

  bottle do
    sha256 cellar: :any,                 arm64_sequoia: "4d1d2e5539d4eaed9793f52ad9a9c0c2a2b0e474ccd6a9559ee5ebd0837343f8"
    sha256 cellar: :any,                 arm64_sonoma:  "169ac2c426a14063930851a893c304a8b7c925d02698f90bbd2ed25458cb0a53"
    sha256 cellar: :any,                 arm64_ventura: "75c465700e38e105682f616a73f7e1d3f3108797479b2e4fe1ab52ec2f57bc04"
    sha256 cellar: :any,                 sonoma:        "7a3dd887a4b5353d5068aea6031f0d9c74000643ac03168e02e44af1bc2402dd"
    sha256 cellar: :any,                 ventura:       "e3325523c7da936ba1fa0ac9df2fd26e35c388bff4a8e0282872eeea8e7c6434"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "89b1dbc38c710438e35f1a1eb4123261ef0e6e3b10f3c575f077eb4a6dd4fc6b"
  end

  depends_on "cmake" => :build # for ipykernel
  depends_on "ninja" => :build # for ipykernel
  depends_on "rust" => :build # for rpds-py
  depends_on "certifi"
  depends_on "libyaml"
  depends_on "node"
  depends_on "pandoc"
  depends_on "python@3.13"
  depends_on "zeromq"

  uses_from_macos "libffi"
  uses_from_macos "libxml2"
  uses_from_macos "libxslt"

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/a3/73/199a98fc2dae33535d6b8e8e6ec01f8c1d76c9adb096c6b7d64823038cde/anyio-4.8.0.tar.gz"
    sha256 "1d9fe889df5212298c0c0723fa20479d1b94883a2df44bd3897aa91083316f7a"
  end

  resource "appnope" do
    url "https://files.pythonhosted.org/packages/35/5d/752690df9ef5b76e169e68d6a129fa6d08a7100ca7f754c89495db3c6019/appnope-0.1.4.tar.gz"
    sha256 "1de3860566df9caf38f01f86f65e0e13e379af54f9e4bee1e66b48f2efffd1ee"
  end

  resource "argon2-cffi" do
    url "https://files.pythonhosted.org/packages/31/fa/57ec2c6d16ecd2ba0cf15f3c7d1c3c2e7b5fcb83555ff56d7ab10888ec8f/argon2_cffi-23.1.0.tar.gz"
    sha256 "879c3e79a2729ce768ebb7d36d4609e3a78a4ca2ec3a9f12286ca057e3d0db08"
  end

  resource "argon2-cffi-bindings" do
    url "https://files.pythonhosted.org/packages/b9/e9/184b8ccce6683b0aa2fbb7ba5683ea4b9c5763f1356347f1312c32e3c66e/argon2-cffi-bindings-21.2.0.tar.gz"
    sha256 "bb89ceffa6c791807d1305ceb77dbfacc5aa499891d2c55661c6459651fc39e3"
  end

  resource "arrow" do
    url "https://files.pythonhosted.org/packages/2e/00/0f6e8fcdb23ea632c866620cc872729ff43ed91d284c866b515c6342b173/arrow-1.3.0.tar.gz"
    sha256 "d4540617648cb5f895730f1ad8c82a65f2dad0166f57b75f3ca54759c4d67a85"
  end

  resource "asttokens" do
    url "https://files.pythonhosted.org/packages/4a/e7/82da0a03e7ba5141f05cce0d302e6eed121ae055e0456ca228bf693984bc/asttokens-3.0.0.tar.gz"
    sha256 "0dcd8baa8d62b0c1d118b399b2ddba3c4aff271d0d7a9e0d4c1681c79035bbc7"
  end

  resource "async-lru" do
    url "https://files.pythonhosted.org/packages/80/e2/2b4651eff771f6fd900d233e175ddc5e2be502c7eb62c0c42f975c6d36cd/async-lru-2.0.4.tar.gz"
    sha256 "b8a59a5df60805ff63220b2a0c5b5393da5521b113cd5465a44eb037d81a5627"
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/5a/b0/1367933a8532ee6ff8d63537de4f1177af4bff9f3e829baf7331f595bb24/attrs-25.3.0.tar.gz"
    sha256 "75d7cefc7fb576747b2c81b4442d4d4a1ce0900973527c011d1030fd3bf4af1b"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/6b/d52e42361e1aa00709585ecc30b3f9684b3ab62530771402248b1b1d6240/babel-2.17.0.tar.gz"
    sha256 "0c54cffb19f690cdcc52a3b50bcbf71e07a808d1c80d549f2459b9d2cf0afb9d"
  end

  resource "beautifulsoup4" do
    url "https://files.pythonhosted.org/packages/f0/3c/adaf39ce1fb4afdd21b611e3d530b183bb7759c9b673d60db0e347fd4439/beautifulsoup4-4.13.3.tar.gz"
    sha256 "1bd32405dacc920b42b83ba01644747ed77456a65760e285fbc47633ceddaf8b"
  end

  resource "bleach" do
    url "https://files.pythonhosted.org/packages/76/9a/0e33f5054c54d349ea62c277191c020c2d6ef1d65ab2cb1993f91ec846d1/bleach-6.2.0.tar.gz"
    sha256 "123e894118b8a599fd80d3ec1a6d4cc7ce4e5882b1317a7e1ba69b56e95f991f"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/fc/97/c783634659c2920c3fc70419e3af40972dbaf758daa229a7d6ea6135c90d/cffi-1.17.1.tar.gz"
    sha256 "1c39c6016c32bc48dd54561950ebd6836e1670f2ae46128f67cf49e789c52824"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "comm" do
    url "https://files.pythonhosted.org/packages/e9/a8/fb783cb0abe2b5fded9f55e5703015cdf1c9c85b3669087c538dd15a6a86/comm-0.2.2.tar.gz"
    sha256 "3fd7a84065306e07bea1773df6eb8282de51ba82f77c72f9c85716ab11fe980e"
  end

  resource "debugpy" do
    url "https://files.pythonhosted.org/packages/51/d4/f35f539e11c9344652f362c22413ec5078f677ac71229dc9b4f6f85ccaa3/debugpy-1.8.13.tar.gz"
    sha256 "837e7bef95bdefba426ae38b9a94821ebdc5bea55627879cd48165c90b9e50ce"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/43/fa/6d96a0978d19e17b68d634497769987b16c8f4cd0a7a05048bec693caa6b/decorator-5.2.1.tar.gz"
    sha256 "65f266143752f734b0a7cc83c46f4618af75b8c5911b00ccb61d0ac9b6da0360"
  end

  resource "defusedxml" do
    url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
    sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
  end

  resource "executing" do
    url "https://files.pythonhosted.org/packages/91/50/a9d80c47ff289c611ff12e63f7c5d13942c65d68125160cefd768c73e6e4/executing-2.2.0.tar.gz"
    sha256 "5d108c028108fe2551d1a7b2e8b713341e2cb4fc0aa7dcf966fa4327a5226755"
  end

  resource "fastjsonschema" do
    url "https://files.pythonhosted.org/packages/8b/50/4b769ce1ac4071a1ef6d86b1a3fb56cdc3a37615e8c5519e1af96cdac366/fastjsonschema-2.21.1.tar.gz"
    sha256 "794d4f0a58f848961ba16af7b9c85a3e88cd360df008c59aac6fc5ae9323b5d4"
  end

  resource "fqdn" do
    url "https://files.pythonhosted.org/packages/30/3e/a80a8c077fd798951169626cde3e239adeba7dab75deb3555716415bd9b0/fqdn-1.5.1.tar.gz"
    sha256 "105ed3677e767fb5ca086a0c1f4bb66ebc3c100be518f0e0d755d9eae164d89f"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "hatch-jupyter-builder" do
    url "https://files.pythonhosted.org/packages/5b/f6/8c8b353e7c6476ca28caea0408b0a3778d8849cda16f3e8e8f3145162dae/hatch_jupyter_builder-0.9.1.tar.gz"
    sha256 "79278198d124c646b799c5e8dca8504aed9dcaaa88d071a09eb0b5c2009a58ad"
  end

  resource "hatch-nodejs-version" do
    url "https://files.pythonhosted.org/packages/af/b6/c9406cfa9edf740c6b3de6173408a159228eac0cee80eead4a5b9cc88848/hatch_nodejs_version-0.3.2.tar.gz"
    sha256 "8a7828d817b71e50bbbbb01c9bfc0b329657b7900c56846489b9c958de15b54c"
  end

  resource "hatchling" do
    url "https://files.pythonhosted.org/packages/8f/8a/cc1debe3514da292094f1c3a700e4ca25442489731ef7c0814358816bb03/hatchling-1.27.0.tar.gz"
    sha256 "971c296d9819abb3811112fc52c7a9751c8d381898f36533bb16f9791e941fd6"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/6a/41/d7d0a89eb493922c37d343b607bc1b5da7f5be7e383740b4753ad8943e90/httpcore-1.0.7.tar.gz"
    sha256 "8551cb62a169ec7162ac7be8d4817d561f60e08eaa485234898414bb5a8a0b4c"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "ipykernel" do
    url "https://files.pythonhosted.org/packages/e9/5c/67594cb0c7055dc50814b21731c22a601101ea3b1b50a9a1b090e11f5d0f/ipykernel-6.29.5.tar.gz"
    sha256 "f093a22c4a40f8828f8e330a9c297cb93dcab13bd9678ded6de8e5cf81c56215"
  end

  resource "ipython" do
    url "https://files.pythonhosted.org/packages/7d/ce/012a0f40ca58a966f87a6e894d6828e2817657cbdf522b02a5d3a87d92ce/ipython-9.0.2.tar.gz"
    sha256 "ec7b479e3e5656bf4f58c652c120494df1820f4f28f522fb7ca09e213c2aab52"
  end

  resource "ipython-pygments-lexers" do
    url "https://files.pythonhosted.org/packages/ef/4c/5dd1d8af08107f88c7f741ead7a40854b8ac24ddf9ae850afbcf698aa552/ipython_pygments_lexers-1.1.1.tar.gz"
    sha256 "09c0138009e56b6854f9535736f4171d855c8c08a563a0dcd8022f78355c7e81"
  end

  resource "isoduration" do
    url "https://files.pythonhosted.org/packages/7c/1a/3c8edc664e06e6bd06cce40c6b22da5f1429aa4224d0c590f3be21c91ead/isoduration-20.11.0.tar.gz"
    sha256 "ac2f9015137935279eac671f94f89eb00584f940f5dc49462a0c4ee692ba1bd9"
  end

  resource "jedi" do
    url "https://files.pythonhosted.org/packages/72/3a/79a912fbd4d8dd6fbb02bf69afd3bb72cf0c729bb3063c6f4498603db17a/jedi-0.19.2.tar.gz"
    sha256 "4770dc3de41bde3966b02eb84fbcf557fb33cce26ad23da12c742fb50ecb11f0"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "json5" do
    url "https://files.pythonhosted.org/packages/85/3d/bbe62f3d0c05a689c711cff57b2e3ac3d3e526380adb7c781989f075115c/json5-0.10.0.tar.gz"
    sha256 "e66941c8f0a02026943c52c2eb34ebeb2a6f819a0be05920a6f5243cd30fd559"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/6a/0a/eebeb1fa92507ea94016a2a790b93c2ae41a7e18778f85471dc54475ed25/jsonpointer-3.0.0.tar.gz"
    sha256 "2b2d729f2091522d61c3b31f82e11870f60b68f43fbc705cb76bf4b832af59ef"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/38/2e/03362ee4034a4c917f697890ccd4aec0800ccf9ded7f511971c75451deec/jsonschema-4.23.0.tar.gz"
    sha256 "d71497fef26351a33265337fa77ffeb82423f3ea21283cd9467bb03999266bc4"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/10/db/58f950c996c793472e336ff3655b13fbcf1e3b359dcf52dcf3ed3b52c352/jsonschema_specifications-2024.10.1.tar.gz"
    sha256 "0f38b83639958ce1152d02a7f062902c41c8fd20d558b0c34344292d417ae272"
  end

  resource "jupyter-client" do
    url "https://files.pythonhosted.org/packages/71/22/bf9f12fdaeae18019a468b68952a60fe6dbab5d67cd2a103cac7659b41ca/jupyter_client-8.6.3.tar.gz"
    sha256 "35b3a0947c4a6e9d589eb97d7d4cd5e90f910ee73101611f01283732bd6d9419"
  end

  resource "jupyter-console" do
    url "https://files.pythonhosted.org/packages/bd/2d/e2fd31e2fc41c14e2bcb6c976ab732597e907523f6b2420305f9fc7fdbdb/jupyter_console-6.6.3.tar.gz"
    sha256 "566a4bf31c87adbfadf22cdf846e3069b59a71ed5da71d6ba4d8aaad14a53539"
  end

  resource "jupyter-core" do
    url "https://files.pythonhosted.org/packages/00/11/b56381fa6c3f4cc5d2cf54a7dbf98ad9aa0b339ef7a601d6053538b079a7/jupyter_core-5.7.2.tar.gz"
    sha256 "aa5f8d32bbf6b431ac830496da7392035d6f61b4f54872f15c4bd2a9c3f536d9"
  end

  resource "jupyter-events" do
    url "https://files.pythonhosted.org/packages/9d/c3/306d090461e4cf3cd91eceaff84bede12a8e52cd821c2d20c9a4fd728385/jupyter_events-0.12.0.tar.gz"
    sha256 "fc3fce98865f6784c9cd0a56a20644fc6098f21c8c33834a8d9fe383c17e554b"
  end

  resource "jupyter-lsp" do
    url "https://files.pythonhosted.org/packages/85/b4/3200b0b09c12bc3b72d943d923323c398eff382d1dcc7c0dbc8b74630e40/jupyter-lsp-2.2.5.tar.gz"
    sha256 "793147a05ad446f809fd53ef1cd19a9f5256fd0a2d6b7ce943a982cb4f545001"
  end

  resource "jupyter-server" do
    url "https://files.pythonhosted.org/packages/61/8c/df09d4ab646141f130f9977b32b206ba8615d1969b2eba6a2e84b7f89137/jupyter_server-2.15.0.tar.gz"
    sha256 "9d446b8697b4f7337a1b7cdcac40778babdd93ba614b6d68ab1c0c918f1c4084"
  end

  resource "jupyter-server-terminals" do
    url "https://files.pythonhosted.org/packages/fc/d5/562469734f476159e99a55426d697cbf8e7eb5efe89fb0e0b4f83a3d3459/jupyter_server_terminals-0.5.3.tar.gz"
    sha256 "5ae0295167220e9ace0edcfdb212afd2b01ee8d179fe6f23c899590e9b8a5269"
  end

  resource "jupyterlab-pygments" do
    url "https://files.pythonhosted.org/packages/90/51/9187be60d989df97f5f0aba133fa54e7300f17616e065d1ada7d7646b6d6/jupyterlab_pygments-0.3.0.tar.gz"
    sha256 "721aca4d9029252b11cfa9d185e5b5af4d54772bb8072f9b7036f4170054d35d"
  end

  resource "jupyterlab-server" do
    url "https://files.pythonhosted.org/packages/0a/c9/a883ce65eb27905ce77ace410d83587c82ea64dc85a48d1f7ed52bcfa68d/jupyterlab_server-2.27.3.tar.gz"
    sha256 "eb36caca59e74471988f0ae25c77945610b887f777255aa21f8065def9e51ed4"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/b2/97/5d42485e71dfc078108a86d6de8fa46db44a1a9295e89c5d6d4a06e23a62/markupsafe-3.0.2.tar.gz"
    sha256 "ee55d3edf80167e48ea11a923c7386f4669df67d7994554387f84e7d8b0a2bf0"
  end

  resource "matplotlib-inline" do
    url "https://files.pythonhosted.org/packages/99/5b/a36a337438a14116b16480db471ad061c36c3694df7c2084a0da7ba538b7/matplotlib_inline-0.1.7.tar.gz"
    sha256 "8423b23ec666be3d16e16b60bdd8ac4e86e840ebd1dd11a30b9f117f2fa0ab90"
  end

  resource "mistune" do
    url "https://files.pythonhosted.org/packages/80/f7/f6d06304c61c2a73213c0a4815280f70d985429cda26272f490e42119c1a/mistune-3.1.2.tar.gz"
    sha256 "733bf018ba007e8b5f2d3a9eb624034f6ee26c4ea769a98ec533ee111d504dff"
  end

  resource "nbclient" do
    url "https://files.pythonhosted.org/packages/87/66/7ffd18d58eae90d5721f9f39212327695b749e23ad44b3881744eaf4d9e8/nbclient-0.10.2.tar.gz"
    sha256 "90b7fc6b810630db87a6d0c2250b1f0ab4cf4d3c27a299b0cde78a4ed3fd9193"
  end

  resource "nbconvert" do
    url "https://files.pythonhosted.org/packages/a3/59/f28e15fc47ffb73af68a8d9b47367a8630d76e97ae85ad18271b9db96fdf/nbconvert-7.16.6.tar.gz"
    sha256 "576a7e37c6480da7b8465eefa66c17844243816ce1ccc372633c6b71c3c0f582"
  end

  resource "nbformat" do
    url "https://files.pythonhosted.org/packages/6d/fd/91545e604bc3dad7dca9ed03284086039b294c6b3d75c0d2fa45f9e9caf3/nbformat-5.10.4.tar.gz"
    sha256 "322168b14f937a5d11362988ecac2a4952d3d8e3a2cbeb2319584631226d5b3a"
  end

  resource "nest-asyncio" do
    url "https://files.pythonhosted.org/packages/83/f8/51569ac65d696c8ecbee95938f89d4abf00f47d58d48f6fbabfe8f0baefe/nest_asyncio-1.6.0.tar.gz"
    sha256 "6f172d5449aca15afd6c646851f4e31e02c598d553a667e38cafa997cfec55fe"
  end

  resource "notebook" do
    url "https://files.pythonhosted.org/packages/71/0f/7781fed05f79d1047c039dfd17fbd6e6670bcf5ad330baa997bcc62525b5/notebook-7.3.3.tar.gz"
    sha256 "707a313fb882d35f921989eb3d204de942ed5132a44e4aa1fe0e8f24bb9dc25d"
  end

  resource "notebook-shim" do
    url "https://files.pythonhosted.org/packages/54/d2/92fa3243712b9a3e8bafaf60aac366da1cada3639ca767ff4b5b3654ec28/notebook_shim-0.2.4.tar.gz"
    sha256 "b4b2cfa1b65d98307ca24361f5b30fe785b53c3fd07b7a47e89acb5e6ac638cb"
  end

  resource "overrides" do
    url "https://files.pythonhosted.org/packages/36/86/b585f53236dec60aba864e050778b25045f857e17f6e5ea0ae95fe80edd2/overrides-7.7.0.tar.gz"
    sha256 "55158fa3d93b98cc75299b1e67078ad9003ca27945c76162c1c0766d6f91820a"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
    sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
  end

  resource "pandocfilters" do
    url "https://files.pythonhosted.org/packages/70/6f/3dd4940bbe001c06a65f88e36bad298bc7a0de5036115639926b0c5c0458/pandocfilters-1.5.1.tar.gz"
    sha256 "002b4a555ee4ebc03f8b66307e287fa492e4a77b4ea14d3f934328297bb4939e"
  end

  resource "parso" do
    url "https://files.pythonhosted.org/packages/66/94/68e2e17afaa9169cf6412ab0f28623903be73d1b32e208d9e8e541bb086d/parso-0.8.4.tar.gz"
    sha256 "eb3a7b58240fb99099a345571deecc0f9540ea5f4dd2fe14c2a99d6b281ab92d"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/ca/bc/f35b8446f4531a7cb215605d100cd88b7ac6f44ab3fc94870c120ab3adbf/pathspec-0.12.1.tar.gz"
    sha256 "a482d51503a1ab33b1c67a6c3813a26953dbdc71c31dacaef9a838c4e29f5712"
  end

  resource "pexpect" do
    url "https://files.pythonhosted.org/packages/42/92/cc564bf6381ff43ce1f4d06852fc19a2f11d180f23dc32d9588bee2f149d/pexpect-4.9.0.tar.gz"
    sha256 "ee7d41123f3c9911050ea2c2dac107568dc43b2d3b0c7557a33212c398ead30f"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/13/fc/128cc9cb8f03208bdbf93d3aa862e16d376844a14f9a0ce5cf4507372de4/platformdirs-4.3.6.tar.gz"
    sha256 "357fb2acbc885b0419afd3ce3ed34564c13c9b95c89360cd9563f73aa5e2b907"
  end

  resource "pluggy" do
    url "https://files.pythonhosted.org/packages/96/2d/02d4312c973c6050a18b314a5ad0b3210edb65a906f868e31c111dede4a6/pluggy-1.5.0.tar.gz"
    sha256 "2cffa88e94fdc978c4c574f15f9e59b7f4201d439195c3715ca9e2486f1d0cf1"
  end

  resource "prometheus-client" do
    url "https://files.pythonhosted.org/packages/62/14/7d0f567991f3a9af8d1cd4f619040c93b68f09a02b6d0b6ab1b2d1ded5fe/prometheus_client-0.21.1.tar.gz"
    sha256 "252505a722ac04b0456be05c05f75f45d760c2911ffc45f2a06bcaed9f3ae3fb"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/a1/e1/bd15cb8ffdcfeeb2bdc215de3c3cffca11408d829e4b8416dcfe71ba8854/prompt_toolkit-3.0.50.tar.gz"
    sha256 "544748f3860a2623ca5cd6d2795e7a14f3d0e1c3c9728359013f79877fc89bab"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/2a/80/336820c1ad9286a4ded7e845b2eccfcb27851ab8ac6abece774a6ff4d3de/psutil-7.0.0.tar.gz"
    sha256 "7be9c3eba38beccb6495ea33afd982a44074b78f28c434a1f51cc07fd315c456"
  end

  resource "ptyprocess" do
    url "https://files.pythonhosted.org/packages/20/e5/16ff212c1e452235a90aeb09066144d0c5a6a8c0834397e03f5224495c4e/ptyprocess-0.7.0.tar.gz"
    sha256 "5c5d0a3b48ceee0b48485e0c26037c0acd7d29765ca3fbb5cb3831d347423220"
  end

  resource "pure-eval" do
    url "https://files.pythonhosted.org/packages/cd/05/0a34433a064256a578f1783a10da6df098ceaa4a57bbeaa96a6c0352786b/pure_eval-0.2.3.tar.gz"
    sha256 "5f4e983f40564c576c7c8635ae88db5956bb2229d7e9237d03b3c0b0190eaf42"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/1d/b2/31537cf4b1ca988837256c910a668b553fceb8f069bedc4b1c826024b52c/pycparser-2.22.tar.gz"
    sha256 "491c8be9c040f5390f5bf44a5b07752bd07f56edf992381b05c701439eec10f6"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-json-logger" do
    url "https://files.pythonhosted.org/packages/9e/de/d3144a0bceede957f961e975f3752760fbe390d57fbe194baf709d8f1f7b/python_json_logger-3.3.0.tar.gz"
    sha256 "12b7e74b17775e7d565129296105bbe3910842d9d0eb083fc83a6a617aa8df84"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "pyzmq" do
    url "https://files.pythonhosted.org/packages/3a/ed/c3876f3b3e8beba336214ce44e1efa1792dd537027cef24192ac2b077d7c/pyzmq-26.3.0.tar.gz"
    sha256 "f1cd68b8236faab78138a8fc703f7ca0ad431b17a3fcac696358600d4e6243b3"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2f/db/98b5c277be99dd18bfd91dd04e1b759cad18d1a338188c936e92f921c7e2/referencing-0.36.2.tar.gz"
    sha256 "df2e89862cd09deabbdba16944cc3f10feb6b3e6f18e902f7cc25609a34775aa"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "rfc3339-validator" do
    url "https://files.pythonhosted.org/packages/28/ea/a9387748e2d111c3c2b275ba970b735e04e15cdb1eb30693b6b5708c4dbd/rfc3339_validator-0.1.4.tar.gz"
    sha256 "138a2abdf93304ad60530167e51d2dfb9549521a836871b88d7f4695d0022f6b"
  end

  resource "rfc3986-validator" do
    url "https://files.pythonhosted.org/packages/da/88/f270de456dd7d11dcc808abfa291ecdd3f45ff44e3b549ffa01b126464d0/rfc3986_validator-0.1.1.tar.gz"
    sha256 "3d44bde7921b3b9ec3ae4e3adca370438eccebc676456449b145d533b240d055"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/0a/79/2ce611b18c4fd83d9e3aecb5cba93e1917c050f556db39842889fa69b79f/rpds_py-0.23.1.tar.gz"
    sha256 "7f3240dcfa14d198dba24b8b9cb3b108c06b68d45b7babd9eefc1038fdf7e707"
  end

  resource "send2trash" do
    url "https://files.pythonhosted.org/packages/fd/3a/aec9b02217bb79b87bbc1a21bc6abc51e3d5dcf65c30487ac96c0908c722/Send2Trash-1.8.3.tar.gz"
    sha256 "b18e7a3966d99871aefeb00cfbcfdced55ce4871194810fc71f4aa484b953abf"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/32/d2/7b171caf085ba0d40d8391f54e1c75a1cda9255f542becf84575cfd8a732/setuptools-76.0.0.tar.gz"
    sha256 "43b4ee60e10b0d0ee98ad11918e114c70701bc6051662a9a675a0496c1a158f4"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "soupsieve" do
    url "https://files.pythonhosted.org/packages/d7/ce/fbaeed4f9fb8b2daa961f90591662df6a86c1abf25c548329a86920aedfb/soupsieve-2.6.tar.gz"
    sha256 "e2e68417777af359ec65daac1057404a3c8a5455bb8abc36f1a9866ab1a51abb"
  end

  resource "stack-data" do
    url "https://files.pythonhosted.org/packages/28/e3/55dcc2cfbc3ca9c29519eb6884dd1415ecb53b0e934862d3559ddcb7e20b/stack_data-0.6.3.tar.gz"
    sha256 "836a778de4fec4dcd1dcd89ed8abff8a221f58308462e1c4aa2a3cf30148f0b9"
  end

  resource "terminado" do
    url "https://files.pythonhosted.org/packages/8a/11/965c6fd8e5cc254f1fe142d547387da17a8ebfd75a3455f637c663fb38a0/terminado-0.18.1.tar.gz"
    sha256 "de09f2c4b85de4765f7714688fff57d3e75bad1f909b589fde880460c753fd2e"
  end

  resource "tinycss2" do
    url "https://files.pythonhosted.org/packages/7a/fd/7a5ee21fd08ff70d3d33a5781c255cbe779659bd03278feb98b19ee550f4/tinycss2-1.4.0.tar.gz"
    sha256 "10c0972f6fc0fbee87c3edb76549357415e94548c1ae10ebccdea16fb404a9b7"
  end

  resource "tornado" do
    url "https://files.pythonhosted.org/packages/59/45/a0daf161f7d6f36c3ea5fc0c2de619746cc3dd4c76402e9db545bd920f63/tornado-6.4.2.tar.gz"
    sha256 "92bad5b4746e9879fd7bf1eb21dce4e3fc5128d71601f80005afa39237ad620b"
  end

  resource "traitlets" do
    url "https://files.pythonhosted.org/packages/eb/79/72064e6a701c2183016abbbfedaba506d81e30e232a68c9f0d6f6fcd1574/traitlets-5.14.3.tar.gz"
    sha256 "9ed0579d3502c94b4b3732ac120375cda96f923114522847de4b3bb98b96b6b7"
  end

  resource "trove-classifiers" do
    url "https://files.pythonhosted.org/packages/20/f0/154e82f3ad7c3496828aa8c12226eef5998dd05404f955ad698af8d19bb1/trove_classifiers-2025.3.13.13.tar.gz"
    sha256 "2a5e24ddafb20da2225a825fe167c4fd4ecbf312cef4310d67f19dc40da7dc8d"
  end

  resource "types-python-dateutil" do
    url "https://files.pythonhosted.org/packages/a9/60/47d92293d9bc521cd2301e423a358abfac0ad409b3a1606d8fbae1321961/types_python_dateutil-2.9.0.20241206.tar.gz"
    sha256 "18f493414c26ffba692a72369fea7a154c502646301ebfe3d56a04b3767284cb"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "uri-template" do
    url "https://files.pythonhosted.org/packages/31/c7/0336f2bd0bcbada6ccef7aaa25e443c118a704f828a0620c6fa0207c1b64/uri-template-1.3.0.tar.gz"
    sha256 "0e00f8eb65e18c7de20d595a14336e9f337ead580c70934141624b6d1ffdacc7"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  resource "webcolors" do
    url "https://files.pythonhosted.org/packages/7b/29/061ec845fb58521848f3739e466efd8250b4b7b98c1b6c5bf4d40b419b7e/webcolors-24.11.1.tar.gz"
    sha256 "ecb3d768f32202af770477b8b65f318fa4f566c22948673a977b00d589dd80f6"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz"
    sha256 "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/e6/30/fba0d96b4b5fbf5948ed3f4681f7da2f9f64512e1d303f94b4cc174c24a5/websocket_client-1.8.0.tar.gz"
    sha256 "3239df9f44da632f96012472805d40a23281a991027ce11d2f45a6f24ac4c3da"
  end

  def python3
    "python3.13"
  end

  def install
    ENV["JUPYTER_PATH"] = etc/"jupyter"

    # install packages into virtualenv and link all jupyter extensions
    skipped = %w[hatch-jupyter-builder hatch-nodejs-version jupyterlab-pygments notebook]
    venv = virtualenv_install_with_resources without: skipped
    bin.install_symlink (libexec/"bin").glob("jupyter*")

    # These resources require `jupyterlab` to build, causing a build loop
    # with pip's --no-binary. They need `jlpm` in PATH, so we need to add it.
    # https://github.com/jupyterlab/jupyterlab_pygments/issues/23
    ENV.prepend_path "PATH", bin
    skipped.each do |r|
      venv.pip_install(resource(r), build_isolation: false)
    end

    # remove bundled kernel
    rm_r(libexec/"share/jupyter/kernels")

    # install completion
    resource("jupyter-core").stage do
      bash_completion.install "examples/jupyter-completion.bash" => "jupyter"
      zsh_completion.install "examples/completions-zsh" => "_jupyter"
    end
  end

  def caveats
    <<~EOS
      Additional kernels can be installed into the shared jupyter directory
        #{etc}/jupyter
    EOS
  end

  service do
    run [opt_bin/"jupyter-lab"]
    keep_alive true
    log_path var/"log/jupyterlab.log"
    error_log_path var/"log/jupyterlab.log"
  end

  test do
    assert_match "The Jupyter terminal-based Console", shell_output("#{bin}/jupyter-console --help")
    assert_match python3, shell_output("#{bin}/jupyter kernelspec list")
    assert_match(/In \[1\]:.*exit.*Shutting down/m, pipe_output("#{bin}/jupyter-console 2>&1", "exit"))

    require "expect"
    require "open3"
    Open3.popen3(bin/"jupyter", "notebook", "--no-browser") do |_stdin, _stdout, stderr, wait_thread|
      timeout = (OS.mac? && Hardware::CPU.intel?) ? 30 : 15
      refute_nil stderr.expect("Serving notebooks from local directory:", timeout), "Expected running message"
    ensure
      Process.kill "TERM", wait_thread.pid
    end

    (testpath/"nbconvert.ipynb").write <<~JSON
      {
        "cells": []
      }
    JSON
    system bin/"jupyter-nbconvert", "nbconvert.ipynb", "--to", "html"
    assert_path_exists testpath/"nbconvert.html", "Failed to export HTML"

    assert_match "-F _jupyter", shell_output("bash -c 'source #{bash_completion}/jupyter && complete -p jupyter'")

    # Ensure that jupyter can load the jupyter lab package.
    assert_match(/^jupyterlab *: #{version}$/, shell_output(bin/"jupyter --version"))

    # Ensure that jupyter-lab binary was installed by pip.
    assert_equal version.to_s, shell_output(bin/"jupyter-lab --version").strip

    port = free_port
    spawn "#{bin}/jupyter-lab", "-y", "--port=#{port}", "--no-browser", "--ip=127.0.0.1", "--LabApp.token=''"
    sleep 15
    assert_match "<title>JupyterLab</title>", shell_output("curl --silent --fail http://localhost:#{port}/lab")
  end
end
