(declare-fun x1_ack!307 () (_ BitVec 64))
(declare-fun x0_ack!309 () (_ BitVec 64))
(declare-fun x2_ack!308 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!309) ((_ to_fp 11 53) x1_ack!307)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!307) ((_ to_fp 11 53) x2_ack!308)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!307)
                       ((_ to_fp 11 53) x0_ack!309))
               ((_ to_fp 11 53) x0_ack!309))
       ((_ to_fp 11 53) x1_ack!307)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!307)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!307)
                       ((_ to_fp 11 53) x0_ack!309)))
       ((_ to_fp 11 53) x0_ack!309)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!308)
                       ((_ to_fp 11 53) x1_ack!307))
               ((_ to_fp 11 53) x1_ack!307))
       ((_ to_fp 11 53) x2_ack!308)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!308)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!308)
                       ((_ to_fp 11 53) x1_ack!307)))
       ((_ to_fp 11 53) x1_ack!307)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!307)
                    ((_ to_fp 11 53) x0_ack!309))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!308)
                    ((_ to_fp 11 53) x1_ack!307))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
