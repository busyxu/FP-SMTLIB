(declare-fun a_ack!27 () (_ BitVec 32))
(declare-fun b_ack!26 () (_ BitVec 64))
(assert (not (bvslt a_ack!27 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x3f30000000000000)))
(assert (bvsle #x00000000 a_ack!27))
(assert (fp.geq (fp.abs (fp.mul roundNearestTiesToEven
                        ((_ to_fp 11 53) #x3fe0000000000000)
                        ((_ to_fp 11 53) b_ack!26)))
        ((_ to_fp 11 53) #x0010000000000000)))

(check-sat)
(exit)
