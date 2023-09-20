(declare-fun a_ack!35 () (_ BitVec 64))
(declare-fun b_ack!34 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) a_ack!35) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!34) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!35)) (fp.abs ((_ to_fp 11 53) b_ack!34))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!35))
            (fp.abs ((_ to_fp 11 53) b_ack!34)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!35))
  (fp.abs ((_ to_fp 11 53) b_ack!34))))

(check-sat)
(exit)
