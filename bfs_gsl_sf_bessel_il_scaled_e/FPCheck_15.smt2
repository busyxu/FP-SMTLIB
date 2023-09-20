(declare-fun b_ack!58 () (_ BitVec 64))
(declare-fun a_ack!59 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!58) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!59 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!58) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!59))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!58) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!58)) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) b_ack!58))
  (fp.abs ((_ to_fp 11 53) b_ack!58))))

(check-sat)
(exit)
