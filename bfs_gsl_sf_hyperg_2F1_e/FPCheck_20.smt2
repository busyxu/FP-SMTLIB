(declare-fun a_ack!75 () (_ BitVec 64))
(declare-fun b_ack!72 () (_ BitVec 64))
(declare-fun c_ack!73 () (_ BitVec 64))
(declare-fun d_ack!74 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!75) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!72) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!74)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!74) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!74))))
(assert (FPCHECK_FSUB_ACCURACY c_ack!73 b_ack!72))

(check-sat)
(exit)
