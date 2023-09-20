(declare-fun key_ack!151 () (_ BitVec 32))
(declare-fun limit_ack!150 () (_ BitVec 64))
(declare-fun epsabs_ack!149 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!148 () (_ BitVec 64))
(declare-fun a_ack!152 () (_ BitVec 64))
(assert (bvslt key_ack!151 #x00000001))
(assert (not (bvult #x00000000000003e8 limit_ack!150)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!149)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!152)
                  ((_ to_fp 11 53) b_ack!148)))))

(check-sat)
(exit)
