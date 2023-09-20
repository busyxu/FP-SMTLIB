(declare-fun a_ack!36 () (_ BitVec 64))
(declare-fun b_ack!35 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!36)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!35) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!36))
            (fp.abs ((_ to_fp 11 53) b_ack!35)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!36))
            (fp.abs ((_ to_fp 11 53) b_ack!35)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!35))
  (fp.abs ((_ to_fp 11 53) b_ack!35))))

(check-sat)
(exit)
