(declare-fun d_ack!31 () (_ BitVec 64))
(declare-fun a_ack!32 () (_ BitVec 64))
(declare-fun b_ack!30 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!31) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!32) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!31) ((_ to_fp 11 53) #x0024000000000001)))
(assert (bvsle #x00000000 b_ack!30))
(assert (bvsle #x00000001 b_ack!30))

(check-sat)
(exit)
