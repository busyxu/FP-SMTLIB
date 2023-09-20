(declare-fun x_ack!27 () (_ BitVec 64))
(declare-fun y_ack!26 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!27) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!26)
          ((_ to_fp 11 53) #x7ff0000000000001))))

(check-sat)
(exit)
