#include "/home/andrew/.config/suckless/dwm/themes/kanagawa.h"
static const unsigned int borderpx  = 0;
static const unsigned int gappx	    = 5;
static const unsigned int snap      = 32;
static const int showbar            = 1;
static const int topbar             = 1;
/*static const char *barlayout        = "t|s";*/
static const char *fonts[]          = { "JetBrainsMono NF style:Medium:size=12" };
// static const char *fonts[] = { "JetBrainsMono Nerd Font:size=13:antialias=true:autohint=true" };
static const char dmenufont[]       = "JetBrainsMono NF style:Medium:size=12";
static const char *colors[][3]      = {
	[SchemeNorm] = { foreground, background, aqua },
	[SchemeSel]  = { background, blue, green },
};

static const char *tags[] = { "1", "2", "3", "4" };
static const Rule rules[] = {
	/* class    instance        title     tags mask   isfloating   monitor */
	{ "kitty", "kitty",		  NULL,     1,          0,           -1 },
	{ "google-chrome",  "Google-chrome",   NULL,     1 << 1,     0,           -1 },
};

static const float mfact     = 0.55;
static const int nmaster     = 1;
static const int resizehints = 1;
static const int lockfullscreen = 1;

static const Layout layouts[] = {	{ "[]=",      tile } };

#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

static char dmenumon[2] = "0";
static const char *dmenucmd[] = { "dmenu_run", "-g", "6", "-l", "8", "-m", dmenumon, "-fn", dmenufont, "-nb", background, "-nf", foreground, "-sb", blue, "-sf", light_gray, NULL };
static const char *termcmd[]  = { "kitty", NULL };

#include "movestack.c"
#include "X11/XF86keysym.h"
static const Key keys[] = {
  { MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
  { MODKEY,                       XK_space,      spawn,          {.v = dmenucmd } },
  { MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
  { MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
  { MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
  { MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
  { MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
  { MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
  { MODKEY,			  XK_q,      killclient,     {0} },
  { MODKEY|ShiftMask,             XK_j,      movestack,      {.i = +1 } },
  { MODKEY|ShiftMask,             XK_k,      movestack,      {.i = -1 } },
  { MODKEY|ShiftMask,             XK_Return, zoom,           {0} },
  { MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
  { MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
  { MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
  { MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
  TAGKEYS(                        XK_1,                      0)
  TAGKEYS(                        XK_2,                      1)
  TAGKEYS(                        XK_3,                      2)
  TAGKEYS(                        XK_4,                      3)
};

static const Button buttons[] = {
/* click                event mask      button          function        argument */
  { ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
  { ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
  { ClkWinTitle,          0,              Button2,        zoom,           {0} },
  { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
  { ClkTagBar,            0,              Button1,        view,           {0} },
  { ClkTagBar,            0,              Button3,        toggleview,     {0} },
  { ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
  { ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
  { ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
  { ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
  { ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};
