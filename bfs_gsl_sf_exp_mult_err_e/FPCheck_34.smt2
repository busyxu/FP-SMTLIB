(declare-fun c_ack!130 () (_ BitVec 64))
(declare-fun a_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!130) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!131) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) c_ack!130))
  (fp.abs ((_ to_fp 11 53) c_ack!130))))

(check-sat)
(exit)
