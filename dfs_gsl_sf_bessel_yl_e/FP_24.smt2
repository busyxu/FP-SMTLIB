(declare-fun a_ack!247 () (_ BitVec 32))
(declare-fun b_ack!246 () (_ BitVec 64))
(assert (not (bvslt a_ack!247 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!247)))
(assert (not (= #x00000001 a_ack!247)))
(assert (= #x00000002 a_ack!247))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!246) ((_ to_fp 11 53) #x3fe0000000000000)))

(check-sat)
(exit)
