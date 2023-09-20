(declare-fun x1_ack!136 () (_ BitVec 64))
(declare-fun x0_ack!138 () (_ BitVec 64))
(declare-fun x2_ack!137 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!138) ((_ to_fp 11 53) x1_ack!136)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!136) ((_ to_fp 11 53) x2_ack!137)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!136)
                       ((_ to_fp 11 53) x0_ack!138))
               ((_ to_fp 11 53) x0_ack!138))
       ((_ to_fp 11 53) x1_ack!136)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!136)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!136)
                       ((_ to_fp 11 53) x0_ack!138)))
       ((_ to_fp 11 53) x0_ack!138)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!137)
                       ((_ to_fp 11 53) x1_ack!136))
               ((_ to_fp 11 53) x1_ack!136))
       ((_ to_fp 11 53) x2_ack!137)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!137)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!137)
                       ((_ to_fp 11 53) x1_ack!136)))
       ((_ to_fp 11 53) x1_ack!136)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!136)
                    ((_ to_fp 11 53) x0_ack!138))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!137)
                    ((_ to_fp 11 53) x1_ack!136))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
