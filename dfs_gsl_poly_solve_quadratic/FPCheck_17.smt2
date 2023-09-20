(declare-fun a_ack!76 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!75 () (_ BitVec 64))
(declare-fun b_ack!74 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!76) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!74)
          ((_ to_fp 11 53) b_ack!74))
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4010000000000000)
                  ((_ to_fp 11 53) a_ack!76))
          ((_ to_fp 11 53) c_ack!75))))

(check-sat)
(exit)
