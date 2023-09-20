(declare-fun key_ack!108 () (_ BitVec 32))
(declare-fun limit_ack!107 () (_ BitVec 64))
(declare-fun epsabs_ack!106 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!109 () (_ BitVec 64))
(declare-fun b_ack!105 () (_ BitVec 64))
(assert (bvslt key_ack!108 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!107)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!106)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!105)
          ((_ to_fp 11 53) a_ack!109))))

(check-sat)
(exit)
