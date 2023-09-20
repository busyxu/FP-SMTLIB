(declare-fun a_ack!113 () (_ BitVec 32))
(declare-fun b_ack!112 () (_ BitVec 64))
(assert (not (bvslt a_ack!113 #x000003e8)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!112) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvslt a_ack!113 #x00000000))

(check-sat)
(exit)
