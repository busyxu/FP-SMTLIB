(declare-fun b_ack!585 () (_ BitVec 32))
(declare-fun a_ack!587 () (_ BitVec 32))
(declare-fun c_ack!586 () (_ BitVec 64))
(assert (not (bvslt b_ack!585 #x00000000)))
(assert (not (bvslt a_ack!587 b_ack!585)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!586) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!586) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!585))
(assert (not (bvslt a_ack!587 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!586) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!586) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!587)))
(assert (not (= #x00000001 a_ack!587)))
(assert (bvsle #x00000002 a_ack!587))
(assert (bvsle #x00000003 a_ack!587))

(check-sat)
(exit)
