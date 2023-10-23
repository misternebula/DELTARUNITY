using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.InputSystem;

namespace Assets
{
	public class global
	{
		public static double heartx;
		public static double hearty;

		public static bool[] tempflag = new bool[999];

		public static bool darkzone;
		public static int filechoice;
		public static int plot;
		public static string truename;
		public static string[] othername = new string[7];
		public static int time;
		public static bool fighting;
		public static int[] chara = new int[3];
		public static int gold;
		public static int xp;
		public static int lv;
		public static int inv;
		public static int invc;
		public static int charselect;
		public static int encounterno;
		public static int specialbattle;
		public static double[] heromakex = new double[4];
		public static double[] heromakey = new double[4];
		public static bool[] charauto = new bool[4];
		public static bool[] charmove = new bool[4];
		public static bool[] charcantarget = new bool[4];
		public static bool[] chardead = new bool[4];
		public static int[] invincible = new int[4];
		public static int[] charaction = new int[4];
		public static int[] faceaction = new int[4];
		public static int[] charcond = new int[4];
		public static int[] hp = new int[4];
		public static int[] maxhp = new int[4];
		public static int[] at = new int[4];
		public static int[] df = new int[4];
		public static int[] mag = new int[4];
		public static int[] guts = new int[4];
		public static int[] charweapon = new int[4];
		public static int[] chararmor1 = new int[4];
		public static int[] chararmor2 = new int[4];
		public static string[] weaponstyle = new string[4];
		public static int[,] itemat = new int[4, 4];
		public static int[,] itemdf = new int[4, 4];
		public static int[,] itemmag = new int[4, 4];
		public static int[,] itembolts = new int[4, 4];
		public static int[,] itemgrazeamt = new int[4, 4];
		public static int[,] itemgrazesize = new int[4, 4];
		public static int[,] itemboltspeed = new int[4, 4];
		public static int[,] itemspecial = new int[4, 4];
		public static int[,] spell = new int[4, 12];
		public static int boltspeed;
		public static int grazeamt;
		public static int grazesize;
		public static string[] charname = new string[4];
		public static int[] item = new int[13];
		public static int[] keyitem = new int[13];
		public static int[] weapon = new int[13];
		public static int[] armor = new int[13];
		public static int tension;
		public static int maxtension;
		public static int grazetotal;
		public static int grazeturn;
		public static double[] monstermakex = new double[4];
		public static double[] monstermakey = new double[4];
		public static int[] monster = new int[4];
		public static string[] monstername = new string[4];
		public static int[] monstertype = new int[4];
		public static string[] monsterinstancetype = new string[4];
		public static double[] monsterat = new double[4];
		public static int[] monsterdf = new int[4];
		public static int[] monsterhp = new int[4];
		public static int[] monstermaxhp = new int[4];
		public static int[] sparepoint = new int[4];
		public static int bmenuno;
		public static int[,] bmenucoord = new int[20, 20];
		public static int myfight;
		public static int mnfight;
		public static int fc;
		public static int fe;
		public static int typer;
		public static int msc;
		public static string[] writersnd = new string[10];
		public static string[] writerimg = new string[10];
		public static int[] smdir = new int[10];
		public static int[] smspeed = new int[10];
		public static int[] smface = new int[10];
		public static string[] smsprite = new string[10];
		public static int[] smalarm = new int[10];
		public static int[] smtype = new int[10];
		public static int[] smxx = new int[10];
		public static int[] smyy = new int[10];
		public static int[] smcolor = new int[10];
		public static string[] smstring = new string[10];
		public static string[] msg = new string[100];
		public static string currentsong0;
		public static AudioSource currentsong1;
		public static string batmusic0;
		public static AudioSource batmusic1;
		public static bool debug;
		public static int choice;
		public static bool seriousbattle;
		public static int interact;
		public static int entrance;
		public static int[] litem = new int[10];
		public static string[] litemname = new string[10];
		public static int[] phone = new int[10];
		public static string[] phonename = new string[10];
		public static int[] menucoord = new int[20];
		public static string[] choicemsg = new string[4];
		public static dynamic[] flag = new dynamic[9999];
		public static string lcharname;
		public static int lweapon;
		public static int larmor;
		public static int lxp;
		public static int llv;
		public static int lgold;
		public static int lhp;
		public static int lmaxhp;
		public static int lat;
		public static int ldf;
		public static int lwstrength;
		public static int ladef;
		public static int facing;
		public static bool[] input_pressed = new bool[10];
		public static bool[] input_held = new bool[10];
		public static bool[] input_released = new bool[10];

		public static string[,] spellname = new string[4, 12];
		public static string[,] spellnameb = new string[4, 12];
		public static string[,] spelldescb = new string[4, 12];
		public static string[,] spelldesc = new string[4, 12];
		public static int[,] spellcost = new int[4, 12];
		public static bool[,] spellusable = new bool[4, 12];
		public static int[,] spelltarget = new int[4, 12];

		public static string[] itemnameb = new string[12];
		public static string[] itemdescb = new string[12];
		public static int[] itemvalue = new int[12];
		public static bool[] itemusable = new bool[12];

		public static int[] input_k = new int[10];

		public static string[] asc_def = new string[300];

		public static int[] __objectDepths = new int[350];
		public static string[] __objectNames = new string[350];
		public static int[] __objectID2Depth = new int[350];

		public static string lang;

		public static int chemg_typer;
		public static string chemg_font;

		public static string name;

		public static string currentroom;
		public static int menuno;
		public static int[] battledf = new int[3];

		public static int lastsavedtime;
		public static int lastsavedlv;

		public static dynamic[] charinstance = new dynamic[3];
		public static dynamic[] cinstance = new dynamic[3];
	
		public static dynamic targeted = new dynamic[3];
		public static dynamic charspecial = new dynamic[3];

		public static string damagefont;

		public static int charturn;
		public static int submenu;
		public static int[] submenucoord = new int[36];
		public static string hpfont;
		public static bool[] monsterstatus = new bool[3];
		public static int[] mercymod = new int[3];
		public static string[] itemname = new string[12];
		public static bool battleend;
		public static int battletyper;
		public static bool attacking;
		public static dynamic acting = new dynamic[3];
		public static int spelldelay;
		public static int tensionselect;
		public static int[] temptension = new int[4];
		public static bool[] automiss = new bool[3];
		public static double[] monsterx = new double[3];
		public static double[] monstery = new double[3];
		public static dynamic[] monsterinstance = new dynamic[3];
		public static int[] monstergold = new int[4];
		public static int[] monsterexp = new int[4];
		public static int[] hittarget = new int[3];
		public static int[] mercymax = new int[3];
		public static string[] monstercomment = new string[3];
		public static int[,] act = new int[3, 6];
		public static bool[,] canact = new bool[3, 6];
		public static string[,] actname = new string[3, 6];
		public static int[,] acttype = new int[3, 6];
		public static int[,] actspell = new int[3, 6];
		public static int[,] actactor = new int[3, 6];
		public static string[,] actdesc = new string[3, 6];
		public static int[,] actcost = new int[3, 6];
		public static int[] chartarget = new int[3];
		public static int[] rembmenuno = new int[3];
		public static int[] battleat = new int[3];
		public static int[] battlemag = new int[3];
		public static string[] battlemsg = new string[1];

		public static int turntimer;

		public static int sp;

		public static int faceemotion;
	}
}
