(declare-fun x1_ack!3240 () (_ BitVec 64))
(declare-fun x0_ack!3244 () (_ BitVec 64))
(declare-fun y0_ack!3241 () (_ BitVec 64))
(declare-fun x_ack!3242 () (_ BitVec 64))
(declare-fun y_ack!3243 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3244) ((_ to_fp 11 53) x1_ack!3240))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3241) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3242) ((_ to_fp 11 53) x0_ack!3244))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3242) ((_ to_fp 11 53) x1_ack!3240))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3243) ((_ to_fp 11 53) y0_ack!3241))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3243) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3240)
                       ((_ to_fp 11 53) x0_ack!3244))
               ((_ to_fp 11 53) x0_ack!3244))
       ((_ to_fp 11 53) x1_ack!3240)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3240)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3240)
                       ((_ to_fp 11 53) x0_ack!3244)))
       ((_ to_fp 11 53) x0_ack!3244)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3241))
               ((_ to_fp 11 53) y0_ack!3241))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3241)))
       ((_ to_fp 11 53) y0_ack!3241)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3243)
                       ((_ to_fp 11 53) y0_ack!3241))
               ((_ to_fp 11 53) y0_ack!3241))
       ((_ to_fp 11 53) y_ack!3243)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3243)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3243)
                       ((_ to_fp 11 53) y0_ack!3241)))
       ((_ to_fp 11 53) y0_ack!3241)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!3243)
          ((_ to_fp 11 53) y0_ack!3241))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!3241))))

(check-sat)
(exit)
