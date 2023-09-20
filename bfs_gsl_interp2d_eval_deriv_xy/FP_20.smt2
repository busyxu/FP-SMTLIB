(declare-fun x1_ack!592 () (_ BitVec 64))
(declare-fun x0_ack!596 () (_ BitVec 64))
(declare-fun y0_ack!593 () (_ BitVec 64))
(declare-fun x_ack!594 () (_ BitVec 64))
(declare-fun y_ack!595 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!596) ((_ to_fp 11 53) x1_ack!592))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!593) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!594) ((_ to_fp 11 53) x0_ack!596))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!594) ((_ to_fp 11 53) x1_ack!592))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!595) ((_ to_fp 11 53) y0_ack!593))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!595) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!594) ((_ to_fp 11 53) x0_ack!596))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!594) ((_ to_fp 11 53) x1_ack!592))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!595) ((_ to_fp 11 53) y0_ack!593))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!595) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!592)
                       ((_ to_fp 11 53) x0_ack!596))
               ((_ to_fp 11 53) x0_ack!596))
       ((_ to_fp 11 53) x1_ack!592)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!592)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!592)
                       ((_ to_fp 11 53) x0_ack!596)))
       ((_ to_fp 11 53) x0_ack!596)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!593))
               ((_ to_fp 11 53) y0_ack!593))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!593)))
       ((_ to_fp 11 53) y0_ack!593)))

(check-sat)
(exit)
