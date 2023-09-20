(declare-fun a_ack!109 () (_ BitVec 32))
(declare-fun b_ack!108 () (_ BitVec 64))
(assert (not (bvslt a_ack!109 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) roundNearestTiesToEven (bvmul a_ack!109 a_ack!109))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
