(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!23 () (_ BitVec 64))
(declare-fun a_ack!24 () (_ BitVec 64))
(declare-fun b_ack!22 () (_ BitVec 64))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!22)
          ((_ to_fp 11 53) b_ack!22))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4010000000000000)
                  ((_ to_fp 11 53) a_ack!24))
          ((_ to_fp 11 53) c_ack!23))))

(check-sat)
(exit)
