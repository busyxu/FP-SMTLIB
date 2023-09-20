(declare-fun w0_ack!582 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!582) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  w0_ack!582
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x0000000000000000)
          ((_ to_fp 11 53) w0_ack!582))))

(check-sat)
(exit)
