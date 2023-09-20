(declare-fun a_ack!88 () (_ BitVec 64))
(declare-fun b_ack!87 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!88) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!88))
            (fp.abs ((_ to_fp 11 53) b_ack!87)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!88)) (fp.abs ((_ to_fp 11 53) b_ack!87))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!87))
  (fp.abs ((_ to_fp 11 53) a_ack!88))))

(check-sat)
(exit)
