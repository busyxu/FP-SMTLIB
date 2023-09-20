(declare-fun key_ack!3695 () (_ BitVec 32))
(declare-fun limit_ack!3694 () (_ BitVec 64))
(declare-fun epsabs_ack!3693 () (_ BitVec 64))
(declare-fun b_ack!3692 () (_ BitVec 64))
(declare-fun a_ack!3696 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt key_ack!3695 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!3695)))
(assert (= #x00000001 key_ack!3695))
(assert (not (bvult #x00000000000003e8 limit_ack!3694)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!3693)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3696)
                                   ((_ to_fp 11 53) b_ack!3692))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3692)
                  ((_ to_fp 11 53) a_ack!3696)))
  #x3fefba009d4d09b1))

(check-sat)
(exit)
