(declare-fun a_ack!51 () (_ BitVec 32))
(declare-fun b_ack!49 () (_ BitVec 32))
(declare-fun c_ack!50 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!49 a_ack!51)))
(assert (not (bvslt a_ack!51 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!50) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!49)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!50))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!50))
  (fp.abs ((_ to_fp 11 53) c_ack!50))))

(check-sat)
(exit)
