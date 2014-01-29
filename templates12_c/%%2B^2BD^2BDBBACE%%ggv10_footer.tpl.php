<?php /* Smarty version 2.6.27, created on 2014-01-29 07:23:29
         compiled from ggv10_footer.tpl */ ?>
		<br clear="all" />
		</div>
	</div>
	<br clear="all" />
	<br  />
  </div>
  <div style="width: 650px; margin: 10px auto 0px auto;">
	<center> <span style="color: #333366; font-family: sans-serif;  font-size: 10px; font-weight: normal;"><?php echo $this->_tpl_vars['translatorcreditline']; ?>
</span></center>
  </div>
  <div style="width: 450px; margin: 10px auto 0px auto;">
	<center>
	  <span style="color: #333366; font-family: sans-serif;  font-size: 10px; font-weight: normal;">
		Gay Guide Vallarta is an Equal Opportunity Employer and Provider: We don't discriminate against
		any individuals or groups on the basis of ethnicity, national origin, gender, sexual orientation,
		marital status, age, disabilities, religion or political affiliations.
	  </span>
	</center>
  </div>
  

<?php if (! ( false && $this->_tpl_vars['bottomAd'] == NULL )): ?>
  <div id = "dv" style = "z-index:2 !important; display: none; position:fixed; bottom:0;left:0px;width: 100%; height:0px; ">
	<div style=" width: 950px; margin: 0px auto 0px auto;">
	  <?php if ($this->_tpl_vars['bottomAd'] != ''): ?>
		<?php echo $this->_tpl_vars['bottomAd']; ?>

	  <?php else: ?>
		<a href="http://www.gayguidevallarta.com/touch">
		  <img  height="150" width="950" src="<?php echo $this->_tpl_vars['DIR_WS_BASE']; ?>
includes/Images/topBannerAPP.gif" />
		</a>
	  <?php endif; ?>
	</div>
  </div>
  
  <?php if (! $this->_tpl_vars['NOjquery']): ?>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <?php endif; ?>
  
  <script type="text/javascript">
	<?php echo '
	  $().ready(function () {
		if (Math.random() < 0.50) {
		  setTimeout(function () {
			$("#dv").show();
			$("#dv").animate({ height: \'150px\' }, 1000);
		  }, 2000);
		  setTimeout(function () {
			$("#dv").animate({ height: \'0\' }, 400, \'swing\', function(){
			  $("#dv").hide();
			});
		  }, 8000);	
		}
	  });
	'; ?>

  </script>
<?php endif; ?>