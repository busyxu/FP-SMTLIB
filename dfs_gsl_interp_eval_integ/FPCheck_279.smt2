(declare-fun x1_ack!3362 () (_ BitVec 64))
(declare-fun x0_ack!3369 () (_ BitVec 64))
(declare-fun x2_ack!3363 () (_ BitVec 64))
(declare-fun b_ack!3368 () (_ BitVec 64))
(declare-fun a_ack!3367 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3364 () (_ BitVec 64))
(declare-fun y1_ack!3365 () (_ BitVec 64))
(declare-fun y2_ack!3366 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3369) ((_ to_fp 11 53) x1_ack!3362)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3362) ((_ to_fp 11 53) x2_ack!3363)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3362)
                       ((_ to_fp 11 53) x0_ack!3369))
               ((_ to_fp 11 53) x0_ack!3369))
       ((_ to_fp 11 53) x1_ack!3362)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3362)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3362)
                       ((_ to_fp 11 53) x0_ack!3369)))
       ((_ to_fp 11 53) x0_ack!3369)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3363)
                       ((_ to_fp 11 53) x1_ack!3362))
               ((_ to_fp 11 53) x1_ack!3362))
       ((_ to_fp 11 53) x2_ack!3363)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3363)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3363)
                       ((_ to_fp 11 53) x1_ack!3362)))
       ((_ to_fp 11 53) x1_ack!3362)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3362)
                    ((_ to_fp 11 53) x0_ack!3369))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3363)
                    ((_ to_fp 11 53) x1_ack!3362))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3367) ((_ to_fp 11 53) b_ack!3368))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3367) ((_ to_fp 11 53) x0_ack!3369))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3368) ((_ to_fp 11 53) x2_ack!3363))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3367) ((_ to_fp 11 53) b_ack!3368))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3367) ((_ to_fp 11 53) x0_ack!3369))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3367) ((_ to_fp 11 53) x1_ack!3362))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3368) ((_ to_fp 11 53) x0_ack!3369))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3368) ((_ to_fp 11 53) x1_ack!3362))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3362)
                    ((_ to_fp 11 53) x0_ack!3369))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3366)
                           ((_ to_fp 11 53) y1_ack!3365))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3363)
                                   ((_ to_fp 11 53) x1_ack!3362)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3365)
                           ((_ to_fp 11 53) y0_ack!3364))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3362)
                                   ((_ to_fp 11 53) x0_ack!3369)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3363)
                                   ((_ to_fp 11 53) x1_ack!3362))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3362)
                                   ((_ to_fp 11 53) x0_ack!3369))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3362)
                                   ((_ to_fp 11 53) x0_ack!3369))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_ACCURACY
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!3365)
                    ((_ to_fp 11 53) y0_ack!3364))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3362)
                    ((_ to_fp 11 53) x0_ack!3369)))
    a!5)))))

(check-sat)
(exit)
