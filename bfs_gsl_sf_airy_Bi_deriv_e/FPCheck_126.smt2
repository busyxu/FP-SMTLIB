(declare-fun a_ack!366 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!366) ((_ to_fp 11 53) #xbff0000000000000)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!366) ((_ to_fp 11 53) #xc010000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!366)
          ((_ to_fp 11 53) a_ack!366))
  a_ack!366))

(check-sat)
(exit)
