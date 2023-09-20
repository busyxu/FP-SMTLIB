(declare-fun b_ack!26 () (_ BitVec 64))
(declare-fun a_ack!27 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!27 #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!26))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!27))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!26))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!26)))
       ((_ to_fp 11 53) #x3fc999999999999a)))

(check-sat)
(exit)
