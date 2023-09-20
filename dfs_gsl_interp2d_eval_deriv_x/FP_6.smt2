(declare-fun x1_ack!248 () (_ BitVec 64))
(declare-fun x0_ack!252 () (_ BitVec 64))
(declare-fun y0_ack!249 () (_ BitVec 64))
(declare-fun x_ack!250 () (_ BitVec 64))
(declare-fun y_ack!251 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!252) ((_ to_fp 11 53) x1_ack!248))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!249) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!250) ((_ to_fp 11 53) x0_ack!252))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!250) ((_ to_fp 11 53) x1_ack!248))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!251) ((_ to_fp 11 53) y0_ack!249))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!251) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!250) ((_ to_fp 11 53) x0_ack!252))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!250) ((_ to_fp 11 53) x1_ack!248))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!251) ((_ to_fp 11 53) y0_ack!249))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!251) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!248)
                       ((_ to_fp 11 53) x0_ack!252))
               ((_ to_fp 11 53) x0_ack!252))
       ((_ to_fp 11 53) x1_ack!248)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!248)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!248)
                       ((_ to_fp 11 53) x0_ack!252)))
       ((_ to_fp 11 53) x0_ack!252)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!249))
               ((_ to_fp 11 53) y0_ack!249))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!249)))
       ((_ to_fp 11 53) y0_ack!249)))

(check-sat)
(exit)
