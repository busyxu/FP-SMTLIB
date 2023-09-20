(declare-fun a_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!26 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  #xbff0000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!26))
          ((_ to_fp 11 53) b_ack!26))))

(check-sat)
(exit)
