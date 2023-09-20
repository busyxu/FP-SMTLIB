(declare-fun c_ack!112 () (_ BitVec 64))
(declare-fun a_ack!113 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) c_ack!112) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 a_ack!113))
(assert (bvsle #x00000001 a_ack!113))

(check-sat)
(exit)
