(declare-fun key_ack!2030 () (_ BitVec 32))
(declare-fun limit_ack!2029 () (_ BitVec 64))
(declare-fun epsabs_ack!2028 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!2031 () (_ BitVec 64))
(declare-fun b_ack!2027 () (_ BitVec 64))
(assert (not (bvslt key_ack!2030 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2030)))
(assert (= #x00000006 key_ack!2030))
(assert (not (bvult #x00000000000003e8 limit_ack!2029)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2028)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2027)
          ((_ to_fp 11 53) a_ack!2031))))

(check-sat)
(exit)
