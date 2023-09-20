(declare-fun t_ack!2568 () (_ BitVec 64))
(declare-fun t1_ack!2569 () (_ BitVec 64))
(declare-fun h_ack!2570 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!2569)
                    ((_ to_fp 11 53) t_ack!2568))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2569)
               ((_ to_fp 11 53) t_ack!2568))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!2570) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!2569)
                ((_ to_fp 11 53) t_ack!2568))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!2570)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!2569)
               ((_ to_fp 11 53) t_ack!2568))))

(check-sat)
(exit)
