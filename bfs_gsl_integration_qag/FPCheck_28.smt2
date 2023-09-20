(declare-fun key_ack!309 () (_ BitVec 32))
(declare-fun limit_ack!308 () (_ BitVec 64))
(declare-fun epsabs_ack!307 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!310 () (_ BitVec 64))
(declare-fun b_ack!306 () (_ BitVec 64))
(assert (not (bvslt key_ack!309 #x00000001)))
(assert (not (bvslt #x00000006 key_ack!309)))
(assert (= #x00000001 key_ack!309))
(assert (not (bvult #x00000000000003e8 limit_ack!308)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!307)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!306)
          ((_ to_fp 11 53) a_ack!310))))

(check-sat)
(exit)
