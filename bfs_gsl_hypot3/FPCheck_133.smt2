(declare-fun c_ack!662 () (_ BitVec 64))
(declare-fun b_ack!661 () (_ BitVec 64))
(declare-fun a_ack!663 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!661))
       (fp.abs ((_ to_fp 11 53) c_ack!662))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!663))
       (fp.abs ((_ to_fp 11 53) b_ack!661))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!663))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) b_ack!661))
  (fp.abs ((_ to_fp 11 53) a_ack!663))))

(check-sat)
(exit)
