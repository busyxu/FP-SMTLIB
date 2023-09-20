(declare-fun w0_ack!299 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!299) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4028000000000000
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) w0_ack!299)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) #x0000000000000000)
                  ((_ to_fp 11 53) w0_ack!299)))))

(check-sat)
(exit)
