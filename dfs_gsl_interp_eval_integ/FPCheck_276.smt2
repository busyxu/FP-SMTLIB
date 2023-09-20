(declare-fun x1_ack!3309 () (_ BitVec 64))
(declare-fun x0_ack!3316 () (_ BitVec 64))
(declare-fun x2_ack!3310 () (_ BitVec 64))
(declare-fun b_ack!3315 () (_ BitVec 64))
(declare-fun a_ack!3314 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3311 () (_ BitVec 64))
(declare-fun y1_ack!3312 () (_ BitVec 64))
(declare-fun y2_ack!3313 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3316) ((_ to_fp 11 53) x1_ack!3309)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3309) ((_ to_fp 11 53) x2_ack!3310)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3309)
                       ((_ to_fp 11 53) x0_ack!3316))
               ((_ to_fp 11 53) x0_ack!3316))
       ((_ to_fp 11 53) x1_ack!3309)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3309)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3309)
                       ((_ to_fp 11 53) x0_ack!3316)))
       ((_ to_fp 11 53) x0_ack!3316)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3310)
                       ((_ to_fp 11 53) x1_ack!3309))
               ((_ to_fp 11 53) x1_ack!3309))
       ((_ to_fp 11 53) x2_ack!3310)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3310)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3310)
                       ((_ to_fp 11 53) x1_ack!3309)))
       ((_ to_fp 11 53) x1_ack!3309)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3309)
                    ((_ to_fp 11 53) x0_ack!3316))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3310)
                    ((_ to_fp 11 53) x1_ack!3309))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3314) ((_ to_fp 11 53) b_ack!3315))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3314) ((_ to_fp 11 53) x0_ack!3316))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3315) ((_ to_fp 11 53) x2_ack!3310))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3314) ((_ to_fp 11 53) b_ack!3315))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3314) ((_ to_fp 11 53) x0_ack!3316))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3314) ((_ to_fp 11 53) x1_ack!3309))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3315) ((_ to_fp 11 53) x0_ack!3316))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3315) ((_ to_fp 11 53) x1_ack!3309))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3309)
                    ((_ to_fp 11 53) x0_ack!3316))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3313)
                           ((_ to_fp 11 53) y1_ack!3312))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3310)
                                   ((_ to_fp 11 53) x1_ack!3309)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3312)
                           ((_ to_fp 11 53) y0_ack!3311))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3309)
                                   ((_ to_fp 11 53) x0_ack!3316)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3310)
                                   ((_ to_fp 11 53) x1_ack!3309))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3309)
                                   ((_ to_fp 11 53) x0_ack!3316))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3309)
                    ((_ to_fp 11 53) x0_ack!3316))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
