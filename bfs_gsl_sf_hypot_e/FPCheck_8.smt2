(declare-fun a_ack!26 () (_ BitVec 64))
(declare-fun b_ack!25 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) a_ack!26) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!25) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!26))
            (fp.abs ((_ to_fp 11 53) b_ack!25)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!26))
            (fp.abs ((_ to_fp 11 53) b_ack!25)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) b_ack!25))
  (fp.abs ((_ to_fp 11 53) b_ack!25))))

(check-sat)
(exit)
