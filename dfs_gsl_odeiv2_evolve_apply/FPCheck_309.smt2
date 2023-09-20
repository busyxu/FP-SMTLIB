(declare-fun t_ack!2873 () (_ BitVec 64))
(declare-fun t1_ack!2874 () (_ BitVec 64))
(declare-fun h_ack!2876 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!2875 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2874)
                    ((_ to_fp 11 53) t_ack!2873))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2874)
               ((_ to_fp 11 53) t_ack!2873))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!2876) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!2874)
                ((_ to_fp 11 53) t_ack!2873))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!2876)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2874)
               ((_ to_fp 11 53) t_ack!2873))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fa887ad701404ac y1_ack!2875))

(check-sat)
(exit)
