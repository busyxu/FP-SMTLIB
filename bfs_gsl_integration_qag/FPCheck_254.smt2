(declare-fun key_ack!2725 () (_ BitVec 32))
(declare-fun limit_ack!2724 () (_ BitVec 64))
(declare-fun epsabs_ack!2723 () (_ BitVec 64))
(declare-fun b_ack!2722 () (_ BitVec 64))
(declare-fun a_ack!2726 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt key_ack!2725 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2725)))
(assert (= #x00000001 key_ack!2725))
(assert (not (bvult #x00000000000003e8 limit_ack!2724)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2723)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2726)
                                   ((_ to_fp 11 53) b_ack!2722))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2722)
                  ((_ to_fp 11 53) a_ack!2726)))
  #x3fe7ba9f9be3a1d6))

(check-sat)
(exit)
