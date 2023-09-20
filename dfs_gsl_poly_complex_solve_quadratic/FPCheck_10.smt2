(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!29 () (_ BitVec 64))
(declare-fun a_ack!30 () (_ BitVec 64))
(declare-fun b_ack!28 () (_ BitVec 64))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!28)
          ((_ to_fp 11 53) b_ack!28))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4010000000000000)
                  ((_ to_fp 11 53) a_ack!30))
          ((_ to_fp 11 53) c_ack!29))))

(check-sat)
(exit)
