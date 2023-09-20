(declare-fun c_ack!50 () (_ BitVec 64))
(declare-fun b_ack!49 () (_ BitVec 64))
(declare-fun a_ack!51 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!49))
            (fp.abs ((_ to_fp 11 53) c_ack!50)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!51)) (fp.abs ((_ to_fp 11 53) c_ack!50))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!51))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!51))
  (fp.abs ((_ to_fp 11 53) a_ack!51))))

(check-sat)
(exit)
