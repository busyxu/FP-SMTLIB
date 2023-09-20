(declare-fun c_ack!1 () (_ BitVec 64))
(declare-fun a_ack!2 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!0 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!2))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!0))
  (fp.abs ((_ to_fp 11 53) b_ack!0))))

(check-sat)
(exit)
