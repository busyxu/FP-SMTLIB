(declare-fun a_ack!40 () (_ BitVec 64))
(declare-fun b_ack!39 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!40)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!39) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!40))
            (fp.abs ((_ to_fp 11 53) b_ack!39)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!40))
            (fp.abs ((_ to_fp 11 53) b_ack!39)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) b_ack!39))
  (fp.abs ((_ to_fp 11 53) b_ack!39))))

(check-sat)
(exit)
