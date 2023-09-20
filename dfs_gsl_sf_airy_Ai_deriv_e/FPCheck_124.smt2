(declare-fun a_ack!415 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!415)
                       ((_ to_fp 11 53) a_ack!415))
               ((_ to_fp 11 53) a_ack!415))
       ((_ to_fp 11 53) #x41313a9357d08d7f)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!415) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY a_ack!415 a_ack!415))

(check-sat)
(exit)
