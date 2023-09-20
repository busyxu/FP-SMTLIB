(declare-fun b_ack!26 () (_ BitVec 64))
(declare-fun c_ack!27 () (_ BitVec 64))
(declare-fun d_ack!28 () (_ BitVec 32))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!27) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!27)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!28))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!26) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
