(declare-fun x1_ack!434 () (_ BitVec 64))
(declare-fun x0_ack!438 () (_ BitVec 64))
(declare-fun y0_ack!435 () (_ BitVec 64))
(declare-fun x_ack!436 () (_ BitVec 64))
(declare-fun y_ack!437 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!438) ((_ to_fp 11 53) x1_ack!434))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!435) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!436) ((_ to_fp 11 53) x0_ack!438))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!436) ((_ to_fp 11 53) x1_ack!434))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!437) ((_ to_fp 11 53) y0_ack!435))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!437) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!434)
                       ((_ to_fp 11 53) x0_ack!438))
               ((_ to_fp 11 53) x0_ack!438))
       ((_ to_fp 11 53) x1_ack!434)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!434)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!434)
                       ((_ to_fp 11 53) x0_ack!438)))
       ((_ to_fp 11 53) x0_ack!438)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!435))
               ((_ to_fp 11 53) y0_ack!435))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!435)))
       ((_ to_fp 11 53) y0_ack!435)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!437)
                       ((_ to_fp 11 53) y0_ack!435))
               ((_ to_fp 11 53) y0_ack!435))
       ((_ to_fp 11 53) y_ack!437)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!437)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!437)
                       ((_ to_fp 11 53) y0_ack!435)))
       ((_ to_fp 11 53) y0_ack!435)))

(check-sat)
(exit)
