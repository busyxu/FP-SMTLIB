(declare-fun b_ack!97 () (_ BitVec 64))
(declare-fun alpha_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!97) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) alpha_ack!98)
             ((_ to_fp 11 53) #xbff0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4010000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) alpha_ack!98)
                  ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
