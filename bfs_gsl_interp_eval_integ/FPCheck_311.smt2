(declare-fun x1_ack!3859 () (_ BitVec 64))
(declare-fun x0_ack!3866 () (_ BitVec 64))
(declare-fun x2_ack!3860 () (_ BitVec 64))
(declare-fun b_ack!3865 () (_ BitVec 64))
(declare-fun a_ack!3864 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!3861 () (_ BitVec 64))
(declare-fun y1_ack!3862 () (_ BitVec 64))
(declare-fun y2_ack!3863 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3866) ((_ to_fp 11 53) x1_ack!3859)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3859) ((_ to_fp 11 53) x2_ack!3860)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3859)
                       ((_ to_fp 11 53) x0_ack!3866))
               ((_ to_fp 11 53) x0_ack!3866))
       ((_ to_fp 11 53) x1_ack!3859)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3859)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3859)
                       ((_ to_fp 11 53) x0_ack!3866)))
       ((_ to_fp 11 53) x0_ack!3866)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3860)
                       ((_ to_fp 11 53) x1_ack!3859))
               ((_ to_fp 11 53) x1_ack!3859))
       ((_ to_fp 11 53) x2_ack!3860)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3860)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3860)
                       ((_ to_fp 11 53) x1_ack!3859)))
       ((_ to_fp 11 53) x1_ack!3859)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3859)
                    ((_ to_fp 11 53) x0_ack!3866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3860)
                    ((_ to_fp 11 53) x1_ack!3859))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3864) ((_ to_fp 11 53) b_ack!3865))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3864) ((_ to_fp 11 53) x0_ack!3866))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3865) ((_ to_fp 11 53) x2_ack!3860))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3864) ((_ to_fp 11 53) b_ack!3865))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3864) ((_ to_fp 11 53) x0_ack!3866))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3864) ((_ to_fp 11 53) x1_ack!3859))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3865) ((_ to_fp 11 53) x0_ack!3866))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3865) ((_ to_fp 11 53) x1_ack!3859))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3859)
                    ((_ to_fp 11 53) x0_ack!3866))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3863)
                           ((_ to_fp 11 53) y1_ack!3862))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3860)
                                   ((_ to_fp 11 53) x1_ack!3859)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3862)
                           ((_ to_fp 11 53) y0_ack!3861))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3859)
                                   ((_ to_fp 11 53) x0_ack!3866)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3860)
                                   ((_ to_fp 11 53) x1_ack!3859))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3859)
                                   ((_ to_fp 11 53) x0_ack!3866))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x1_ack!3859)
            ((_ to_fp 11 53) x0_ack!3866))
    a!4))))

(check-sat)
(exit)
