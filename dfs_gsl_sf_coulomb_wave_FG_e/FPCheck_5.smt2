(declare-fun b_ack!22 () (_ BitVec 64))
(declare-fun c_ack!23 () (_ BitVec 64))
(declare-fun d_ack!24 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!25 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!23) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.leq (fp.sub roundNearestTiesToEven
                     ((_ to_fp 11 53) c_ack!23)
                     ((_ to_fp 11 53) roundNearestTiesToEven d_ack!24))
             ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!22) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY a_ack!25 #x3ff0000000000000))

(check-sat)
(exit)
