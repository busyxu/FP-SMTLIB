(declare-fun c_ack!666 () (_ BitVec 64))
(declare-fun a_ack!667 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!666) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!667 #xffffffff)))
(assert (= #xffffffff a_ack!667))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!666) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!666) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!666) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FADD_ACCURACY c_ack!666 #x3ff0000000000000))

(check-sat)
(exit)
