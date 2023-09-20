(declare-fun x1_ack!1242 () (_ BitVec 64))
(declare-fun x0_ack!1246 () (_ BitVec 64))
(declare-fun y0_ack!1243 () (_ BitVec 64))
(declare-fun x_ack!1244 () (_ BitVec 64))
(declare-fun y_ack!1245 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1246) ((_ to_fp 11 53) x1_ack!1242))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1243) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1244) ((_ to_fp 11 53) x0_ack!1246))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!1244) ((_ to_fp 11 53) x1_ack!1242))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1245) ((_ to_fp 11 53) y0_ack!1243))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1245) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1242)
                       ((_ to_fp 11 53) x0_ack!1246))
               ((_ to_fp 11 53) x0_ack!1246))
       ((_ to_fp 11 53) x1_ack!1242)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1242)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1242)
                       ((_ to_fp 11 53) x0_ack!1246)))
       ((_ to_fp 11 53) x0_ack!1246)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1243))
               ((_ to_fp 11 53) y0_ack!1243))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1243)))
       ((_ to_fp 11 53) y0_ack!1243)))

(check-sat)
(exit)
