(declare-fun c_ack!86 () (_ BitVec 64))
(declare-fun b_ack!85 () (_ BitVec 64))
(declare-fun a_ack!87 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!85))
            (fp.abs ((_ to_fp 11 53) c_ack!86)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!87)) (fp.abs ((_ to_fp 11 53) c_ack!86))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!87))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!85))
  (fp.abs ((_ to_fp 11 53) a_ack!87))))

(check-sat)
(exit)
