(declare-fun a_ack!28 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!27 () (_ BitVec 64))
(declare-fun c_ack!26 () (_ BitVec 64))
(declare-fun b_ack!25 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!28) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!25)
                  ((_ to_fp 11 53) c_ack!26)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!27)
                  ((_ to_fp 11 53) a_ack!28)))))

(check-sat)
(exit)
