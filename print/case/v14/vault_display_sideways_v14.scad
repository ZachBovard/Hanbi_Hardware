// Hanbi printing/case — Vault + 7" display enclosure, SIDEWAYS (case v14, 16 Nov 2026)
// (Protectli V1410 + GeeekPi/52Pi 7" 1024x600, EP-0177)
//
// Print files © 2026 Zachary Bovard, licensed Apache-2.0. The licence covers the files, not the Hanbi or Pazuzu
// names or logos. A box you print yourself is not a Hanbi box, and is not Hanbi Certified unless Hanbi certifies it.
// ---------------------------------------------------------------
// How it hangs (wall mode, as drawn):
//   The Vault lies on its side: floor against the wall (or DIN rail), port faces LEFT and RIGHT, fins toward you.
//   Seen from the front, the network ports are on your LEFT (+x) and the USB/HDMI end is on your RIGHT (-x).
//   The screen, portrait, hangs in front on two metal screws. Its BOTTOM is flush with the bottom of the sleeve and
//   its hinge end stands up past the top of the sleeve. It swings out at the bottom (v13: freely - no stop); two
//   magnets hold it shut. The yoke's handle runs across the top, over the balance point.
// Four directions: the keyholes are crosses on the back's centre line and the DIN holes are a cross, so the case
//   hangs (or clips to a rail) turned any of four ways; the screen rotates in software. On a table it lies on its
//   back, screen up, turned any way.
// Cables: the screen's connector edge is at the HINGE. The flat HDMI and USB-C ribbons plug in under the connector
//   hood (part of the backplate), leave its open end toward the USB/HDMI end, pass over that hinge ear and drop down
//   the end of the case into the Vault's HDMI and USB (through the adapter). They cross from the screen to the case
//   right by the hinge axis, where they barely move.
//
// Form (one object, not a box with a screen bolted on):
//   - one radius everywhere, and it is half the screen tray's thickness: sleeve corners, tray corners, the hinge ears
//   - v13: the hinge ears and the handle are one part, the yoke; the ears' outer faces are flush with the ends of
//     the tube, their tops flush with the handle, and each foot flares into its ear
//   - no screw is seen from the front; the hinge screws are flat heads, flush in the ears
//   - one perforation (the almond of the warding eye), one pitch, equal margins on every face; the mark is the only
//     thing that interrupts it
//
// Parts:
//   1. sleeve    - the tube, with a basket rim at each end, two magnet bosses and a lug on top at each end;
//                  cross keyholes, a cross of DIN-clip holes and the spine recess on the back. Printed as two halves
//                  (half_a, half_b), each standing on its outer end; slide A's spigot into B until the bumps click
//   1y. yoke     - (v13) both hinge ears and the handle in one piece; prints upside down, handle on the bed;
//                  4x M3x12 socket head down through the feet into the lugs
//   1s. spine    - (v13) the plate across the joint on the back; 4x M3x5 countersunk (not longer - the Vault sits
//                  just behind); the DIN clip's screws go through it, from OUTSIDE, into M3 nuts held in the back
//                  wall (v14): press the nuts in before the Vault goes in; the clip goes on and off any time after
//   2. bezel     - holds the screen from the front (lip, no front screws), notched at the TOP for plugs + wheel
//   3. backplate - one piece, screws to the bezel from behind (4x M3x8), with two magnets; exported (v14) with
//                  the magnet pockets and screw counterbores facing UP, the face that meets the bezel on the bed
//   4. fit_test  - the first few mm of the bezel, to check the screen before the full print
//   Hinge: 2x M3x10 countersunk (flat head). Each threads into its yoke ear; the tray turns on the screw's tip.
//   Magnets: 4x 6x2 mm discs (two pairs), glued in; check each pair attracts before the glue sets.
//
// v4: HDMI slot widened; backplate solid; tray bottom flush, hinge above the sleeve; 6 mm holes, smaller margins;
//     chamfer inside the bed end.
// v5: basket rim across the USB/HDMI end (ties the walls in the first layers; stops the Vault).
// v6: eye-almond holes in the backplate.  v7: the Hanbi mark on the backplate.
// v8 changes: the 150 mm protector trimmed back to the hinge zone; the screen turned 180 degrees in the tray so its
//   connectors are at the hinge, notches moved to the top; connector hood on the backplate; magnets; cross keyholes
//   on the centre line and a cross of DIN holes (four directions); almond holes everywhere; the gap behind the screen
//   recomputed so the hood meets the stop bar at 45 degrees.
// v9 changes: the sleeve is split at the middle (x = 0) into two halves that slip together: half A (USB/HDMI end)
//   carries a spigot (the inner half of the wall, split_l long) that slides into a socket in half B (network end),
//   and four snap bumps on the spigot click into holes in B (two behind the front mark, two on the back). Each half
//   prints standing on its outer end, its hinge ear flat on the bed - the one-piece sleeve twice failed at 90%, where
//   it was building the upper ear out over air. Both ends now carry the basket rim and the bed-end chamfer. A thin
//   fin ties the stop bar down to the sleeve's top, so each half of the bar is not a free column as it prints.
//   Once the screen is on, the tray spans the joint on its two hinge screws and holds the halves together.
// v10 changes: the end bars are as thick as the room between the tube's ends and the Vault's port PANELS
//   (vault_panel; v9 sized them against vault_d, which counts the connectors, and the Vault rattled ~3 mm end to
//   end); two M3 screws across the joint, each in a small rounded block on the front, in the gap behind the
//   screen, one low and one high, mirrored about the middle. Each goes in from half A and threads into half B.
//   Driven before the screen goes on; once it is on, no fastener shows anywhere.
// v11 changes: two ribbon slits through the backplate on the USB/HDMI side, one near the bottom and one mirrored
//   near the top (use whichever suits the way the case hangs): the flat HDMI and USB-C ribbons plug in at the top
//   edge, run down inside the tray behind the board and leave through a slit. The 180-degree HDMI head and the
//   USB-C head stand 5-6 mm proud of the backplate at the top (24.30 and 25.35 from the glass face, 19.1 tray),
//   so the stop bar is left out behind the plugs and the hood (the fin stays, 0.9 mm clear of the heads). Either
//   side of the plugs the bar is thicker (bar_R, ~4.2 instead of 3) so the tray's top back edge lands on it at 45
//   degrees. The top notch is 10 deep (was 9).
// v12 changes: the connector cover is part of the BEZEL now, not the backplate (v8-v11's hood only touched the
//   backplate along two thin strips). Two side walls, a top wall and a front wall round the plug heads, reaching
//   back to 26.7 from the glass face (the heads reach 26.47) and 51.7 wide, so the side walls pass through the
//   backplate's 52 mm notch; the backplate is otherwise unchanged and the hood is gone from it. Open at the back so
//   the screen, heads already plugged in, drops into the bezel as before. The ribbons fold in through the notch,
//   run down inside behind the board and leave by the bottom slit (the top slit is off). The fin under the stop
//   bar is cut out behind the plugs too. The gap behind the screen is fixed at 5.2, as printed in v10.
// v13 changes: the YOKE - both hinge ears and the handle are one printed part. The ears are no longer printed on
//   the halves, and the stop bar and its fin are gone (no 45 degree stop; the screen swings free, the magnets hold
//   it shut). The handle is a rounded band between the ears, over the balance point (bal_y from the wall), with
//   yk_fing of room under it for fingers; it flows into the ears, and each ear stands on a foot that flares into
//   it. Each foot keys onto a lug printed on top of its half and takes 2 M3 bolts, so the yoke also ties the halves
//   together. The hinge stays exactly where it was. The SPINE: a flat plate set flush into a recess across the joint
//   on the back, 4 M3 countersunk screws (2 in each half) into a thickened patch of the back wall; the DIN holes go
//   through it, so a clip bolts through plate and wall together.
// v14 changes: the DIN clip's screws go in from OUTSIDE (v13: from inside, so the clip had to go on before the
//   Vault and could never come off). Each of the four DIN holes has a hex pocket for an M3 nut in the inside face
//   of the back wall's thick patch, flush, so the Vault still slides over; the screw is M3, as long as the clip is
//   thick + 5 mm, NOT longer (the Vault's floor is just behind the nut). With the clip off, the case lies flat on
//   its back. The four snap bumps are sunk 0.4 into the spigot (v13's front pair only touched it and exported as
//   loose specks). The backplate exports magnet pockets up. The licence line is in this header.
//
// Vault size from Protectli's own 3D model (20240613-V1410-3D-ASM.stp).
// Units: mm. Render: F6, then File > Export > STL, one part at a time.
// ---------------------------------------------------------------

/* [View] */
part = "assembly";   // [assembly, half_a, half_b, halves_print, yoke, spine, bezel, backplate, fit_test, print_plate]
swing = 0;           // assembly view only: 0 = hanging, up to 45

/* [Protectli Vault V1410 - from Protectli's 3D model] */
vault_w    = 142.0;  // across the port faces: stands UP
vault_d    = 118.45; // port face to port face, connectors included: runs LEFT-RIGHT
vault_h    = 58.5;   // fins to bottom plate: points OUT from the wall
vault_feet = 2.6;    // rubber feet, against the back wall (0 if you take them off)
vault_clr  = 1.5;    // room each side

/* [Screen - GeeekPi/52Pi 7in, EP-0177] */
scr_w = 164.9;       // LONG side - MEASURE (52Pi says 165, a seller's picture 160). Runs up/down.
scr_h = 100.3;       // short side, calipers 100.28. Runs left/right.
scr_t = 14.25;       // glass to the tallest part on the back (the speaker boxes)
scr_clr = 0.5;       // per side; PLA prints a pocket a little small, do not go below 0.4
lip_overlap = 3.0;   // bezel lip over the glass edge

/* [Connector edge - plugs and wheel, now at the TOP (the hinge)] */
// From the back of the board, along the connector edge, from the corner nearest the wheel: wheel 12-27, jack 36-46,
// USB-C 48.5-57, HDMI 63-80.5 (the receptacle; a moulded plug is about 21 wide, so it reaches about 84).
// v8: the board is turned 180 degrees, so with that edge at the TOP, the wheel is on your RIGHT from the front (-x).
slot_wheel = [10, 29];    // finger room to roll the wheel
slot_ports = [34, 86];    // jack, USB-C and HDMI in one opening
slot_from  = 3.2;         // the notches start this far behind the glass and run out through the back of the bezel
bp_notch   = 10;          // the backplate is cut away this far down from the top edge under slot_ports (v10: 9)
rib_slits  = true;        // v11: ribbon slits through the backplate, near the bottom and mirrored near the top
rib_slit_l = 14;          // MEASURE: across the ribbons (9.68 measured, plus room)
rib_slit_w = 6;           // MEASURE: along the tray - room for both ribbons stacked, or a round cable
rib_slit_x = -21.6;       // centre, from the tray's middle toward the USB/HDMI side (where the hand-cut hole is)
rib_slit_y = 22;          // centre, up from the bottom edge; the top slit sits the same distance down from the top
plug_proud = 7.4;         // the plug heads stand this far behind the backplate (26.47 from the glass - tray 19.1)
rib_top    = false;       // v12: the top slit is off - the ribbons go in through the top notch instead
bp_perf    = true;        // holes through the backplate (false = solid)
bp_ring    = 5;           // solid ring round each backplate screw and magnet

/* [Connector hood - on the backplate, over the plugs at the hinge] */
// Covers the plug heads, not the cable runs. It sits on the tray's top edge over slot_ports, closed at the front,
// back, top and the network-side end, open toward the USB/HDMI end so the ribbons leave toward that ear.
hood       = false;      // v12: off - the cover is part of the bezel now (conn_*)
hood_h     = 20;     // above the tray's top edge - MEASURE the right-angle heads plugged in, plus the ribbon fold
hood_wall  = 2;
hood_side  = 2;      // past each end of slot_ports

/* [Connector cover - part of the bezel (v12)] */
conn_cover = true;
conn_reach = 26.7;   // its walls reach back this far from the glass face (the plug heads reach 26.47)
conn_w     = 51.7;   // overall width; the side walls pass through the backplate's 52 mm notch
conn_up    = 1.67;   // the plug heads stand this far above the bezel's top edge
conn_room  = 0.8;    // over the heads
conn_wall  = 2;

/* [Magnets - hold the screen shut in any direction] */
magnets  = true;
mag_d    = 6;        // MEASURE your discs
mag_t    = 2;        // the backplate is 3 thick: 2 mm discs leave 0.8 mm behind them
mag_clr  = 0.15;     // per side, for glue
mag_gap  = 0.5;      // between the two magnets when shut
mag_x    = 44.65;    // either side of the centre (clear of the backplate screws)
mag_z    = 16;       // up from the bottom (clear of the sleeve's rounded corner)

/* [Sleeve] */
tube_len  = 0;       // overall length; 0 = just the hinge zone (v8: the 150 mm protector trimmed off)
foot_cham = 0.8;     // chamfer inside both ends (each prints on the bed now); 0 = off

/* [Split - two halves that slip together at the middle] */
split_l   = 8;       // spigot length: how far half A slides into half B
split_clr = 0.2;     // socket over spigot, per side (0.15 = tighter)
clip_d    = 3;       // snap bump, base diameter
clip_h    = 0.7;     // how far it stands proud of the spigot
clip_z    = 30;      // bumps this far above and below the middle, front and back
fin_t     = 2;       // the fin under the stop bar
joint_screws = true; // two M3 screws across the joint (head in half A, threads in half B)
js_len    = 20;      // each block, along the tube (10 in each half): M3x12 to M3x16
js_pilot  = 2.6;     // threads itself into B
js_clear  = 3.4;
js_head_d = 6.2;     // pan/socket head counterbore
js_head_h = 3;
js_h      = 16;      // each block, up/down
js_off    = 20;      // block centres this far from the bottom and from the top (clear of the mark and the corners)

/* [Basket rim - the USB/HDMI end, the end that prints on the bed] */
// Two bars across that end, inside the tube: one up from the Vault's floor (the wall side), one in from its fins
// (the front). The plugs go through the band between them. MEASURE the USB/HDMI face and check the plug heads clear.
rim_back  = 15;      // up from the Vault's floor plate (0 = no bar)
rim_front = 15;      // in from the fins (0 = no bar)
vault_panel = 116.3; // MEASURE: port panel to port panel, NOT counting the connectors (v9 rattled ~3 mm with 2.5 bars)
rim_play  = 0.5;     // end-to-end play left for the Vault in total

/* [Form] */
wall    = 3;         // every sleeve wall
r_in    = 2;         // inside corners (keeps clear of the Vault's corners)
bz_wall = 6;         // bezel side wall
bz_lip  = 1.6;
bp_t    = 3;         // back plate
perf_d  = 6;         // round holes (perf_shape = "round"); also sizes the clear rings round the mounts
perf_p  = 8;
perf_shape = "eye";  // v8: the almond everywhere ("round" = the v5 holes)
bp_shape   = "eye";  // v8: the almond on the backplate too, round the Hanbi mark
eye_l   = 10;        // almond, tip to tip (along the tube: left-right when it hangs, up-down as it prints)
eye_w   = 4;         // across; at 10 x 4 the tips are 44 degrees off vertical, so they print without support
eye_px  = 12;        // pitch along the tube (2 mm of wall between tips)
eye_py  = 6;         // row pitch; every other row is shifted half a pitch

/* [Hinge] */
ear_t     = 5;       // ear thickness
ear_gap   = 0.5;     // between ear and tray
stop_deg  = 45;      // the swing ends here
stop_r    = 3;       // stop bar between the ears
ear_pilot = 2.6;     // the M3 threads itself into the ear (2.5 = tighter)
cs_d      = 6.4;     // countersink for the M3 flat head (90 degrees)
tray_hole = 3.3;     // the tray turns on the screw's tip
tray_hole_l = 5;     // stays inside the 6 mm side wall

/* [Yoke - hinge ears + handle, one piece (v13)] */
bal_y     = 49;      // handle centre, from the wall: over the balance point of the Vault + screen
band_w    = 22;      // the handle band, front to back
band_t    = 10;      // and thick; its ends are fully round
yk_fing   = 20;      // room for fingers between the case top and the band
yk_y0     = 14;      // the yoke's back edge, from the wall
foot_l    = 14;      // each foot, in from the end of the case
foot_t    = 8;
lug_h     = 5;       // the lug on top of each half, under its foot
key_h     = 1.5;     // raised key on the lug, into a pocket under the foot
key_clr   = 0.2;
yb_pilot  = 2.6;     // M3 threads itself into the lug (4.0 for a brass heat-set insert)
yb_clear  = 3.4;
yb_head_d = 6.2;     // socket head counterbore, open to the top
hinge_pilot = 2.6;   // the hinge screw threads into the ear (4.0 for a heat-set insert)

/* [Spine - plate across the joint on the back (v13)] */
spine     = true;
sp_w      = 48;      // square plate
sp_t      = 2.0;
sp_r      = 5;
sp_clr    = 0.3;     // recess, per side
sp_scr    = 18;      // screw spacing from the centre (2 each side of the joint)
sp_cs_d   = 6.4;     // countersink for M3 flat heads, in the plate's outer face
pad_t     = 2.4;     // the back wall thickened inward behind the plate - stays under the Vault's 2.6 feet so they
                     // slide over it as the Vault goes in; MEASURE that the feet miss the pad (52 x 54 in the middle)
pad_w     = 52;
pad_h     = 54;

/* [Mounting - on the back: wall + DIN, four directions] */
wall_keyholes = true;    // two cross keyholes on the centre line: a slot points up whichever way it hangs
key_sp     = 80;     // centre to centre, along the tube (screws 80 apart, level or plumb)
key_head_d = 8.5;
key_slot_w = 4.2;
key_slot_l = 11;     // the box drops this far onto the screws
din_holes  = true;   // a cross of four holes for a bolt-on 35 mm DIN clip: use the pair across the rail
din_sp     = 25;     // hole spacing - MEASURE your clip
din_hole_d = 3.4;    // M3 clearance; the screws go in from outside (v14)
din_nut_af = 5.7;    // hex pocket for an M3 nut (5.5 across flats + 0.2), in the inside face of the back wall
din_nut_t  = 2.4;    // pocket depth = the nut's thickness, so it sits flush and the Vault slides over it

/* [Hanbi mark - negative space in the perforation] */
logo        = true;
logo_h      = 84;    // on the front, behind the screen: seen when it swings out
side_marks  = true;  // on the top and bottom: the ones seen with the screen down
side_logo_h = 46;
logo_edge   = 0.6;
bp_logo     = true;  // the Hanbi mark on the backplate, upright as the screen hangs (portrait)
bp_logo_h   = 60;

$fn = 64;

// ---------- derived ----------
pk_w = scr_h + 2*scr_clr;                // tray pocket, left-right
pk_h = scr_w + 2*scr_clr;                // tray pocket, up/down
pk_d = scr_t + 0.25;
bz_t = bz_lip + pk_d;
T    = bp_t + bz_t;                      // tray thickness
r    = T/2;                              // THE radius
TW   = pk_w + 2*bz_wall;                 // tray, left-right
TL   = pk_h + 2*bz_wall;                 // tray, up/down
iw   = vault_w + 2*vault_clr;            // inside, up/down
ih   = vault_h + vault_feet + 2*vault_clr;   // inside, wall to front
Hs   = iw + 2*wall;                      // sleeve height
D    = ih + 2*wall;                      // sleeve depth, wall to front face
L0   = max(TW + 2*(ear_gap + ear_t), vault_d);   // tray zone = tray + ears, centred on x = 0 (the Vault's centre)
L    = max(tube_len, L0);                // tube length
x0   = -L0/2;                            // USB/HDMI end of the tube
xc   = x0 + L/2;                         // middle of the tube
// gap behind the screen. Without the hood the tray's top back corner meets the bar's front at stop_deg; with the
// hood, the back of the hood (in line with the tray's back) meets the bar first, so the gap is a little larger.
air  = (r + stop_r)*(1/cos(stop_deg) - 1);       // 5.2, the same since v8 (the printed v10 halves are built round it)
y_h  = D + air + r;                      // hinge axis: the middle of the tray's thickness ...
z_h  = TL - r;                           // ... one radius below the top of the tray (tray bottom flush with sleeve)
y_b  = D + air;                          // tray back face, hanging
air_c = r*(cos(stop_deg) + sin(stop_deg) - 1);   // the gap at which the tray's top back edge alone meets a stop_r bar
bar_R = stop_r + (air - air_c);          // v11: bar radius either side of the plugs, so that edge meets it at stop_deg
m    = r;                                // perforation margin, every face: holes start where the flat starts
ear_band = [L0/2 - ear_t, L0/2];         // the network-side ear: no holes under it
screw = [for (sx = [-1, 1], yy = [18, TL - 18]) [sx*(TW/2 - bz_wall/2), yy]];   // back plate screws (tray-local)
mags  = [for (sx = [-1, 1]) [sx*mag_x, mag_z]];                                 // magnets (tray-local x, y = world x, z)
// ports slot and hood, tray-local x (the board is turned: x = distance - scr_h/2)
yk_z0  = Hs + lug_h;                    // underside of the feet
band_z0 = Hs + yk_fing;                  // underside of the band
yk_top = band_z0 + band_t;               // top of the band and the ears
ft_y1  = D - r;                          // the feet and lugs stop where the case's top front corner starts to round
yb_pts = [for (sx = [-1, 1], yy = [yk_y0 + 7, yk_y0 + 19]) [sx*(L0/2 - 9), yy]];   // yoke bolts (x, y)
px0  = slot_ports[0] - scr_h/2;
px1  = slot_ports[1] - scr_h/2;
hx0  = px0 - hood_side;                  // open end, toward the USB/HDMI end (-x)
hx1  = px1 + hood_side + hood_wall;      // closed end

// ---------- helpers ----------
module rrect(w, h, rr) { offset(rr) square([w - 2*rr, h - 2*rr], center = true); }

module mark2d(which, h) {                // the Hanbi mark: the warding eye with folded fins, 282 units tall
    s = h / 282;
    scale([s, -s]) translate([-1000, -551]) {
        if (which == "silhouette") {
            intersection() {
                translate([ 812, 550]) circle(235, $fn = 240);
                translate([1188, 550]) circle(235, $fn = 240);
            }
            for (dy = [-32, 0, 32]) {
                translate([878, 550 + dy]) square([64, 15], center = true);
                translate([1122, 550 + dy]) square([64, 15], center = true);
            }
        } else {
            difference() {
                intersection() {
                    translate([ 855, 552]) circle(172, $fn = 240);
                    translate([1145, 552]) circle(172, $fn = 240);
                }
                translate([1000, 550]) circle(31, $fn = 96);
            }
            translate([1000, 550]) circle(9, $fn = 48);
        }
    }
}

module eye_hole() {                     // the almond: two arcs meeting in points at +/- eye_l/2 on x
    R = (eye_l*eye_l/4 + eye_w*eye_w/4) / eye_w;
    intersection() {
        translate([0, eye_w/2 - R]) circle(r = R, $fn = 96);
        translate([0, R - eye_w/2]) circle(r = R, $fn = 96);
    }
}

// holes on one pitch inside a w x h field centred on the origin; holes that would touch a skip band
// ([x from, x to]) are left out; the mark (if any, centred at mark_dx) left solid, its eye cut through
module perf_field(w, h, mark_h = 0, mark_dx = 0, skip = [], shape = perf_shape) {
    eye = shape == "eye";
    hx  = eye ? eye_l/2 : perf_d/2;                      // half the hole, along x and across
    hy  = eye ? eye_w/2 : perf_d/2;
    px  = eye ? eye_px : perf_p;
    py  = eye ? eye_py : perf_p;
    ny  = floor((h/2 - hy) / py);
    pts = [for (j = [-ny : ny]) let (off = (eye && (j % 2 != 0)) ? px/2 : 0, nx = floor((w/2 - hx + px) / px))
             for (i = [-nx : nx]) let (cx = i*px + off)
               if (abs(cx) + hx <= w/2)
                 if (len([for (b = skip) if (cx + hx + 1 > b[0] && cx - hx - 1 < b[1]) 1]) == 0)
                   [cx, j*py]];
    difference() {
        for (q = pts) translate(q) { if (eye) eye_hole(); else circle(d = perf_d, $fn = 24); }
        if (mark_h > 0) translate([mark_dx, 0]) offset(r = logo_edge) mark2d("silhouette", mark_h);
    }
    if (mark_h > 0) translate([mark_dx, 0]) mark2d("eye", mark_h);
}

// ---------- 1. sleeve (x left-right along the tube, y from the wall out, z up) ----------
module cavity_2d() { translate([D/2, Hs/2]) rrect(ih, iw, r_in); }

module section_2d() {                    // the tube's cross-section, in (y, z)
    difference() {
        translate([D/2, Hs/2]) rrect(D, Hs, r);
        cavity_2d();
    }
}

module ear_2d() {                        // the sleeve's top front corner drawn up and forward to the hinge axis
    difference() {
        hull() {
            translate([D - r, Hs - r]) circle(r = r, $fn = 96);
            translate([D - r, z_h])    circle(r = r, $fn = 96);
            translate([y_h, z_h])      circle(r = r, $fn = 96);
        }
        cavity_2d();
    }
}

module keyhole_2d() {                    // head hole in the middle, a slot each way: one always points up
    circle(d = key_head_d);
    for (a = [0, 90, 180, 270]) rotate(a)
        hull() { circle(d = key_slot_w); translate([0, key_slot_l]) circle(d = key_slot_w); }
}

key_pts = [for (sx = [-1, 1]) [sx*key_sp/2, Hs/2]];                              // back face (x, z)
din_pts = [for (d = [[0, 1], [0, -1], [1, 0], [-1, 0]]) [d[0]*din_sp/2, Hs/2 + d[1]*din_sp/2]];

clip_pts = [for (s = [-1, 1]) [split_l/2, Hs/2 + s*clip_z]];                    // (x, z), front and back

module mount_keepout_2d() {              // back face, in (x, z)
    if (wall_keyholes) for (k = key_pts) translate(k) circle(r = key_slot_l + key_head_d/2 + perf_d);
    if (din_holes) for (k = din_pts) translate(k) circle(d = din_nut_af/cos(30) + 2*perf_d);
    for (c = clip_pts) translate(c) circle(d = clip_d + 2*perf_d);
    if (spine) translate([0, Hs/2]) rrect(pad_w + 2*perf_d, pad_h + 2*perf_d, 6);
}

module rim() {                           // the basket rim across one end (x0), inside the tube; mirrored for the other
    y_floor = wall + vault_clr + vault_feet;             // the Vault's floor plate
    y_fins  = D - wall - vault_clr;                      // its fins
    if (rim_back > 0)  translate([x0, wall - 0.01, wall - 0.01]) cube([rim_t, y_floor + rim_back - wall + 0.01, iw + 0.02]);
    if (rim_front > 0) translate([x0, y_fins - rim_front, wall - 0.01]) cube([rim_t, D - wall - (y_fins - rim_front) + 0.01, iw + 0.02]);
}
rim_room = (L0 - vault_panel)/2;         // between each tube end and the Vault's port panel
rim_t    = rim_room - rim_play/2;        // v10: the bars take up that room (v9: a fixed 2.5)
if (rim_t < 1.5) echo(str("WARNING: rim_t ", rim_t, " - check vault_panel"));
echo(str("rim: plug band ", ih - (vault_clr + vault_feet + rim_back) - (vault_clr + rim_front), " mm across, bars ",
         rim_t, " mm thick, ", rim_play, " mm end-to-end play"));
echo(str("gap behind the screen ", air, " mm; magnet bosses stand ", air - mag_gap, " mm off the front"));

boss_d = mag_d + 2*mag_clr + 4;          // magnet boss on the sleeve's front
js_zs  = [js_off, Hs - js_off];          // joint screw blocks, low and high
js_y   = D - wall + (wall + air - mag_gap)/2;   // screw axis: the middle of the block's depth

module sleeve() {
    skip = [[L0/2 - foot_l - 1 - xc, L0/2 + 1 - xc], [-L0/2 - 1 - xc, -L0/2 + foot_l + 1 - xc]];   // no holes under the lugs
    union() {
    rim();
    mirror([1, 0, 0]) rim();
    difference() {
        union() {
            translate([x0, 0, 0]) rotate([90, 0, 90]) linear_extrude(L) section_2d();
            // v13: a lug on top at each end for the yoke's foot, with a raised key
            for (sx = [-1, 1]) translate([sx > 0 ? L0/2 - foot_l : -L0/2, 0, 0]) {
                translate([0, yk_y0, Hs - wall]) cube([foot_l, ft_y1 - yk_y0, wall + lug_h]);
                translate([2, yk_y0 + 2, Hs + lug_h - 0.01]) cube([foot_l - 4, ft_y1 - yk_y0 - 4, key_h + 0.01]);
            }
            // v13: the back wall thickened inward behind the spine plate
            if (spine) translate([0, wall - 0.01, Hs/2]) rotate([-90, 0, 0]) linear_extrude(pad_t + 0.01) rrect(pad_w, pad_h, 4);
            // joint screw blocks: from inside the front wall out to mag_gap short of the tray's back
            if (joint_screws) for (zc = js_zs) translate([0, D - wall, zc]) rotate([-90, 0, 0])
                linear_extrude(wall + air - mag_gap) rrect(js_len, js_h, 3);
            // magnet bosses: stand off the front to mag_gap short of the tray's back
            if (magnets) for (q = mags) translate([q[0], D - 1, q[1]]) rotate([-90, 0, 0]) cylinder(d = boss_d, h = air - mag_gap + 1);
        }
        // front: the large mark (behind the screen, centred on the tray), clear of the magnet bosses
        translate([xc, D + 1, Hs/2]) rotate([90, 0, 0]) linear_extrude(wall + 2) difference() {
            perf_field(L - 2*m, Hs - 2*m, logo ? logo_h : 0, -xc);
            if (magnets) for (q = mags) translate([q[0] - xc, q[1] - Hs/2]) circle(d = boss_d + 3);
            if (joint_screws) for (zc = js_zs) translate([-xc, zc - Hs/2]) rrect(js_len + 4, js_h + 4, 5);
        }
        // joint screws: counterbore + clearance in half A, pilot in half B
        if (joint_screws) for (zc = js_zs) translate([0, js_y, zc]) rotate([0, 90, 0]) {
            translate([0, 0, -js_len/2 - 1])     cylinder(d = js_head_d, h = js_head_h + 1);
            translate([0, 0, -js_len/2])         cylinder(d = js_clear, h = js_len/2 + 0.01);
            translate([0, 0, 0])                 cylinder(d = js_pilot, h = js_len/2 - 1);
        }
        // back: around the mounts
        translate([0, wall + 1, 0]) rotate([90, 0, 0]) linear_extrude(wall + 2)
            difference() { translate([xc, Hs/2]) perf_field(L - 2*m, Hs - 2*m); mount_keepout_2d(); }
        // top and bottom: the marks that show (their top toward the wall, as you see them from the front)
        translate([xc, D/2, Hs - wall - 1]) linear_extrude(wall + 2)
            mirror([0, 1]) perf_field(L - 2*m, D - 2*m, side_marks ? side_logo_h : 0, -xc, skip);
        translate([xc, D/2, -1]) linear_extrude(wall + 2)
            mirror([0, 1]) perf_field(L - 2*m, D - 2*m, side_marks ? side_logo_h : 0, -xc);
        // mounts
        if (wall_keyholes) for (k = key_pts)
            translate([k[0], wall + 1, k[1]]) rotate([90, 0, 0]) linear_extrude(wall + 2) keyhole_2d();
        bw = wall + (spine ? pad_t : 0);     // the back wall's thickness at the DIN holes
        if (din_holes) for (k = din_pts) translate([k[0], 0, k[1]]) rotate([-90, 0, 0]) {
            translate([0, 0, -1]) cylinder(d = din_hole_d, h = bw + 2);
            // v14: nut pocket in the inside face; flats top and bottom as the halves print (a short bridge)
            translate([0, 0, bw - din_nut_t]) rotate([0, 0, 30]) cylinder(d = din_nut_af/cos(30), h = din_nut_t + 1, $fn = 6);
        }
        // v13: the spine plate's recess and its 4 screw pilots
        if (spine) {
            translate([0, -1, Hs/2]) rotate([-90, 0, 0]) linear_extrude(1 + sp_t + 0.2) rrect(sp_w + 2*sp_clr, sp_w + 2*sp_clr, sp_r + sp_clr);
            for (sx = [-1, 1], sz = [-1, 1]) translate([sx*sp_scr, sp_t + 0.2 - 0.01, Hs/2 + sz*sp_scr]) rotate([-90, 0, 0])
                cylinder(d = js_pilot, h = wall + pad_t - 0.4 - (sp_t + 0.2));
        }
        // v13: the yoke bolts' pilots, down through key and lug into the top wall
        for (q = yb_pts) translate([q[0], q[1], Hs - wall + 0.5]) cylinder(d = yb_pilot, h = wall + lug_h + key_h);
        // magnet pockets, in the bosses' faces
        if (magnets) for (q = mags) translate([q[0], D + air - mag_gap - mag_t - 0.2, q[1]]) rotate([-90, 0, 0])
            cylinder(d = mag_d + 2*mag_clr, h = mag_t + 1);
        // chamfer inside both ends (each prints on the bed)
        if (foot_cham > 0) for (mx = [0, 1]) mirror([mx, 0, 0]) translate([x0, 0, 0]) rotate([90, 0, 90]) hull() {
            translate([0, 0, -1]) linear_extrude(1.01) offset(delta = foot_cham) cavity_2d();
            linear_extrude(foot_cham) cavity_2d();
        }
    }
    }
}

// ---------- 1y. the yoke: both hinge ears + the handle, one piece (v13), in place on the case ----------
module band_2d() {                       // the handle's section, in (y, z): fully round ends
    hull() for (yy = [bal_y - band_w/2 + band_t/2, bal_y + band_w/2 - band_t/2])
        translate([yy, band_z0 + band_t/2]) circle(d = band_t, $fn = 64);
}
module yoke_ear_2d() {                   // the ear's side, in (y, z): flat on top with the band, round at the hinge
    hull() {
        translate([y_h, z_h]) circle(r = r, $fn = 96);
        translate([yk_y0 + 3, yk_z0 + 3]) circle(r = 3);
        translate([yk_y0 + 3, yk_top - 3]) circle(r = 3);
        translate([y_h - 0.5, yk_top - 0.5]) square(0.5);
    }
}
module yoke() {
    difference() {
        union() {
            for (sx = [-1, 1]) {
                translate([sx > 0 ? L0/2 - ear_t : -L0/2, 0, 0]) rotate([90, 0, 90]) linear_extrude(ear_t) yoke_ear_2d();
                hull() {                 // the foot, flaring up into the ear at 45 degrees
                    translate([sx > 0 ? L0/2 - foot_l : -L0/2, yk_y0, yk_z0]) cube([foot_l, ft_y1 - yk_y0, foot_t]);
                    translate([sx > 0 ? L0/2 - ear_t : -L0/2, yk_y0, yk_z0]) cube([ear_t, ft_y1 - yk_y0, foot_t + foot_l - ear_t]);
                }
            }
            translate([-L0/2, 0, 0]) rotate([90, 0, 90]) linear_extrude(L0) band_2d();
        }
        // hinge screws: pilot through each ear, flat head flush in its outer face (as before)
        for (sx = [-1, 1]) translate([sx*L0/2, y_h, z_h]) rotate([0, sx*90, 0]) {
            translate([0, 0, -ear_t - 1]) cylinder(d = hinge_pilot, h = ear_t + 2);
            translate([0, 0, -(cs_d - hinge_pilot)/2]) cylinder(d1 = hinge_pilot, d2 = cs_d, h = (cs_d - hinge_pilot)/2 + 0.01);
        }
        // the key pockets under the feet
        for (sx = [-1, 1]) translate([(sx > 0 ? L0/2 - foot_l : -L0/2) + 2 - key_clr, yk_y0 + 2 - key_clr, yk_z0 - 1])
            cube([foot_l - 4 + 2*key_clr, ft_y1 - yk_y0 - 4 + 2*key_clr, 1 + key_h + key_clr]);
        // the bolts: clearance through the foot, counterbore open to the top
        for (q = yb_pts) translate([q[0], q[1], 0]) {
            translate([0, 0, yk_z0 - 1]) cylinder(d = yb_clear, h = foot_t + 2);
            translate([0, 0, yk_z0 + foot_t - 3]) cylinder(d = yb_head_d, h = yk_top);
        }
    }
}
module yoke_print() { translate([0, 0, yk_top]) rotate([180, 0, 0]) yoke(); }   // upside down: band and ear tops on the bed

// ---------- 1s. the spine plate (v13): flat, outer face (the wall side) up ----------
module spine_plate() {
    difference() {
        linear_extrude(sp_t) rrect(sp_w, sp_w, sp_r);
        for (sx = [-1, 1], sz = [-1, 1]) translate([sx*sp_scr, sz*sp_scr, 0]) {
            translate([0, 0, -1]) cylinder(d = 3.4, h = sp_t + 2);
            translate([0, 0, sp_t - (sp_cs_d - 3.4)/2]) cylinder(d1 = 3.4, d2 = sp_cs_d + 0.02, h = (sp_cs_d - 3.4)/2 + 0.01);
        }
        if (din_holes) for (k = din_pts) translate([k[0], k[1] - Hs/2, -1]) cylinder(d = din_hole_d, h = sp_t + 2);
    }
}
module place_spine() { translate([0, 0.2 + sp_t, Hs/2]) rotate([90, 0, 0]) children(); }   // outer face 0.2 under the back

// ---------- 1a/1b. the two halves ----------
module ring_prism(grow, xa, xb) {       // the cavity grown by `grow`, from x = xa to x = xb
    translate([xa, 0, 0]) rotate([90, 0, 90]) linear_extrude(xb - xa) offset(delta = grow) cavity_2d();
}

clip_sink = 0.4;                         // v14: each bump starts this far inside the spigot, so it is one body with it
module clip_bump() {                     // standing on z = 0 (the spigot's outer face), ramped all round
    translate([0, 0, -clip_sink]) cylinder(d = clip_d, h = clip_sink + 0.01);
    cylinder(d1 = clip_d, d2 = clip_d - 2*clip_h, h = clip_h);
}
module clip_bumps() {                    // on the spigot's outer face, front (+y) and back (-y)
    for (c = clip_pts) {
        translate([c[0], D - wall/2, c[1]]) rotate([-90, 0, 0]) clip_bump();
        translate([c[0], wall/2, c[1]])     rotate([90, 0, 0])  clip_bump();
    }
}

module half_a() {                        // USB/HDMI end, with the spigot
    intersection() { sleeve(); translate([-L0, -L0, -L0]) cube([L0, 3*L0, 3*L0]); }
    intersection() { sleeve(); ring_prism(wall/2, 0, split_l); }
    clip_bumps();
}

module half_b() {                        // network end, with the socket and the clip holes
    difference() {
        intersection() { sleeve(); translate([0, -L0, -L0]) cube([L0, 3*L0, 3*L0]); }
        ring_prism(wall/2 + split_clr, -1, split_l + split_clr);
        for (c = clip_pts) translate([c[0], -1, c[1]]) rotate([-90, 0, 0]) cylinder(d = clip_d + 0.4, h = D + 2);
    }
}
// note on the DIN holes (v14): the clip's screws go in from outside into the M3 nuts in the back wall's inside face.

// ---------- 2. bezel (tray-local: x left-right, y up from the bottom edge, z = 0 the glass face, z = bz_t its back) ----------
module port_slots() {                    // through the TOP wall, open to the back; wheel on the viewer's right (-x)
    for (s = [slot_wheel, slot_ports])
        translate([s[0] - scr_h/2, TL - bz_wall - 1, slot_from]) cube([s[1] - s[0], bz_wall + 2, bz_t]);
}

module bezel() {
    difference() {
        translate([0, TL/2, 0]) linear_extrude(bz_t) rrect(TW, TL, r);
        translate([0, TL/2, -1]) linear_extrude(bz_t + 2) rrect(pk_w - 2*lip_overlap, pk_h - 2*lip_overlap, 1.5);   // window
        translate([-pk_w/2, bz_wall, bz_lip]) cube([pk_w, pk_h, pk_d + 1]);                                       // pocket
        port_slots();
        for (s = screw) translate([s[0], s[1], bz_t - 10]) cylinder(d = 2.5, h = 11);                            // back plate
        for (sx = [-1, 1]) translate([sx*TW/2, TL - r, r]) rotate([0, -sx*90, 0])                                 // hinge
            translate([0, 0, -1]) cylinder(d = tray_hole, h = tray_hole_l + 1);
    }
    if (conn_cover) conn_housing();
}

// v12: walls round the plug heads, open at the back (the screen drops in with the heads plugged in)
module conn_housing() {
    ca = (px0 + px1)/2 - conn_w/2;       // centred in the ports notch
    cb = (px0 + px1)/2 + conn_w/2;
    yb = TL - bp_notch + 0.3;            // the low end of the side walls, inside the backplate's notch
    yt = TL + conn_up + conn_room + conn_wall;
    for (xa = [ca, cb - conn_wall]) {
        translate([xa, TL - bz_wall, slot_from]) cube([conn_wall, yt - (TL - bz_wall), conn_reach - slot_from]);   // in the top wall's notch and up
        translate([xa, yb, bz_t])                cube([conn_wall, TL - bz_wall - yb + 0.01, conn_reach - bz_t]);   // behind the board
        translate([xa, TL, 0])                   cube([conn_wall, yt - TL, slot_from + 0.01]);                     // above the edge, to the front face
    }
    translate([ca, yt - conn_wall, 0]) cube([cb - ca, conn_wall, conn_reach]);                                    // top
    translate([ca, TL, 0])             cube([cb - ca, yt - TL, conn_wall]);                                       // front, flush with the glass face
}

// ---------- 3. back plate (tray-local, z = 0 against the bezel, z = bp_t its outer face) ----------
module hood_shell() {                    // over the tray's top edge, from the glass face (z = -bz_t) to the outer face
    translate([0, TL, 0]) difference() {
        translate([hx0, 0, -bz_t]) cube([hx1 - hx0, hood_h, T]);
        translate([hx0 - 1, -1, -bz_t + hood_wall]) cube([hx1 - hx0 - hood_wall + 1, hood_h - hood_wall + 1, T - hood_wall - bp_t]);
    }
}

rib_ys = rib_top ? [rib_slit_y, TL - rib_slit_y] : [rib_slit_y];   // bottom slit; the top one mirrors it if on
module rib_slit_2d() {                   // a rounded slot, long across the tray (the ribbon's width)
    hull() for (sx = [-1, 1]) translate([sx*(rib_slit_l - rib_slit_w)/2, 0]) circle(d = rib_slit_w);
}

module backplate() {
    difference() {
        union() {
            translate([0, TL/2, 0]) linear_extrude(bp_t) rrect(TW, TL, r);
            if (hood) hood_shell();
        }
        // perforation, clear of the edge, the screws, the magnets and the top notch
        if (bp_perf) translate([0, 0, -1]) linear_extrude(bp_t + 2) difference() {
            translate([0, (m + TL - bp_notch - 3)/2]) perf_field(TW - 2*m, TL - bp_notch - 3 - m, bp_logo ? bp_logo_h : 0, shape = bp_shape);
            for (s = screw) translate(s) circle(d = 6 + 2*bp_ring);
            if (magnets) for (q = mags) translate(q) circle(d = mag_d + 2*bp_ring);
            if (rib_slits) for (sy = rib_ys) translate([rib_slit_x, sy]) offset(r = 3) rib_slit_2d();
        }
        // v11: ribbon slits, near the bottom and near the top, on the USB/HDMI side
        if (rib_slits) for (sy = rib_ys) translate([rib_slit_x, sy, -1]) linear_extrude(bp_t + 2) rib_slit_2d();
        // the plugs stand taller than the pocket: cut away under the ports (the hood covers them)
        translate([px0, TL - bp_notch, -1]) cube([px1 - px0, bp_notch, bp_t + 2]);
        for (s = screw) translate([s[0], s[1], -1]) {
            cylinder(d = 3.4, h = bp_t + 2);
            translate([0, 0, bp_t + 1 - 1.8]) cylinder(d = 6, h = 2);
        }
        // magnet pockets, open on the outer face (toward the sleeve)
        if (magnets) for (q = mags) translate([q[0], q[1], bp_t - mag_t - 0.2]) cylinder(d = mag_d + 2*mag_clr, h = mag_t + 1);
    }
}
// v14: magnet pockets and counterbores up, the face that meets the bezel on the bed (flipped only if the old hood is on)
module backplate_print() { if (hood) translate([0, 0, bp_t]) rotate([0, 180, 0]) backplate(); else backplate(); }

// ---------- 4. fit test ----------
fit_t = bz_lip + 2.0;
module fit_test() { intersection() { bezel(); translate([-TW, -1, -1]) cube([2*TW, TL + 2, fit_t + 1]); } }

// ---------- the tray on the sleeve ----------
module place_tray() { translate([0, y_b + T, 0]) rotate([90, 0, 0]) children(); }   // glass faces out (+y), bottom flush
module tray() { place_tray() { bezel(); translate([0, 0, bz_t]) backplate(); } }
module swung(a) { translate([0, y_h, z_h]) rotate([a, 0, 0]) translate([0, -y_h, -z_h]) children(); }
module vault() { translate([-vault_d/2, wall + vault_clr, wall + vault_clr]) cube([vault_d, vault_h + vault_feet, vault_w]); }

module assembly() {
    color("Gainsboro") half_a();
    color("DarkSeaGreen") half_b();
    color("Silver") swung(swing) tray();
    color("Peru") yoke();
    if (spine) color("DimGray") place_spine() spine_plate();
    %vault();
    for (sx = [-1, 1]) color("DimGray") translate([sx*(L0/2 - 0.8), y_h, z_h]) rotate([0, 90, 0]) cylinder(d = cs_d - 0.4, h = 1.6, center = true);
}

// each half stands on its outer end, ear flat on the bed, joint up; both fit one 220 bed side by side
module half_a_print() { translate([0, 0, -x0]) rotate([0, -90, 0]) half_a(); }
module half_b_print() { translate([-TL, 0, -x0]) rotate([0, 90, 0]) half_b(); }
module halves_print() { half_a_print(); translate([0, y_h + r + 10, 0]) half_b_print(); }

module print_plate() {   // layout check only - the halves, the bezel and the backplate are separate prints
    halves_print();
    translate([Hs + 25, 0, 0]) bezel();
    translate([Hs + TW + 45, 0, 0]) backplate_print();
}

if      (part == "half_a")      half_a_print();
else if (part == "half_b")      half_b_print();
else if (part == "halves_print") halves_print();
else if (part == "yoke")        yoke_print();
else if (part == "spine")       spine_plate();
else if (part == "sleeve")      sleeve();
else if (part == "bezel")       bezel();
else if (part == "backplate")   backplate_print();
else if (part == "fit_test")    fit_test();
else if (part == "print_plate") print_plate();
else if (part == "check_swing") intersection() { union() { sleeve(); yoke(); } swung(swing) tray(); }   // v13: must be empty at any swing
else if (part == "check_vault") union() { intersection() { sleeve(); vault(); } intersection() { swung(swing) tray(); vault(); } }
else                            assembly();
