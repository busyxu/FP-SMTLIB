(declare-fun x1_ack!3205 () (_ BitVec 64))
(declare-fun x0_ack!3209 () (_ BitVec 64))
(declare-fun y0_ack!3206 () (_ BitVec 64))
(declare-fun x_ack!3207 () (_ BitVec 64))
(declare-fun y_ack!3208 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3209) ((_ to_fp 11 53) x1_ack!3205))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3206) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3207) ((_ to_fp 11 53) x0_ack!3209))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3207) ((_ to_fp 11 53) x1_ack!3205))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3208) ((_ to_fp 11 53) y0_ack!3206))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3208) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3205)
                       ((_ to_fp 11 53) x0_ack!3209))
               ((_ to_fp 11 53) x0_ack!3209))
       ((_ to_fp 11 53) x1_ack!3205)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3205)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3205)
                       ((_ to_fp 11 53) x0_ack!3209)))
       ((_ to_fp 11 53) x0_ack!3209)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3206))
               ((_ to_fp 11 53) y0_ack!3206))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3206)))
       ((_ to_fp 11 53) y0_ack!3206)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3208)
                       ((_ to_fp 11 53) y0_ack!3206))
               ((_ to_fp 11 53) y0_ack!3206))
       ((_ to_fp 11 53) y_ack!3208)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3208)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3208)
                       ((_ to_fp 11 53) y0_ack!3206)))
       ((_ to_fp 11 53) y0_ack!3206)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3208)
          ((_ to_fp 11 53) y0_ack!3206))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3206))))

(check-sat)
(exit)
