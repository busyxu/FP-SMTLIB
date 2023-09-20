(declare-fun x1_ack!304 () (_ BitVec 64))
(declare-fun x0_ack!306 () (_ BitVec 64))
(declare-fun x2_ack!305 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!306) ((_ to_fp 11 53) x1_ack!304)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!304) ((_ to_fp 11 53) x2_ack!305)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!304)
                       ((_ to_fp 11 53) x0_ack!306))
               ((_ to_fp 11 53) x0_ack!306))
       ((_ to_fp 11 53) x1_ack!304)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!304)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!304)
                       ((_ to_fp 11 53) x0_ack!306)))
       ((_ to_fp 11 53) x0_ack!306)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!305)
                       ((_ to_fp 11 53) x1_ack!304))
               ((_ to_fp 11 53) x1_ack!304))
       ((_ to_fp 11 53) x2_ack!305)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!305)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!305)
                       ((_ to_fp 11 53) x1_ack!304)))
       ((_ to_fp 11 53) x1_ack!304)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!304)
                    ((_ to_fp 11 53) x0_ack!306))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!305)
                    ((_ to_fp 11 53) x1_ack!304))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
