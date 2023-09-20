(declare-fun x1_ack!265 () (_ BitVec 64))
(declare-fun x0_ack!267 () (_ BitVec 64))
(declare-fun x2_ack!266 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!267) ((_ to_fp 11 53) x1_ack!265)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!265) ((_ to_fp 11 53) x2_ack!266)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!265)
                       ((_ to_fp 11 53) x0_ack!267))
               ((_ to_fp 11 53) x0_ack!267))
       ((_ to_fp 11 53) x1_ack!265)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!265)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!265)
                       ((_ to_fp 11 53) x0_ack!267)))
       ((_ to_fp 11 53) x0_ack!267)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!266)
                       ((_ to_fp 11 53) x1_ack!265))
               ((_ to_fp 11 53) x1_ack!265))
       ((_ to_fp 11 53) x2_ack!266)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!266)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!266)
                       ((_ to_fp 11 53) x1_ack!265)))
       ((_ to_fp 11 53) x1_ack!265)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!265)
                    ((_ to_fp 11 53) x0_ack!267))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!266)
                    ((_ to_fp 11 53) x1_ack!265))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
