(declare-fun x1_ack!3371 () (_ BitVec 64))
(declare-fun x0_ack!3375 () (_ BitVec 64))
(declare-fun y0_ack!3372 () (_ BitVec 64))
(declare-fun x_ack!3373 () (_ BitVec 64))
(declare-fun y_ack!3374 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3375) ((_ to_fp 11 53) x1_ack!3371))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3372) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3373) ((_ to_fp 11 53) x0_ack!3375))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3373) ((_ to_fp 11 53) x1_ack!3371))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3374) ((_ to_fp 11 53) y0_ack!3372))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3374) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3371)
                       ((_ to_fp 11 53) x0_ack!3375))
               ((_ to_fp 11 53) x0_ack!3375))
       ((_ to_fp 11 53) x1_ack!3371)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3371)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3371)
                       ((_ to_fp 11 53) x0_ack!3375)))
       ((_ to_fp 11 53) x0_ack!3375)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3372))
               ((_ to_fp 11 53) y0_ack!3372))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3372)))
       ((_ to_fp 11 53) y0_ack!3372)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3374)
                       ((_ to_fp 11 53) y0_ack!3372))
               ((_ to_fp 11 53) y0_ack!3372))
       ((_ to_fp 11 53) y_ack!3374)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3374)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3374)
                       ((_ to_fp 11 53) y0_ack!3372)))
       ((_ to_fp 11 53) y0_ack!3372)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3374)
                  ((_ to_fp 11 53) y0_ack!3372))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3372)))))

(check-sat)
(exit)
