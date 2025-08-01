package expo.modules.updates.statemachine

/**
All the possible types of events that can be sent to the machine. Each event
will cause the machine to transition to a new state.
 */
enum class UpdatesStateEventType(val type: String) {
  StartStartup("startStartup"),
  EndStartup("endStartup"),
  Check("check"),
  CheckCompleteUnavailable("checkCompleteUnavailable"),
  CheckCompleteAvailable("checkCompleteAvailable"),
  CheckError("checkError"),
  Download("download"),
  DownloadProgress("downloadProgress"),
  DownloadComplete("downloadComplete"),
  DownloadError("downloadError"),
  Restart("restart")
}
