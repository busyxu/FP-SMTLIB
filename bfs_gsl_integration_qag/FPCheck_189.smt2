(declare-fun key_ack!2063 () (_ BitVec 32))
(declare-fun limit_ack!2062 () (_ BitVec 64))
(declare-fun epsabs_ack!2061 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!2060 () (_ BitVec 64))
(declare-fun a_ack!2064 () (_ BitVec 64))
(assert (not (bvslt key_ack!2063 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2063)))
(assert (= #x00000006 key_ack!2063))
(assert (not (bvult #x00000000000003e8 limit_ack!2062)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2061)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2064)
                  ((_ to_fp 11 53) b_ack!2060)))))

(check-sat)
(exit)
