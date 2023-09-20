(declare-fun x1_ack!2983 () (_ BitVec 64))
(declare-fun x0_ack!2987 () (_ BitVec 64))
(declare-fun y0_ack!2984 () (_ BitVec 64))
(declare-fun x_ack!2985 () (_ BitVec 64))
(declare-fun y_ack!2986 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2987) ((_ to_fp 11 53) x1_ack!2983))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2984) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2985) ((_ to_fp 11 53) x0_ack!2987))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2985) ((_ to_fp 11 53) x1_ack!2983))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2986) ((_ to_fp 11 53) y0_ack!2984))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2986) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2983)
                       ((_ to_fp 11 53) x0_ack!2987))
               ((_ to_fp 11 53) x0_ack!2987))
       ((_ to_fp 11 53) x1_ack!2983)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2983)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2983)
                       ((_ to_fp 11 53) x0_ack!2987)))
       ((_ to_fp 11 53) x0_ack!2987)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2984))
               ((_ to_fp 11 53) y0_ack!2984))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2984)))
       ((_ to_fp 11 53) y0_ack!2984)))

(check-sat)
(exit)
