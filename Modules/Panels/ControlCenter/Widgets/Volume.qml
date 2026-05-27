import Quickshell
import qs.Services.Media
import qs.Services.UI
import qs.Widgets

NIconButtonHot {
  property ShellScreen screen

  icon: AudioService.getOutputIcon()
  hot: AudioService.muted
  tooltipText: AudioService.getStatusText()

  onClicked: PanelService.getPanel("audioPanel", screen)?.toggle(this)
  onRightClicked: AudioService.setOutputMuted(!AudioService.muted)
}
