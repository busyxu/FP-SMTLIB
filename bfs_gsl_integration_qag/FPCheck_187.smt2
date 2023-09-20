(declare-fun key_ack!2040 () (_ BitVec 32))
(declare-fun limit_ack!2039 () (_ BitVec 64))
(declare-fun epsabs_ack!2038 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!2041 () (_ BitVec 64))
(declare-fun b_ack!2037 () (_ BitVec 64))
(assert (not (bvslt key_ack!2040 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!2040)))
(assert (= #x00000006 key_ack!2040))
(assert (not (bvult #x00000000000003e8 limit_ack!2039)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2038)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2037)
          ((_ to_fp 11 53) a_ack!2041))))

(check-sat)
(exit)
