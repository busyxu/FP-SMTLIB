(declare-fun key_ack!434 () (_ BitVec 32))
(declare-fun limit_ack!433 () (_ BitVec 64))
(declare-fun epsabs_ack!432 () (_ BitVec 64))
(declare-fun b_ack!431 () (_ BitVec 64))
(declare-fun a_ack!435 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt key_ack!434 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!433)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!432)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!435)
                                   ((_ to_fp 11 53) b_ack!431))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!435)
                                   ((_ to_fp 11 53) b_ack!431))))))
  (FPCHECK_FDIV_ACCURACY (CF_log a!1) #x1fd0000000000000)))

(check-sat)
(exit)
