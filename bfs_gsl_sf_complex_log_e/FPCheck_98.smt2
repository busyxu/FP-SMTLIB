(declare-fun a_ack!266 () (_ BitVec 64))
(declare-fun b_ack!265 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!266)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!265) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!266))
       (fp.abs ((_ to_fp 11 53) b_ack!265))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!266))
            (fp.abs ((_ to_fp 11 53) b_ack!265)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) a_ack!266))
  (fp.abs ((_ to_fp 11 53) b_ack!265))))

(check-sat)
(exit)
