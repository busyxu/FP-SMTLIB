(declare-fun c_ack!95 () (_ BitVec 64))
(declare-fun b_ack!94 () (_ BitVec 64))
(declare-fun a_ack!96 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!94))
            (fp.abs ((_ to_fp 11 53) c_ack!95)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!96)) (fp.abs ((_ to_fp 11 53) c_ack!95))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!96))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) b_ack!94))
  (fp.abs ((_ to_fp 11 53) a_ack!96))))

(check-sat)
(exit)
