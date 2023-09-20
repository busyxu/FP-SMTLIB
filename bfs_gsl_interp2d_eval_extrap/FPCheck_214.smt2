(declare-fun x1_ack!2205 () (_ BitVec 64))
(declare-fun x0_ack!2210 () (_ BitVec 64))
(declare-fun y0_ack!2206 () (_ BitVec 64))
(declare-fun x_ack!2208 () (_ BitVec 64))
(declare-fun y_ack!2209 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z2_ack!2207 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2210) ((_ to_fp 11 53) x1_ack!2205))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2206) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2208) ((_ to_fp 11 53) x0_ack!2210))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2208) ((_ to_fp 11 53) x1_ack!2205)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2209) ((_ to_fp 11 53) y0_ack!2206))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2209) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2205)
                       ((_ to_fp 11 53) x0_ack!2210))
               ((_ to_fp 11 53) x0_ack!2210))
       ((_ to_fp 11 53) x1_ack!2205)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2205)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2205)
                       ((_ to_fp 11 53) x0_ack!2210)))
       ((_ to_fp 11 53) x0_ack!2210)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2209)
                       ((_ to_fp 11 53) y0_ack!2206))
               ((_ to_fp 11 53) y0_ack!2206))
       ((_ to_fp 11 53) y_ack!2209)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2209)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2209)
                       ((_ to_fp 11 53) y0_ack!2206)))
       ((_ to_fp 11 53) y0_ack!2206)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2208)
                                   ((_ to_fp 11 53) x0_ack!2210))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2205)
                                   ((_ to_fp 11 53) x0_ack!2210)))
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2209)
                                   ((_ to_fp 11 53) y0_ack!2206))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2206))))))
  (FPCHECK_FMUL_OVERFLOW a!1 z2_ack!2207)))

(check-sat)
(exit)
