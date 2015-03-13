

     <div class="section module-list-items <?php echo $themeSettings['cr2htmlresponsive']; ?> <?php echo $themeSettings['cr2htmlresponsivesm']; ?> <?php echo $themeSettings['cr2htmlresponsivemd']; ?> <?php echo $themeSettings['cr2htmlresponsivelg']; ?>">
          <h4 class="section-title" <?php if (!$title) {echo "style=\"height: 5px; background-image: none; border-bottom: none; padding: 0 !important;\""; }; ?>>
          	<?php if($title) { echo $title; } else { echo "&nbsp;"; } ?>
          </h4>
          <div class="section-body">
               <?php echo $code; ?>
          </div>
     </div>
