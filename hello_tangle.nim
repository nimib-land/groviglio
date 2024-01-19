import nimib
import tangle

nbInit
nb.useTangle
nbText: "This is an example reactive document using [tangle.js](https://github.com/worrydream/Tangle) in nimib."
nbRawHtml: """
<script type="text/javascript">

		function setUpTangle () {

			var element = document.getElementById("example");

			var tangle = new Tangle(element, {
				initialize: function () {
					this.cookies = 4;
					this.caloriesPerCookie = 50;
				},
				update: function () {
					this.calories = this.cookies * this.caloriesPerCookie;
				}
			});
		}

    window.onLoad = setUpTangle;
</script>
<p id="example">
		When you eat <span data-var="cookies" class="TKAdjustableNumber" data-min="2" data-max="100" style="pointer-events: auto;"><span>4</span><div class="TKAdjustableNumberHelp" style="display: none;">drag</div> cookies</span>, you
		will consume <span data-var="calories"><span>200</span></span> calories.
</p>
"""
nbSave
