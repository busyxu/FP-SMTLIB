(declare-fun c_ack!605 () (_ BitVec 64))
(declare-fun b_ack!604 () (_ BitVec 64))
(declare-fun a_ack!606 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!604))
       (fp.abs ((_ to_fp 11 53) c_ack!605))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!606))
       (fp.abs ((_ to_fp 11 53) b_ack!604))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!606))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!606))
  (fp.abs ((_ to_fp 11 53) a_ack!606))))

(check-sat)
(exit)
