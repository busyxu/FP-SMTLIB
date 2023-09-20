(declare-fun x1_ack!3275 () (_ BitVec 64))
(declare-fun x0_ack!3279 () (_ BitVec 64))
(declare-fun y0_ack!3276 () (_ BitVec 64))
(declare-fun x_ack!3277 () (_ BitVec 64))
(declare-fun y_ack!3278 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3279) ((_ to_fp 11 53) x1_ack!3275))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3276) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3277) ((_ to_fp 11 53) x0_ack!3279))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3277) ((_ to_fp 11 53) x1_ack!3275))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3278) ((_ to_fp 11 53) y0_ack!3276))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3278) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3275)
                       ((_ to_fp 11 53) x0_ack!3279))
               ((_ to_fp 11 53) x0_ack!3279))
       ((_ to_fp 11 53) x1_ack!3275)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3275)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3275)
                       ((_ to_fp 11 53) x0_ack!3279)))
       ((_ to_fp 11 53) x0_ack!3279)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3276))
               ((_ to_fp 11 53) y0_ack!3276))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3276)))
       ((_ to_fp 11 53) y0_ack!3276)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3278)
                       ((_ to_fp 11 53) y0_ack!3276))
               ((_ to_fp 11 53) y0_ack!3276))
       ((_ to_fp 11 53) y_ack!3278)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3278)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3278)
                       ((_ to_fp 11 53) y0_ack!3276)))
       ((_ to_fp 11 53) y0_ack!3276)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3278)
                  ((_ to_fp 11 53) y0_ack!3276))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3276)))))

(check-sat)
(exit)
