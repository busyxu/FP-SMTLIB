(declare-fun a_ack!154 () (_ BitVec 64))
(declare-fun b_ack!153 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!154))
            (fp.abs ((_ to_fp 11 53) b_ack!153)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!154))
       (fp.abs ((_ to_fp 11 53) b_ack!153))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!153))
  (fp.abs ((_ to_fp 11 53) a_ack!154))))

(check-sat)
(exit)
