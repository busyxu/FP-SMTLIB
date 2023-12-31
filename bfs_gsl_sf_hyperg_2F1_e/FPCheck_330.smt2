(declare-fun a_ack!2450 () (_ BitVec 64))
(declare-fun b_ack!2447 () (_ BitVec 64))
(declare-fun c_ack!2448 () (_ BitVec 64))
(declare-fun d_ack!2449 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!2450) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2447) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2448) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!2449)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2448)
                       ((_ to_fp 11 53) a_ack!2450))
               ((_ to_fp 11 53) b_ack!2447))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (not (fp.eq ((_ to_fp 11 53) c_ack!2448)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!2449) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!2449))))
(assert (FPCHECK_FSUB_ACCURACY c_ack!2448 b_ack!2447))

(check-sat)
(exit)
