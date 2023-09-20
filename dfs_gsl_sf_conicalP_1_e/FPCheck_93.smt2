(declare-fun b_ack!258 () (_ BitVec 64))
(declare-fun a_ack!259 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!258) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!259) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!258) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!259) ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!258))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3cb0000000000000)
                 a!1)
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
