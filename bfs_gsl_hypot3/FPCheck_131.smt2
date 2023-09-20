(declare-fun c_ack!653 () (_ BitVec 64))
(declare-fun b_ack!652 () (_ BitVec 64))
(declare-fun a_ack!654 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!652))
       (fp.abs ((_ to_fp 11 53) c_ack!653))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!654))
       (fp.abs ((_ to_fp 11 53) b_ack!652))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!654))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) b_ack!652))
  (fp.abs ((_ to_fp 11 53) a_ack!654))))

(check-sat)
(exit)
