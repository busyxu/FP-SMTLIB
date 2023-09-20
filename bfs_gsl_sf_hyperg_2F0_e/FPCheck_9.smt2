(declare-fun c_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!26 () (_ BitVec 64))
(declare-fun a_ack!28 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!27) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) a_ack!28))
  b_ack!26))

(check-sat)
(exit)
