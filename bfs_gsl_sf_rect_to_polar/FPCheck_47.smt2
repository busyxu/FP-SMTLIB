(declare-fun a_ack!134 () (_ BitVec 64))
(declare-fun b_ack!133 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) a_ack!134) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!133) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!134))
       (fp.abs ((_ to_fp 11 53) b_ack!133))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!134))
            (fp.abs ((_ to_fp 11 53) b_ack!133)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) a_ack!134))
  (fp.abs ((_ to_fp 11 53) b_ack!133))))

(check-sat)
(exit)
