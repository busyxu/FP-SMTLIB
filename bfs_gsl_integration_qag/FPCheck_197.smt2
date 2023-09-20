(declare-fun key_ack!2155 () (_ BitVec 32))
(declare-fun limit_ack!2154 () (_ BitVec 64))
(declare-fun epsabs_ack!2153 () (_ BitVec 64))
(declare-fun b_ack!2152 () (_ BitVec 64))
(declare-fun a_ack!2156 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt key_ack!2155 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2155)))
(assert (= #x00000001 key_ack!2155))
(assert (not (bvult #x00000000000003e8 limit_ack!2154)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2153)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2156)
                                   ((_ to_fp 11 53) b_ack!2152))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2156)
                                   ((_ to_fp 11 53) b_ack!2152))))))
  (FPCHECK_FDIV_ACCURACY (CF_log a!1) #x7ff8000000000001)))

(check-sat)
(exit)
