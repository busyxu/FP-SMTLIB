(declare-fun x1_ack!4327 () (_ BitVec 64))
(declare-fun x0_ack!4334 () (_ BitVec 64))
(declare-fun x2_ack!4328 () (_ BitVec 64))
(declare-fun b_ack!4333 () (_ BitVec 64))
(declare-fun a_ack!4332 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4329 () (_ BitVec 64))
(declare-fun y1_ack!4330 () (_ BitVec 64))
(declare-fun y2_ack!4331 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4334) ((_ to_fp 11 53) x1_ack!4327)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4327) ((_ to_fp 11 53) x2_ack!4328)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4327)
                       ((_ to_fp 11 53) x0_ack!4334))
               ((_ to_fp 11 53) x0_ack!4334))
       ((_ to_fp 11 53) x1_ack!4327)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4327)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4327)
                       ((_ to_fp 11 53) x0_ack!4334)))
       ((_ to_fp 11 53) x0_ack!4334)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4328)
                       ((_ to_fp 11 53) x1_ack!4327))
               ((_ to_fp 11 53) x1_ack!4327))
       ((_ to_fp 11 53) x2_ack!4328)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4328)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4328)
                       ((_ to_fp 11 53) x1_ack!4327)))
       ((_ to_fp 11 53) x1_ack!4327)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4327)
                    ((_ to_fp 11 53) x0_ack!4334))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4328)
                    ((_ to_fp 11 53) x1_ack!4327))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4332) ((_ to_fp 11 53) b_ack!4333))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4332) ((_ to_fp 11 53) x0_ack!4334))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4333) ((_ to_fp 11 53) x2_ack!4328))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4332) ((_ to_fp 11 53) b_ack!4333))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4332) ((_ to_fp 11 53) x0_ack!4334))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4332) ((_ to_fp 11 53) x1_ack!4327))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4333) ((_ to_fp 11 53) x0_ack!4334))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4333) ((_ to_fp 11 53) x1_ack!4327))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4327)
                    ((_ to_fp 11 53) x0_ack!4334))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4331)
                           ((_ to_fp 11 53) y1_ack!4330))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4328)
                                   ((_ to_fp 11 53) x1_ack!4327)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4330)
                           ((_ to_fp 11 53) y0_ack!4329))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4327)
                                   ((_ to_fp 11 53) x0_ack!4334)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4328)
                                   ((_ to_fp 11 53) x1_ack!4327))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4327)
                                   ((_ to_fp 11 53) x0_ack!4334))))))
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
                                   ((_ to_fp 11 53) x1_ack!4327)
                                   ((_ to_fp 11 53) x0_ack!4334))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4330)
                                   ((_ to_fp 11 53) y0_ack!4329))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4327)
                                   ((_ to_fp 11 53) x0_ack!4334)))
                   a!5)))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4332)
                    ((_ to_fp 11 53) x0_ack!4334))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!4333)
                    ((_ to_fp 11 53) x0_ack!4334)))))))))

(check-sat)
(exit)
