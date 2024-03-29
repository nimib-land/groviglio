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

    window.onload = setUpTangle;
</script>
<p id="example">
	When you eat <span data-var="cookies" class="TKAdjustableNumber" data-min="2" data-max="100"> cookies</span>, you
	will consume <span data-var="calories"></span> calories.
</p>
"""
nbSave
