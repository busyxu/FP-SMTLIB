(declare-fun limit_ack!3674 () (_ BitVec 64))
(declare-fun epsabs_ack!3679 () (_ BitVec 64))
(declare-fun a_ack!3680 () (_ BitVec 64))
(declare-fun x1_ack!3675 () (_ BitVec 64))
(declare-fun x2_ack!3676 () (_ BitVec 64))
(declare-fun x3_ack!3677 () (_ BitVec 64))
(declare-fun b_ack!3678 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!3674)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3679)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!3675) ((_ to_fp 11 53) a_ack!3680))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!3676) ((_ to_fp 11 53) x1_ack!3675))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!3677) ((_ to_fp 11 53) x2_ack!3676))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3678) ((_ to_fp 11 53) x3_ack!3677))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3680)
                                   ((_ to_fp 11 53) x1_ack!3675))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3675)
                                   ((_ to_fp 11 53) a_ack!3680)))
                   ((_ to_fp 11 53) #x3fc30e507891e27a))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3680)
                                   ((_ to_fp 11 53) x1_ack!3675)))
                   a!1)))
  (FPCHECK_FINVALID_LOG
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!2)))))

(check-sat)
(exit)
