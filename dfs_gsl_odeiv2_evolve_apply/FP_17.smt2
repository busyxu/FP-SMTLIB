(declare-fun t_ack!424 () (_ BitVec 64))
(declare-fun t1_ack!425 () (_ BitVec 64))
(declare-fun h_ack!426 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!425)
                    ((_ to_fp 11 53) t_ack!424))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!425)
               ((_ to_fp 11 53) t_ack!424))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) h_ack!426) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!425)
                ((_ to_fp 11 53) t_ack!424))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) h_ack!426)
       (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) t1_ack!425)
               ((_ to_fp 11 53) t_ack!424))))

(check-sat)
(exit)
