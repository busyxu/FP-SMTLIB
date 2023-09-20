(declare-fun a_ack!170 () (_ BitVec 64))
(declare-fun b_ack!169 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!170) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!170))
            (fp.abs ((_ to_fp 11 53) b_ack!169)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!170))
            (fp.abs ((_ to_fp 11 53) b_ack!169)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!169))
  (fp.abs ((_ to_fp 11 53) b_ack!169))))

(check-sat)
(exit)
