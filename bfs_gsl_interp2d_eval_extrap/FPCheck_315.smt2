(declare-fun x1_ack!3310 () (_ BitVec 64))
(declare-fun x0_ack!3314 () (_ BitVec 64))
(declare-fun y0_ack!3311 () (_ BitVec 64))
(declare-fun x_ack!3312 () (_ BitVec 64))
(declare-fun y_ack!3313 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!3314) ((_ to_fp 11 53) x1_ack!3310))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!3311) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!3312) ((_ to_fp 11 53) x0_ack!3314))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3312) ((_ to_fp 11 53) x1_ack!3310))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!3313) ((_ to_fp 11 53) y0_ack!3311))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!3313) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3310)
                       ((_ to_fp 11 53) x0_ack!3314))
               ((_ to_fp 11 53) x0_ack!3314))
       ((_ to_fp 11 53) x1_ack!3310)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3310)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3310)
                       ((_ to_fp 11 53) x0_ack!3314)))
       ((_ to_fp 11 53) x0_ack!3314)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3311))
               ((_ to_fp 11 53) y0_ack!3311))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!3311)))
       ((_ to_fp 11 53) y0_ack!3311)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3313)
                       ((_ to_fp 11 53) y0_ack!3311))
               ((_ to_fp 11 53) y0_ack!3311))
       ((_ to_fp 11 53) y_ack!3313)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!3313)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!3313)
                       ((_ to_fp 11 53) y0_ack!3311)))
       ((_ to_fp 11 53) y0_ack!3311)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!3312)
                                   ((_ to_fp 11 53) x0_ack!3314))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3310)
                                   ((_ to_fp 11 53) x0_ack!3314)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!3313)
                                   ((_ to_fp 11 53) y0_ack!3311))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!3311))))))
  (FPCHECK_FMUL_UNDERFLOW a!1 a!2)))

(check-sat)
(exit)
