(declare-fun a_ack!115 () (_ BitVec 64))
(declare-fun b_ack!113 () (_ BitVec 64))
(declare-fun epsabs_ack!114 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!113)
                                   ((_ to_fp 11 53) a_ack!115))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!114)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!113)
                  ((_ to_fp 11 53) a_ack!115)))
  #x3fef2a3e062af2d8))

(check-sat)
(exit)
