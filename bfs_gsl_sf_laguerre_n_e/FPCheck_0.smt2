(declare-fun a_ack!4 () (_ BitVec 32))
(declare-fun c_ack!3 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!2 () (_ BitVec 64))
(assert (not (bvslt a_ack!4 #x00000000)))
(assert (not (= #x00000000 a_ack!4)))
(assert (not (= #x00000001 a_ack!4)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!3) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW b_ack!2 #x3ff0000000000000))

(check-sat)
(exit)
