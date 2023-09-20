(declare-fun c_ack!80 () (_ BitVec 64))
(declare-fun b_ack!79 () (_ BitVec 64))
(declare-fun a_ack!81 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!79))
            (fp.abs ((_ to_fp 11 53) c_ack!80)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!81)) (fp.abs ((_ to_fp 11 53) c_ack!80))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!81))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!79))
  (fp.abs ((_ to_fp 11 53) a_ack!81))))

(check-sat)
(exit)
