(declare-fun b_ack!376 () (_ BitVec 64))
(declare-fun a_ack!377 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!376) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!376) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!377 #x00000000)))
(assert (not (= #x00000000 a_ack!377)))
(assert (= #x00000001 a_ack!377))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!376) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!376) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!376)
               ((_ to_fp 11 53) b_ack!376))
       ((_ to_fp 11 53) #x3f6428a2f98d728d)))

(check-sat)
(exit)
