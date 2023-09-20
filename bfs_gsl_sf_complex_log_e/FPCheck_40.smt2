(declare-fun a_ack!98 () (_ BitVec 64))
(declare-fun b_ack!97 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!98) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!98))
            (fp.abs ((_ to_fp 11 53) b_ack!97)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!98)) (fp.abs ((_ to_fp 11 53) b_ack!97))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) b_ack!97))
  (fp.abs ((_ to_fp 11 53) a_ack!98))))

(check-sat)
(exit)
