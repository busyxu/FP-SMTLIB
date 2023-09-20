(declare-fun key_ack!37 () (_ BitVec 32))
(declare-fun limit_ack!36 () (_ BitVec 64))
(declare-fun epsabs_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun a_ack!38 () (_ BitVec 64))
(assert (bvslt key_ack!37 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!36)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!35)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!38)
          ((_ to_fp 11 53) b_ack!34))))

(check-sat)
(exit)
