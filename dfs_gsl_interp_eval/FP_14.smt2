(declare-fun x1_ack!268 () (_ BitVec 64))
(declare-fun x0_ack!270 () (_ BitVec 64))
(declare-fun x2_ack!269 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!270) ((_ to_fp 11 53) x1_ack!268)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!268) ((_ to_fp 11 53) x2_ack!269)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!268)
                       ((_ to_fp 11 53) x0_ack!270))
               ((_ to_fp 11 53) x0_ack!270))
       ((_ to_fp 11 53) x1_ack!268)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!268)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!268)
                       ((_ to_fp 11 53) x0_ack!270)))
       ((_ to_fp 11 53) x0_ack!270)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!269)
                       ((_ to_fp 11 53) x1_ack!268))
               ((_ to_fp 11 53) x1_ack!268))
       ((_ to_fp 11 53) x2_ack!269)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!269)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!269)
                       ((_ to_fp 11 53) x1_ack!268)))
       ((_ to_fp 11 53) x1_ack!268)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!268)
                    ((_ to_fp 11 53) x0_ack!270))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!269)
                    ((_ to_fp 11 53) x1_ack!268))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
