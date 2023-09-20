(declare-fun limit_ack!871 () (_ BitVec 64))
(declare-fun epsabs_ack!870 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!872 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!871)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!870)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (CF_log (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!872)
                                   ((_ to_fp 11 53) #x3f9abcb2bd7da4dd))))))
  (FPCHECK_FDIV_OVERFLOW a!1 #x3fc4aee469e6fcc6)))

(check-sat)
(exit)
