(declare-fun a_ack!78 () (_ BitVec 32))
(declare-fun b_ack!77 () (_ BitVec 64))
(assert (not (bvslt a_ack!78 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!77) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!78)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!77) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!77) ((_ to_fp 11 53) #x1fff5de25335c4ee))))
(assert (fp.eq (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4000000000000000)
               ((_ to_fp 11 53) b_ack!77))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
