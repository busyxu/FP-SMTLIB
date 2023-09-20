(declare-fun w0_ack!51 () (_ BitVec 64))
(declare-fun w1_ack!50 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!51) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!50) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4026000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) w1_ack!50)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x0000000000000000)
                  ((_ to_fp 11 53) w1_ack!50)))))

(check-sat)
(exit)
