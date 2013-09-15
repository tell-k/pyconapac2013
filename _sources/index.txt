=================================================
Sphinx and ME
=================================================

.. revealjs:: Sphinx と 僕
 :title-heading: h2
 :subtitle: 〜 Sphinxと戯れたいあなたに送る入門編 〜
 :subtitle-heading: h5

 .. rv_small::

  PyCon Apac 2013.

.. revealjs:: Who are you?

 .. image:: images/tell-k.png
  :width: 200px

 .. raw:: html

  <ul>
  <li class="fragment">名前: tell-k(Teruhiko Kida)</li>
  <li class="fragment">所属: <a href="http://www.beproud.jp/">Beproud.inc</a></li>
  <li class="fragment">Twitter: <a href="https://twitter.com/tell_k">@tell_k</a></li>
  <li class="fragment">Github: <a href="https://github.com/tell-k">https://github.com/tell-k</a></li>
  <li class="fragment">Sphinx Theme<br />
  <ul>
    <li><a href="https://github.com/tell-k/sphinxjp.themes.basicstrap">sphinxjp.themes.basicstrap</a></li>
    <li><a href="https://github.com/tell-k/sphinxjp.themes.revealjs">sphinxjp.themes.revealjs</a></li>
  </ul>
  </li>
  </ul>

.. revealjs::  対象者

 .. raw:: html

  <ol>
  <li class="fragment">Pythonはなんとなく知ってる人</li>
  <li class="fragment">Sphinxとか知らない人</li>
  <li class="fragment">Sphinxを使い始めようかと思ってる人</li>
  <li class="fragment">Wikiとか書くのに飽きた人</li>
  <li class="fragment">宗教上の理由でExcelとかWordが使えない人</li>
  </ol>

.. revealjs:: 目次

 * Sphinx概要
 * HTMLテーマを変える
 * 中身と拡張の話
 * ドキュメント作成が捗る
 * 参考
 * まとめ

.. revealjs:: Sphinx概要

 * Sphinxとは
 * はじめてみる
 * ReStrucutedText
 * いろいろなアウトプット

.. revealjs:: Sphinxとは

 .. figure:: images/sphinxorg.png

  http://sphinx-doc.org/

.. revealjs::
 :noheading:

 Sphinx is a tool that makes it easy to create intelligent and beautiful documentation.

.. revealjs::
 :noheading:

 Sphinxは知的で美しいドキュメントを簡単に作成！

.. revealjs::

 .. figure:: images/pocoo.png

  http://www.pocoo.org/

.. revealjs::

 .. figure::  images/pocoo_team.png

  http://www.pocoo.org/team/

.. revealjs::

 .. figure:: images/pyconapac.png


.. revealjs:: はじめてみる

 .. rv_code::

  $ virtualenv --distribute env
  $ source env/bin activate

  $ mkdir sample-doc
  $ cd sample-doc

  $ pip install Sphinx
  $ sphinx-quickstart

  # 対話形式でSphinxのプロジェクト設定を行う

  $ make html

.. revealjs:: はじめてみる

 .. figure:: images/sampledoc.png

  sample docment

.. revealjs:: 初期構成

 .. rv_code::

   ./
    ├── Makefile
    ├── _build
    ├── _static
    ├── _templates
    ├── conf.py
    ├── index.rst
    └── make.bat

.. revealjs:: 

 .. figure:: images/reST.png

.. revealjs:: 

 .. rv_code::

   .. sample documentation master file, created by
      sphinx-quickstart on Tue Sep 10 18:28:57 2013.
      You can adapt this file completely to your liking, but it should at least
      contain the root `toctree` directive.

   Welcome to sample's documentation!
   ==================================

   Contents:

   .. toctree::
      :maxdepth: 2

   Indices and tables
   ==================

   * :ref:`genindex`
   * :ref:`modindex`
   * :ref:`search`


.. revealjs:: いろんなアウトプット
 :title-heading: h3

 pdf,
 latex,
 epub,
 ..etc

 .. image:: images/sphinximage.png

.. revealjs:: 

 .. rv_code::
  
   $ make latexpdf

 .. figure:: images/pdfimage.png


.. revealjs:: HTMLテーマを変えてみる

  * 標準テーマ
  * CSSを変更する
  * 外部テーマ利用
  * HTMLテーマの中身

.. revealjs:: 標準テーマ

 * agogo
 * basic
 * default
 * haiku
 * nature
 * pyramid
 * scrolls
 * sphinxdoc
 * traditional

.. revealjs:: 
 :noheading:

 conf.py

 .. rv_code::

  # The theme to use for HTML and HTML Help pages.  See the documentation for
  # a list of builtin themes.
  html_theme = 'nature'

 build

 .. rv_code::

  $ make html


.. revealjs::
 :noheading:

 .. figure:: images/nature_theme.png


.. revealjs:: CSSを変える

 _stacic/override_nature.css

 .. rv_code::

    @import url(https://fonts.googleapis.com/css?family=Ubuntu);
    div.body {
        font-family: Ubuntu, Arial, sans-serif;
        background-color: #dcd8d6;
    }
    div.related {
        background-color: #e46d3d;
    }
    div.body h1 {
        border-top: 20px solid #dcd8d6;
    }
    div.body h1, div.body h2, div.body h3, div.body h4, div.body h5, div.body h6 {
        font-family: Ubuntu, Arial, sans-serif;
        background-color: #c1b3ad;
    }

 conf.py

 .. rv_code::

  def setup(app):
      app.add_stylesheet('override_nature.css')

.. revealjs:: 
  :noheading:

  .. image:: images/override_nature.png


.. revealjs:: JSも追加可能

 conf.py

 .. rv_code::

  def setup(app):
      app.add_javascript('other.js')


.. revealjs:: 外部テーマ利用

 .. figure:: images/flask_github.png


.. revealjs::
 :noheading:

 save theme files to local

 .. rv_code::

  _theme/flask

 conf.py

 .. rv_code::

  sys.path.append(os.path.abspath('_theme'))
  html_theme_path = ['_theme']
  html_theme = 'flask'

.. revealjs:: 
 :noheading:

 .. figure:: images/flask_theme.png

.. revealjs::
 :noheading:

 .. figure:: images/sphinxjp_themecore.png 

    sphinxjp.themecore 0.1.3


.. revealjs::
 :noheading:

 .. figure:: images/sphinxjp_themes_list.png 

    sphinxjp theme list

.. revealjs::
 :noheading:

 install

 .. rv_code::

  $ pip install sphinxjp.themes.bizstyle

 conf.py

 .. rv_code::

  extensions += ['sphinxjp.themecore']
  html_theme = 'bizstyle'


.. revealjs:: 
 :noheading:

 .. figure:: images/bizstyle_theme.png

    sphinxjp.themes.bizstyle


.. revealjs:: HTMLテーマの中身

 .. rv_code::

     default/
        ├── layout.html
        ├── static
        │   ├── default.css_t
        │   └── sidebar.js_t
        └── theme.conf

 defaultテーマのファイルレイアウト

.. revealjs:: theme.conf

 .. rv_code::

    [theme]
    inherit = basic          # <= どのテーマを継承するか
    stylesheet = default.css # <= どのスタイルシートを利用するか
    pygments_style = sphinx  # <= ソースコードハイライトのスタイル

    [options]                # <= テーマ固有のオプション
    rightsidebar = false
    stickysidebar = false
    collapsiblesidebar = false
    externalrefs = false
    .
    .

.. revealjs:: layout.html

 .. rv_code::

   {#
       default/layout.html
       ~~~~~~~~~~~~~~~~~~~

       Sphinx layout template for the default theme.

       :copyright: Copyright 2007-2013 by the Sphinx team, see AUTHORS.
       :license: BSD, see LICENSE for details.
   #}
   {%- extends "basic/layout.html" %}

   {% if theme_collapsiblesidebar|tobool %}
   {% set script_files = script_files + ['_static/sidebar.js'] %}
   {% endif %}

 テンプレートにはJinja2を採用


.. revealjs:: layout.html

 theme.conf

 .. rv_code::

  collapsiblesidebar = true

 layout.html

 .. rv_code::

  {% if theme_collapsiblesidebar|tobool %} # => True

 conf.py

 .. rv_code::

  html_theme_options = {
    'collapsiblesidebar': True,
  }

 利用者が任意に変更できるオプションを追加できる

.. revealjs:: default.css_t

 .. rv_code::

   body {
       font-family: {{ theme_bodyfont }};  <= option
       font-size: 100%;
       background-color: {{ theme_footerbgcolor }}; <= option
       color: #000;
       margin: 0;
       padding: 0;
   }

 _tを付ける事でHTML同様Jinja2経由で処理される。

.. revealjs:: 中身と拡張の話

  * 拡張とは
  * ビルドの流れ
  * Directive
  * Role
  * Builder

.. revealjs:: 拡張とは

  * Sphinxの機能を拡張する事ができる
  * Sphinxに同梱 or 外部ライブラリ 
  * sphinx.ext〜 , sphinxcontrib〜 とか付いてるヤツ
  * https://bitbucket.org/birkenfeld/sphinx-contrib/

.. revealjs:: sphinx.ext.todo

 conf.py

 .. rv_code::

   # 拡張を宣言する
   extensions += ['sphinx.ext.todo']

   # TODOを表示させる(デフォはFalse)
   todo_include_todos = True

 index.rst

 .. rv_code::

  .. todo::

     あとで本気だす！

  .. todo::

     俺はあとでやるぞジョジョー!

  .. todolist::
  
.. revealjs:: 
 :noheading:

 todo

 .. figure:: images/todo.png 

 todolist

 .. figure:: images/todolist.png


.. revealjs:: ビルドの流れ

 .. figure:: images/build_flow.png
  
    http://sphinx-users.jp/doc11/ext/tutorial.html

.. revealjs:: 
 :noheading:

 .. figure:: images/build_flow_graph.png

 * フェーズ1の段階でDocツリーが生成
 * DocツリーはNodeという単位で構成
 * Docツリーは _build/doctrees以下に保存
 * フェーズ3で出力可能なNodeに変換
 * フェーズ4でBuilderに併せて出力

.. revealjs:: Directive

 * reSTで特別な意味を持つ文章のブロックを表現
 
 .. rv_code::

  .. ディレクティブ名:: 引数 ...
     :オプション: 値

     ディレクティブのコンテンツ
 
.. revealjs:: sphinxjp.themes.revealjs
 :data-background: _static/image/background.png

 ブロック内の文章

 .. rv_code::

  .. revealjs:: sphinxjp.themes.revealjs
     :data-background: _static/image/background.png

     ブロック内の文章

.. revealjs:: 

 .. figure:: images/revealjs_html.png

.. revealjs::
 :noheading:

 .. rv_code::

   class revealjs(nodes.General, nodes.Element): pass

   class RevealjsDirective(Directive):
       """ Reveal.JS slide entry  """
       
       node_class = revealjs

       def run(self):
           """ build revealjs node """

           # 省略〜

           node = self.node_class(text, **self.options)
           return [node]

.. revealjs:: 
 :noheading:

 .. rv_code::

   def visit_revealjs(self, node):
       """ build start tag for revealjs """
       
       # 省略 〜
           
       self.body.append(self.starttag(node, 'section', **section_attr))

   def depart_revealjs(self, node=None):
       """ build end tag for revealjs """
       self.body.append('＜/section＞\n')

   def setup(app):
       """Initialize """
       app.info('Initializing RevealJS theme directives')
       app.add_node(revealjs, html=(visit_revealjs, depart_revealjs))


.. revealjs:: Role

 * reSのマークアップの要素で、テキスト中にマーキングを行うことができます。

 .. rv_code::

  :ロール名:`コンテンツ`

.. revealjs:: PEP Role

 .. rv_code::

   Pythonのコーディングスタイルは :pep:`8` に従いましょう

 .. rv_code::

   Pythonのコーディングスタイルは 
   <span class="target" id="index-0"></span>
   <a class="pep reference external" href="http://www.python.org/dev/peps/pep-0008">
    <strong>PEP 8</strong>
   </a> 
   に従いましょう

.. revealjs:: Roleを使う時の注意

 Roleを使う時は両端にスペースを必須

 .. rv_code::

   × Pythonのコーディングスタイルは:pep:`8`に従いましょう
   ○ Pythonのコーディングスタイルは :pep:`8` に従いましょう

.. revealjs:: Roleも拡張可能

 * virtaulenvwrapperの作者
 * http://doughellmann.com/2010/05/defining-custom-roles-in-sphinx.html

.. revealjs:: Builder

 * Docツリーを最終的なアウトプットとして吐き出す
 * Builder自体でも独自用意する事ができる

 * http://www.freia.jp/taka/blog/rst2textile-0.1.0-released/index.html
 * https://github.com/nishio/rst2inao


.. revealjs:: ドキュメント作成が捗る

 * 自動ビルド
 * APIリファレンスを作る
 * DB定義をreST化する
 * 良く使う拡張

.. revealjs:: 自動ビルド(watchdog)

 * 毎回ビルドするのが面倒
 * ファイルを更新したら勝手にビルドしておいて欲しい

.. revealjs:: watchdog

 install

 .. rv_code::

  $ pip install watchdog

 watchmedo

 .. rv_code:: 

  $ watchmedo shell-command --recursive --patterns="*.rst" --wait --command='make html'

.. revealjs:: 自動ビルド(jenkins)

 * pythonアプリのドキュメントを書く事を想定
 * docsディレクトリにSphinxドキュメントを用意
 * Mecurialでソース管理
 * docs用のブランチを切っておく

 .. rv_code::

   project
    ├── apps
    ├── docs
    │   ├── Makefile
    │   ├── _build
    │   ├── _static
    │   ├── _templates
    │   ├── conf.py
    │   ├── index.rst
    │   └── make.bat
    ├── manage.py
    ├── polls
    └── requirementxs.tt

.. revealjs:: リポジトリの設定

 * docsブランチを指定

 .. figure:: images/jenkins1.png

.. revealjs:: ビルドの設定

 * 初回はvirtualenvを作成
 * 安全のため make clean

 .. figure:: images/jenkins2.png

.. revealjs::
 :noheading:

 * workspaceにビルドしたドキュメントが生成
 * シェルの中にWeb領域にコピーするのを追加しても良い
 * pushすれば勝手にビルドしてくれるの嬉しい
 * いつでも最新のドキュメントが共有できる
   
.. revealjs:: Read the Docs

 .. figure:: images/readthedocs.png

.. revealjs:: APIリファレンスを作る

 * sphinx.ext.autodocを利用する
 * sphinx-apidoc を利用して自動で生成

 conf.py

 .. rv_code::

  extensions += ['sphinx.ext.autodoc']

.. revealjs:: autodoc

 polls/models.py
 
 .. rv_code:: 

   from django.db import models

   class Poll(models.Model):
       question = models.CharField(max_length=200)
       pub_date = models.DateTimeField('date published')

   class Choice(models.Model):
       poll = models.ForeignKey(Poll)
       choice = models.CharField(max_length=200)
       votes = models.IntegerField()

.. revealjs:: autodoc
 
 .. rv_code:: 

    .. automodule:: polls.models
        :members:
        :undoc-members:
        :show-inheritance:

.. revealjs:: sphinx-apidoc

 * とはいえreSTかくのもダルい
 * pythonスクリプトからreSTを自動生成

 .. rv_code::

  $ sphinx-apidoc -f -T -o docs/api polls

.. revealjs:: 
 :noheading:

 .. figure:: images/autodoc.png

.. revealjs:: DB定義をreST化する

 * schema2rstを利用する
 * DBからテーブル情報を取得してreSTファイル化
 * 単なるreSTファイルなのでSphinxでビルド可能
 * MySQLのみ対応

 .. rv_code::

  $ pip install schema2rst

.. revealjs:: 設定ファイル作る

 config.yaml

 .. rv_code::

    db: 'polls'
    host: '127.0.0.1'
    user: 'user'
    passwd: 'password'
    port: '3306'

.. revealjs:: コマンド 実行

 * SQLAlchemyを利用して接続
 * configのDBからテーブル情報取得

 .. rv_code::

  $ schema2rst config.yaml > docs/schema.rst

.. revealjs::
 :noheading:

 .. rv_code::

   polls_poll
   ----------

   .. list-table::
      :header-rows: 1

      * - Fullname
        - Name
        - Type
        - NOT NULL
        - PKey
        - Default
        - Comment
      * - id
        - id
        - int(11)
        - False

.. revealjs::
 :noheading:

 .. figure:: images/schema2rst.png

.. revealjs:: 良く使う拡張

 * `sphinxcontrib-blockdiag <http://blockdiag.com/ja/blockdiag/sphinxcontrib.html>`_
 
 .. rv_small::

  ブロック図をかける素敵拡張。seqdiag, nwdiag, actdiag

 * `sphinxcontrib-httpdomain <http://pythonhosted.org/sphinxcontrib-httpdomain/>`_

 .. rv_small::
  
  HTTPインターフェースを定義できる。WebAPIの仕様書く時に便利
  
 * `sphinxcontrib-issuetracker <https://pypi.python.org/pypi/sphinxcontrib-issuetracker/0.7.2>`_

 .. rv_small::

  Github, Bitbucket等のissue trackerにリンクできる

.. revealjs:: 参考(Web)

 * `Sphinx-Users.jp <http://sphinx-users.jp/>`_

   * `逆引き辞典 <http://sphinx-users.jp/reverse-dict/index.html>`_
   * `ドキュメント資料 <http://sphinx-users.jp/articles/index.html>`_
   * `Sphinxを使用しているサイト <http://sphinx-users.jp/example.html>`_
   * `Sphinxテンプレート <http://sphinx-users.jp/templates.html>`_
   * `ドキュメント作りたくなってしまう魔法のツール <http://sphinx-users.jp/event/20101203_jus_benkyoukai/index.html>`_

 * `Sphinx Advent Calendar 2012 <http://connpass.com/event/1441/>`_
 * `Sphinx & blockdiag Advent Calendar(全部俺) <http://atnd.org/events/22450>`_

 * `SphinxCon JP 2013 Spring (2013/2/23) <http://sphinx-users.jp/event/20130223_sphinxconjp/index.html>`_
 * `SphinxCon JP 2012 (2012/9/16) <http://sphinx-users.jp/event/20130223_sphinxconjp/index.html>`_

.. revealjs:: 参考(書籍)

 * エキスパートPython

   * 第10章 プロジェクトのドキュメント作成
   * P264 〜

 * プロフェッショナルPython

   * Chapter 04 ドキュメント基盤を整える
   * P62 〜

 * パーフェクトPython

   * 19章 19-3 ドキュメンテーション(Sphinx)
   * P393 〜

.. revealjs:: まとめ

 * Sphinx概要
 * HTMLテーマを変える
 * 中身と拡張の話
 * ドキュメント作成が捗る
 * 参考

.. revealjs:: 今日発表しなかった事

 * Sphinxでのドキュメントの書き方(おい)
 * ReStructuredTextの詳しい書き方(おい)
 * 各種フォーマットでのビルドの仕方(おい)

.. revealjs:: 
 :data-background: _static/image/anzai.png

.. revealjs:: 
 :noheading:

 今日発売! ＼(^o^)／
 
 .. figure:: images/sphinx_start.png

.. revealjs::
 :data-background: _static/image/mikachan.png

.. revealjs::
 :noheading:
 :data-background: _static/image/powerslave.png

 .. raw:: html

  <h3 style="color: #fff; background-color: #000; filter:alpha(opacity=60); -moz-opacity:0.60; -khtml-opacity: 0.60; opacity:0.60;">
   <br />
   ご清聴ありがとうございました。<br />m(_ _)m
   <br />
   <br />
  </h3>
