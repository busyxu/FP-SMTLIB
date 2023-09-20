(declare-fun key_ack!57 () (_ BitVec 32))
(declare-fun limit_ack!56 () (_ BitVec 64))
(declare-fun epsabs_ack!55 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!54 () (_ BitVec 64))
(declare-fun a_ack!58 () (_ BitVec 64))
(assert (bvslt key_ack!57 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!56)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!55)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!58)
          ((_ to_fp 11 53) b_ack!54))))

(check-sat)
(exit)
