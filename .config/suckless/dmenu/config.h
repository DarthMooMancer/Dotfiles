static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static const char *fonts[]          = { "JetBrainsMono NF style:Medium:size=12" };
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	[SchemeNorm] = { "#bbbbbb", "#222222" },
	[SchemeSel] = { "#eeeeee", "#005577" },
	[SchemeOut] = { "#000000", "#00ffff" },
};

static unsigned int lines      = 0;
static unsigned int columns    = 0;
static const char worddelimiters[] = " ";
