<div class="wrapper row1">
<% include Header %>
  <section id="shout" class="clear">
<% with currentNewsItem %>
	    <% if Impression %>
    <figure>
      <figcaption>
	      <% else %>
	      <div class="noImage">
	      <% end_if %>
        <h1>$Title</h1>
	<h3>$Author on $Created.Format(d-m-Y)</h3>
	<br />
        $Content
	<br />
	<a href="https://twitter.com/share" class="twitter-share-button" data-via="Casa_Laguna" data-dnt="true">Tweet</a>
	<br />
	<div class="fb-like" data-href="$BaseHref{$Up.URLSegment}/show/$URLSegment" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-font="segoe ui"></div>
	<br />
<div class="advert">
	<script type="text/javascript"><!--
google_ad_client = "ca-pub-8070811811760534";
/* New Site bar */
google_ad_slot = "8445263458";
google_ad_width = 468;
google_ad_height = 15;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</div>
	<% if AllowComments %>
	<hr />
	<% if Comments %>
	<h3>Comments</h3>
	<section id="comments">
	<ul>
	<% loop Comments %>
	<% if AkismetMarked == 0 %>
	<li class="comment_$EvenOdd">
		<header>
			<figure>
				<img src="http://www.gravatar.com/avatar/$MD5Comment?default=http%3A%2F%2Fwww.casa-laguna.net%2Fimages%2Fnessie_grav.png&amp;s=32" width="32" height="32" alt="$Name" />
			</figure>
		<address><strong>$Title</strong> by <strong><% if URL %><a href="$URL">$Name</a><% else %>$Name<% end_if %></strong></address> <time datetime="$Created">on $Created.Format(d-m-Y)</time>
		</header>
		<section>
		$Comment
		<br />$Gravatar
		</section>
	</li>
	<% else %>
	<% end_if %>
	<% end_loop %>
	</ul>
	</section>
	<hr>
	<% end_if %>
	$Up.CommentForm
	<% end_if %>
	    <% if Impression %>
      </figcaption>
	    <% with Impression %>
      <div>$SetSize(410,440)</div>
      <% end_with %>
    </figure>
	    <% else %>
	    </div>
      <% end_if %>
<% end_with %>
<div class="advert">
	<script type="text/javascript"><!--
google_ad_client = "ca-pub-8070811811760534";
/* New Site bar */
google_ad_slot = "8445263458";
google_ad_width = 468;
google_ad_height = 15;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</div>
  </section>
</div>
<div class="wrapper row2">
  <div id="container">
    <div id="homepage">
      <% include NewsItems %>
<section id="intro" class="clear">
      <% include StaffMembers %>
      <% include Specials %>
</section>
    </div>
        <div class="clear"></div>
  </div>
</div>