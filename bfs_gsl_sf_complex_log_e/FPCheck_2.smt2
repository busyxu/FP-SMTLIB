(declare-fun a_ack!8 () (_ BitVec 64))
(declare-fun b_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!8) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!8))
            (fp.abs ((_ to_fp 11 53) b_ack!7)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!8)) (fp.abs ((_ to_fp 11 53) b_ack!7))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!7))
  (fp.abs ((_ to_fp 11 53) a_ack!8))))

(check-sat)
(exit)
