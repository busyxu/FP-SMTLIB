(declare-fun b_ack!49 () (_ BitVec 64))
(declare-fun a_ack!50 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!49) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvslt (bvadd #x00000001 a_ack!50) #x00000000))

(check-sat)
(exit)
