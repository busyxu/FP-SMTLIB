(declare-fun c_ack!52 () (_ BitVec 64))
(declare-fun a_ack!53 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!52) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!53 #xffffffff)))
(assert (not (= #xffffffff a_ack!53)))
(assert (= #x00000000 a_ack!53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!52) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!52) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!52) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FADD_ACCURACY c_ack!52 #x3ff0000000000000))

(check-sat)
(exit)
