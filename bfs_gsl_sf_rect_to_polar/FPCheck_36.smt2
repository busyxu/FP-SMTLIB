(declare-fun a_ack!108 () (_ BitVec 64))
(declare-fun b_ack!107 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!108))
            (fp.abs ((_ to_fp 11 53) b_ack!107)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!108))
            (fp.abs ((_ to_fp 11 53) b_ack!107)))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) b_ack!107))
  (fp.abs ((_ to_fp 11 53) b_ack!107))))

(check-sat)
(exit)
