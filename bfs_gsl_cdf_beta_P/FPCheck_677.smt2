(declare-fun x_ack!3194 () (_ BitVec 64))
(declare-fun nu1_ack!3192 () (_ BitVec 64))
(declare-fun nu2_ack!3193 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!3194) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!3194) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3194) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!3194) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!3192) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu2_ack!3193) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!3192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!3193) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!3192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!3193) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!3192) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!3193) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!3192) ((_ to_fp 11 53) nu2_ack!3193))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!3192) ((_ to_fp 11 53) nu2_ack!3193)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!3192)
                    ((_ to_fp 11 53) nu2_ack!3193))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!3192)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) nu1_ack!3192)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3f847ae147ae147b)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbf122c77e28883ce)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f0559a074362da9)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!3192)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
  (FPCHECK_FADD_OVERFLOW
    #x3f1bfa716513d256
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) nu1_ack!3192)
                    ((_ to_fp 11 53) #x4000000000000000))
            a!1))))

(check-sat)
(exit)
