(declare-fun w0_ack!466 () (_ BitVec 64))
(declare-fun w1_ack!465 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!466) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!465) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  w1_ack!465
  (fp.add roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x0000000000000000)
                  ((_ to_fp 11 53) w0_ack!466))
          ((_ to_fp 11 53) w1_ack!465))))

(check-sat)
(exit)
