(declare-fun a_ack!250 () (_ BitVec 64))
(declare-fun b_ack!249 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!250)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!249) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!250))
       (fp.abs ((_ to_fp 11 53) b_ack!249))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!250))
            (fp.abs ((_ to_fp 11 53) b_ack!249)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) b_ack!249))
  (fp.abs ((_ to_fp 11 53) b_ack!249))))

(check-sat)
(exit)
