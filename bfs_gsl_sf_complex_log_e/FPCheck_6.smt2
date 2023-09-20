(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun b_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!22)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!22))
            (fp.abs ((_ to_fp 11 53) b_ack!21)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!22))
            (fp.abs ((_ to_fp 11 53) b_ack!21)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) b_ack!21))
  (fp.abs ((_ to_fp 11 53) b_ack!21))))

(check-sat)
(exit)
