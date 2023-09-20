(declare-fun x1_ack!2200 () (_ BitVec 64))
(declare-fun x0_ack!2204 () (_ BitVec 64))
(declare-fun y0_ack!2201 () (_ BitVec 64))
(declare-fun x_ack!2202 () (_ BitVec 64))
(declare-fun y_ack!2203 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2204) ((_ to_fp 11 53) x1_ack!2200))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2201) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2202) ((_ to_fp 11 53) x0_ack!2204))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2202) ((_ to_fp 11 53) x1_ack!2200)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2203) ((_ to_fp 11 53) y0_ack!2201))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2203) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2200)
                       ((_ to_fp 11 53) x0_ack!2204))
               ((_ to_fp 11 53) x0_ack!2204))
       ((_ to_fp 11 53) x1_ack!2200)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2200)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2200)
                       ((_ to_fp 11 53) x0_ack!2204)))
       ((_ to_fp 11 53) x0_ack!2204)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2203)
                       ((_ to_fp 11 53) y0_ack!2201))
               ((_ to_fp 11 53) y0_ack!2201))
       ((_ to_fp 11 53) y_ack!2203)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2203)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2203)
                       ((_ to_fp 11 53) y0_ack!2201)))
       ((_ to_fp 11 53) y0_ack!2201)))

(check-sat)
(exit)
