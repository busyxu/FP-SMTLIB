(declare-fun a_ack!996 () (_ BitVec 64))
(declare-fun b_ack!995 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!996) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!995) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!995) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!996) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!995)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!996)))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!996) ((_ to_fp 11 53) #x412e848000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!996) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!995) ((_ to_fp 11 53) #x4014000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!996) ((_ to_fp 11 53) b_ack!995))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!996)
                       ((_ to_fp 11 53) #x2006a09e667f3bcd))
               ((_ to_fp 11 53) #x2006a09e667f3bcd))
       ((_ to_fp 11 53) a_ack!996)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!996)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!996)
                       ((_ to_fp 11 53) #x2006a09e667f3bcd)))
       ((_ to_fp 11 53) #x2006a09e667f3bcd)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!995)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!996)
               ((_ to_fp 11 53) #x2006a09e667f3bcd))))

(check-sat)
(exit)
