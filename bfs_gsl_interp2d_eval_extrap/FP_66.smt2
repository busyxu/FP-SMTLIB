(declare-fun x1_ack!2656 () (_ BitVec 64))
(declare-fun x0_ack!2660 () (_ BitVec 64))
(declare-fun y0_ack!2657 () (_ BitVec 64))
(declare-fun x_ack!2658 () (_ BitVec 64))
(declare-fun y_ack!2659 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2660) ((_ to_fp 11 53) x1_ack!2656))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2657) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2658) ((_ to_fp 11 53) x0_ack!2660))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2658) ((_ to_fp 11 53) x1_ack!2656))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2659) ((_ to_fp 11 53) y0_ack!2657))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2659) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2656)
                       ((_ to_fp 11 53) x0_ack!2660))
               ((_ to_fp 11 53) x0_ack!2660))
       ((_ to_fp 11 53) x1_ack!2656)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2656)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2656)
                       ((_ to_fp 11 53) x0_ack!2660)))
       ((_ to_fp 11 53) x0_ack!2660)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2657))
               ((_ to_fp 11 53) y0_ack!2657))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2657)))
       ((_ to_fp 11 53) y0_ack!2657)))

(check-sat)
(exit)
