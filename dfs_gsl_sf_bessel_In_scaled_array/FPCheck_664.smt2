(declare-fun a_ack!2801 () (_ BitVec 32))
(declare-fun b_ack!2799 () (_ BitVec 32))
(declare-fun c_ack!2800 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2799 a_ack!2801)))
(assert (not (bvslt a_ack!2801 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2800) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2799)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2800))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.abs ((_ to_fp 11 53) c_ack!2800))
  (fp.abs ((_ to_fp 11 53) c_ack!2800))))

(check-sat)
(exit)
