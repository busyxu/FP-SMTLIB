(declare-fun x1_ack!2536 () (_ BitVec 64))
(declare-fun x0_ack!2540 () (_ BitVec 64))
(declare-fun y0_ack!2537 () (_ BitVec 64))
(declare-fun x_ack!2538 () (_ BitVec 64))
(declare-fun y_ack!2539 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2540) ((_ to_fp 11 53) x1_ack!2536))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2537) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2538) ((_ to_fp 11 53) x0_ack!2540))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2538) ((_ to_fp 11 53) x1_ack!2536))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2539) ((_ to_fp 11 53) y0_ack!2537))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2539) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2536)
                       ((_ to_fp 11 53) x0_ack!2540))
               ((_ to_fp 11 53) x0_ack!2540))
       ((_ to_fp 11 53) x1_ack!2536)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2536)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2536)
                       ((_ to_fp 11 53) x0_ack!2540)))
       ((_ to_fp 11 53) x0_ack!2540)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2537))
               ((_ to_fp 11 53) y0_ack!2537))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2537)))
       ((_ to_fp 11 53) y0_ack!2537)))

(check-sat)
(exit)
