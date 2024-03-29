/* See LICENSE file for copyright and license details. */

/* Constants */
#define TERMINAL "kitty"
#define TERMCLASS "kitty"

/* appearance */
static unsigned int borderpx  = 1;        /* border pixel of windows */
static unsigned int snap      = 32;       /* snap pixel */
static unsigned int gappih    = 20;       /* horiz inner gap between windows */
static unsigned int gappiv    = 10;       /* vert inner gap between windows */
static unsigned int gappoh    = 10;       /* horiz outer gap between windows and screen edge */
static unsigned int gappov    = 30;       /* vert outer gap between windows and screen edge */
static int swallowfloating    = 0;        /* 1 means swallow floating windows by default */
static int smartgaps          = 0;        /* 1 means no outer gap when there is only one window */
static int showbar            = 1;        /* 0 means no bar */
static int topbar             = 1;        /* 0 means bottom bar */
static char *fonts[]          = { "mono:size=13", "JoyPixels:pixelsize=13:antialias=true:autohint=true"  };
// nord
// static char normbgcolor[]           = "#3B4252";
// static char normbordercolor[]       = "#3B4252";
// static char normfgcolor[]           = "#E5E9F0";
// static char selfgcolor[]            = "#3B4252";
// static char selbordercolor[]        = "#88C0D0";
// static char selbgcolor[]            = "#81A1C1";
// gruvbox
// static char normbgcolor[]           = "#222222";
// static char normbordercolor[]       = "#444444";
// static char normfgcolor[]           = "#bbbbbb";
// static char selfgcolor[]            = "#eeeeee";
// static char selbordercolor[]        = "#770000";
// static char selbgcolor[]            = "#005577";
// catppuccin
static char normbgcolor[]           = "#24273A";
static char normbordercolor[]       = "#494D64";
static char normfgcolor[]           = "#B8C0E0";
static char selfgcolor[]            = "#CAD3F5";
static char selbordercolor[]        = "#8BD5CA";
static char selbgcolor[]            = "#8AADF4";

static char *colors[][3] = {
       /*               fg           bg           border   */
       [SchemeNorm] = { normfgcolor, normbgcolor, normbordercolor },
       [SchemeSel]  = { selfgcolor,  selbgcolor,  selbordercolor  },
};

typedef struct {
	const char *name;
	const void *cmd;
} Sp;
const char *spcmd1[] = {"st", "-n", "spterm", "-g", "120x34", NULL };
const char *spcmd2[] = {"st", "-n", "spcalc", "-f", "monospace:size=16", "-g", "50x20", "-e", "bc", "-lq", NULL };
static Sp scratchpads[] = {
	/* name          cmd  */
	{"spterm",      spcmd1},
	{"spcalc",      spcmd2},
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	*/
	/* class       instance      title         	 tags mask    isfloating   isterminal  noswallow  monitor */
	{ "Gimp",        NULL,       NULL,       	   1 << 8,       0,           0,         0,        -1 },
	{ TERMCLASS,     NULL,       NULL,       	   0,            0,           1,         0,        -1 },
	{ "St",       NULL,       NULL,       	   0,            0,           1,         0,        -1 },
	{ TERMCLASS,     NULL,       NULL,       	   0,            0,           1,         0,        -1 },
	{ NULL,          NULL,       "Event Tester",   0,            0,           0,         1,        -1 },
	{ TERMCLASS,     "bg",       NULL,       	   1 << 7,       0,           1,         0,        -1 },
	{ "St",       "bg",       NULL,       	   1 << 7,       0,           1,         0,        -1 },
	{ TERMCLASS,     "spterm",   NULL,       	   SPTAG(0),     1,           1,         0,        -1 },
	{ "St",     "spterm",   NULL,       	   SPTAG(0),     1,           1,         0,        -1 },
	{ TERMCLASS,     "spcalc",   NULL,       	   SPTAG(1),     1,           1,         0,        -1 },
	{ "St",     "spcalc",   NULL,       	   SPTAG(1),     1,           1,         0,        -1 },
	{ "matplotlib",  NULL,       NULL,             0,            0,           0,         1,        -1 },
	{ "R_x11",       NULL,       NULL,             0,            0,           0,         1,        -1 },
};

/* layout(s) */
static float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static int nmaster     = 1;    /* number of clients in master area */
static int resizehints = 0;    /* 1 means respect size hints in tiled resizals */
#define FORCE_VSPLIT 1  /* nrowgrid layout: force two clients to always split vertically */
#include "vanitygaps.c"
static const Layout layouts[] = {
	/* symbol     arrange function */
 	{ "[]=",	tile },			/* Default: Master on left, slaves on right */
	{ "TTT",	bstack },		/* Master on top, slaves on bottom */

	{ "[@]",	spiral },		/* Fibonacci spiral */
	{ "[\\]",	dwindle },		/* Decreasing in size right and leftward */

	{ "[D]",	deck },			/* Master on left, slaves in monocle-like mode on right */
 	{ "[M]",	monocle },		/* All windows on top of eachother */

	{ "|M|",	centeredmaster },		/* Master in middle, slaves on sides */
	{ ">M>",	centeredfloatingmaster },	/* Same but master floats */

	{ "><>",	NULL },			/* no layout function means floating behavior */
	{ NULL,		NULL },
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },
#define STACKKEYS(MOD,ACTION) \
	{ MOD,	XK_j,	ACTION##stack,	{.i = INC(+1) } }, \
	{ MOD,	XK_Cyrillic_o,	ACTION##stack,	{.i = INC(+1) } }, \
	{ MOD,	XK_k,	ACTION##stack,	{.i = INC(-1) } }, { MOD,  XK_v,   ACTION##stack,  {.i = 0 } }, \
	{ MOD,	XK_Cyrillic_el,	ACTION##stack,	{.i = INC(-1) } }, { MOD,  XK_v,   ACTION##stack,  {.i = 0 } }, \
	/* { MOD, XK_grave, ACTION##stack, {.i = PREVSEL } }, \ */
	/* { MOD, XK_a,     ACTION##stack, {.i = 1 } }, \ */
	/* { MOD, XK_z,     ACTION##stack, {.i = 2 } }, \ */
	/* { MOD, XK_x,     ACTION##stack, {.i = -1 } }, */

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const char *termcmd[]  = { TERMINAL, NULL };

/*
 * Xresources preferences to load at startup
 */
// nord
ResourcePref resources[] = {
        // nord
		// { "color0",		STRING,	&normbordercolor },
		// { "color6",		STRING,	&selbordercolor },
		// { "color0",		STRING,	&normbgcolor },
		// { "color7",		STRING,	&normfgcolor },
		// { "color0",		STRING,	&selfgcolor },
		// { "color4",		STRING,	&selbgcolor },
        // catppuccin
		{ "color0",		STRING,	&normbordercolor },
		{ "color6",		STRING,	&selbordercolor },
		{ "color0",		STRING,	&normbgcolor },
		{ "color7",		STRING,	&normfgcolor },
		{ "color0",		STRING,	&selfgcolor },
		{ "color6",		STRING,	&selbgcolor },
        // gruvbox
        // { "color0",		STRING,	&normbordercolor },
		// { "color8",		STRING,	&selbordercolor },
		// { "color0",		STRING,	&normbgcolor },
		// { "color4",		STRING,	&normfgcolor },
		// { "color0",		STRING,	&selfgcolor },
		// { "color4",		STRING,	&selbgcolor },

		{ "borderpx",		INTEGER, &borderpx },
		{ "snap",		INTEGER, &snap },
		{ "showbar",		INTEGER, &showbar },
		{ "topbar",		INTEGER, &topbar },
		{ "nmaster",		INTEGER, &nmaster },
		{ "resizehints",	INTEGER, &resizehints },
		{ "mfact",		FLOAT,	&mfact },
		{ "gappih",		INTEGER, &gappih },
		{ "gappiv",		INTEGER, &gappiv },
		{ "gappoh",		INTEGER, &gappoh },
		{ "gappov",		INTEGER, &gappov },
		{ "swallowfloating",	INTEGER, &swallowfloating },
		{ "smartgaps",		INTEGER, &smartgaps },
};

#include <X11/XF86keysym.h>
#include "shiftview.c"

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	STACKKEYS(MODKEY,                          focus)
	STACKKEYS(MODKEY|ShiftMask,                push)
    { MODKEY,	            		XK_q,	   killclient,     {0} },
    { MODKEY,	            		XK_Cyrillic_shorti,	   killclient,     {0} },
	{ MODKEY,                       XK_o,      incnmaster,     {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_o,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_Cyrillic_shcha,      incnmaster,     {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_Cyrillic_shcha,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_Cyrillic_er,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_Cyrillic_de,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_space,  zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,      		        XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY|ShiftMask,             XK_t,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_Cyrillic_ie,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY|ShiftMask,             XK_Cyrillic_ie,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_y,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY|ShiftMask,             XK_y,      setlayout,      {.v = &layouts[3]} },
	{ MODKEY,                       XK_Cyrillic_en,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY|ShiftMask,             XK_Cyrillic_en,      setlayout,      {.v = &layouts[3]} },
	{ MODKEY,                       XK_u,      setlayout,      {.v = &layouts[4]} },
	{ MODKEY|ShiftMask,             XK_u,      setlayout,      {.v = &layouts[5]} },
	{ MODKEY,                       XK_Cyrillic_ghe,      setlayout,      {.v = &layouts[4]} },
	{ MODKEY|ShiftMask,             XK_Cyrillic_ghe,      setlayout,      {.v = &layouts[5]} },
	{ MODKEY,                       XK_i,      setlayout,      {.v = &layouts[6]} },
	{ MODKEY|ShiftMask,             XK_i,      setlayout,      {.v = &layouts[7]} },
	{ MODKEY,                       XK_Cyrillic_sha,      setlayout,      {.v = &layouts[6]} },
	{ MODKEY|ShiftMask,             XK_Cyrillic_sha,      setlayout,      {.v = &layouts[7]} },
/*	{ MODKEY,                       XK_space,  setlayout,      {0} }, */
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_s,      togglesticky,   {0} },
	{ MODKEY,                       XK_Cyrillic_yeru,      togglesticky,   {0} },
	{ MODKEY,             XK_f,      togglefullscr,  {0} },
	{ MODKEY,             XK_Cyrillic_a,      togglefullscr,  {0} },
	{ MODKEY,                       XK_Tab,    view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_Left,   focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_Right,  focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_Left,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_Right, tagmon,         {.i = +1 } },
	{ MODKEY|ShiftMask,           	XK_Return, togglescratch,  {.ui = 0 } },
	{ MODKEY,           	XK_apostrophe,	   togglescratch,  {.ui = 1 } },
	{ MODKEY|ShiftMask,     XK_apostrophe,     togglesmartgaps,     {0} },
	{ MODKEY,           	XK_Cyrillic_e,	   togglescratch,  {.ui = 1 } },
	{ MODKEY|ShiftMask,     XK_Cyrillic_e,     togglesmartgaps,     {0} },
	{ MODKEY,			XK_a,		togglegaps,	{0} },
	{ MODKEY|ShiftMask,		XK_a,		defaultgaps,	{0} },
	{ MODKEY,			XK_Cyrillic_ef,		togglegaps,	{0} },
	{ MODKEY|ShiftMask,		XK_Cyrillic_ef,		defaultgaps,	{0} },
	{ MODKEY,			XK_z,		incrgaps,	{.i = +3 } },
	{ MODKEY|ShiftMask,	    XK_z,		incrgaps,	{.i = -3 } },
	{ MODKEY,			XK_Cyrillic_ya,		incrgaps,	{.i = +3 } },
	{ MODKEY|ShiftMask,	    XK_Cyrillic_ya,		incrgaps,	{.i = -3 } },
    { MODKEY,			XK_F5,		xrdb,		{.v = NULL } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	/*{ MODKEY|ShiftMask,             XK_BackSpace, quit,        {0} },*/
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
#ifndef __OpenBSD__
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button1,        sigdwmblocks,   {.i = 1} },
	{ ClkStatusText,        0,              Button2,        sigdwmblocks,   {.i = 2} },
	{ ClkStatusText,        0,              Button3,        sigdwmblocks,   {.i = 3} },
	{ ClkStatusText,        0,              Button4,        sigdwmblocks,   {.i = 4} },
	{ ClkStatusText,        0,              Button5,        sigdwmblocks,   {.i = 5} },
	{ ClkStatusText,        ShiftMask,      Button1,        sigdwmblocks,   {.i = 6} },
#endif
	{ ClkStatusText,        ShiftMask,      Button3,        spawn,          SHCMD(TERMINAL " -e nvim ~/.local/src/dwmblocks/config.h") },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        defaultgaps,	{0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkClientWin,		MODKEY,		Button4,	incrgaps,	{.i = +1} },
	{ ClkClientWin,		MODKEY,		Button5,	incrgaps,	{.i = -1} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
	{ ClkTagBar,		0,		Button4,	shiftview,	{.i = -1} },
	{ ClkTagBar,		0,		Button5,	shiftview,	{.i = 1} },
	{ ClkRootWin,		0,		Button2,	togglebar,	{0} },
};
