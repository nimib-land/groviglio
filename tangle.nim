import nimib

proc useTangle*(nb: var NbDoc) =
  nb.partials["head"] &= """
<script type="text/javascript" src="Tangle.js"></script>
<!-- TangleKit (not really optional) -->
<link rel="stylesheet" href="TangleKit/TangleKit.css" type="text/css">
<script type="text/javascript" src="TangleKit/mootools.js"></script>
<script type="text/javascript" src="TangleKit/sprintf.js"></script>
<script type="text/javascript" src="TangleKit/BVTouchable.js"></script>
<script type="text/javascript" src="TangleKit/TangleKit.js"></script>
"""
