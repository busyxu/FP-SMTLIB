(declare-fun t_ack!10719 () (_ BitVec 64))
(declare-fun t1_ack!10720 () (_ BitVec 64))
(declare-fun h_ack!10721 () (_ BitVec 64))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10720)
                    ((_ to_fp 11 53) t_ack!10719))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10720)
                    ((_ to_fp 11 53) t_ack!10719))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.sub roundNearestTiesToEven
                ((_ to_fp 11 53) t1_ack!10720)
                ((_ to_fp 11 53) t_ack!10719))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) h_ack!10721)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10720)
                    ((_ to_fp 11 53) t_ack!10719)))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) t1_ack!10720)
                    ((_ to_fp 11 53) t_ack!10719))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
