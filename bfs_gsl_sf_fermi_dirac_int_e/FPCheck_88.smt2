(declare-fun a_ack!275 () (_ BitVec 32))
(declare-fun b_ack!274 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!275 #xffffffff)))
(assert (= #xffffffff a_ack!275))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!274) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!274) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW b_ack!274 #x3ff0000000000000))

(check-sat)
(exit)
