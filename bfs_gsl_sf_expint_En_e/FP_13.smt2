(declare-fun a_ack!111 () (_ BitVec 32))
(declare-fun b_ack!110 () (_ BitVec 64))
(assert (not (bvslt a_ack!111 #x00000000)))
(assert (not (= #x00000000 a_ack!111)))
(assert (= #x00000001 a_ack!111))
(assert (fp.lt ((_ to_fp 11 53) b_ack!110) ((_ to_fp 11 53) #xc085eeaad5511c64)))

(check-sat)
(exit)
