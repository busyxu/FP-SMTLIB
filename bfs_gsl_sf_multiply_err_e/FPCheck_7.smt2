(declare-fun a_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!35 () (_ BitVec 64))
(declare-fun c_ack!34 () (_ BitVec 64))
(declare-fun b_ack!33 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!36) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!33)
                  ((_ to_fp 11 53) c_ack!34)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!35)
                  ((_ to_fp 11 53) a_ack!36)))))

(check-sat)
(exit)
