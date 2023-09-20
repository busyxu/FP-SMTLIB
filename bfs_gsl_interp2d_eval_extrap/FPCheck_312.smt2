(declare-fun x1_ack!3285 () (_ BitVec 64))
(declare-fun x0_ack!3289 () (_ BitVec 64))
(declare-fun y0_ack!3286 () (_ BitVec 64))
(declare-fun x_ack!3287 () (_ BitVec 64))
(declare-fun y_ack!3288 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3289) ((_ to_fp 11 53) x1_ack!3285))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3286) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3287) ((_ to_fp 11 53) x0_ack!3289))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3287) ((_ to_fp 11 53) x1_ack!3285))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3288) ((_ to_fp 11 53) y0_ack!3286))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3288) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3285)
                       ((_ to_fp 11 53) x0_ack!3289))
               ((_ to_fp 11 53) x0_ack!3289))
       ((_ to_fp 11 53) x1_ack!3285)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3285)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3285)
                       ((_ to_fp 11 53) x0_ack!3289)))
       ((_ to_fp 11 53) x0_ack!3289)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3286))
               ((_ to_fp 11 53) y0_ack!3286))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3286)))
       ((_ to_fp 11 53) y0_ack!3286)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3288)
                       ((_ to_fp 11 53) y0_ack!3286))
               ((_ to_fp 11 53) y0_ack!3286))
       ((_ to_fp 11 53) y_ack!3288)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3288)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3288)
                       ((_ to_fp 11 53) y0_ack!3286)))
       ((_ to_fp 11 53) y0_ack!3286)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!3288)
                  ((_ to_fp 11 53) y0_ack!3286))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!3286)))))

(check-sat)
(exit)
