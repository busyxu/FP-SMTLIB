(declare-fun x1_ack!474 () (_ BitVec 64))
(declare-fun x0_ack!478 () (_ BitVec 64))
(declare-fun y0_ack!475 () (_ BitVec 64))
(declare-fun x_ack!476 () (_ BitVec 64))
(declare-fun y_ack!477 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!478) ((_ to_fp 11 53) x1_ack!474))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!475) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!476) ((_ to_fp 11 53) x0_ack!478))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!476) ((_ to_fp 11 53) x1_ack!474))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!477) ((_ to_fp 11 53) y0_ack!475))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!477) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!474)
                       ((_ to_fp 11 53) x0_ack!478))
               ((_ to_fp 11 53) x0_ack!478))
       ((_ to_fp 11 53) x1_ack!474)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!474)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!474)
                       ((_ to_fp 11 53) x0_ack!478)))
       ((_ to_fp 11 53) x0_ack!478)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!475))
               ((_ to_fp 11 53) y0_ack!475))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!475)))
       ((_ to_fp 11 53) y0_ack!475)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!477)
                       ((_ to_fp 11 53) y0_ack!475))
               ((_ to_fp 11 53) y0_ack!475))
       ((_ to_fp 11 53) y_ack!477)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!477)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!477)
                       ((_ to_fp 11 53) y0_ack!475)))
       ((_ to_fp 11 53) y0_ack!475)))

(check-sat)
(exit)
