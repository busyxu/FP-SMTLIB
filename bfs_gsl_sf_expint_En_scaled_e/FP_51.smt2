(declare-fun a_ack!845 () (_ BitVec 32))
(declare-fun b_ack!844 () (_ BitVec 64))
(assert (not (bvslt a_ack!845 #x00000000)))
(assert (not (= #x00000000 a_ack!845)))
(assert (= #x00000001 a_ack!845))
(assert (fp.lt ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (fp.leq ((_ to_fp 11 53) b_ack!844) ((_ to_fp 11 53) #xc024000000000000)))

(check-sat)
(exit)
