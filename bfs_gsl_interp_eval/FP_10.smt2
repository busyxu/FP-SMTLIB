(declare-fun x1_ack!166 () (_ BitVec 64))
(declare-fun x0_ack!168 () (_ BitVec 64))
(declare-fun x2_ack!167 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!168) ((_ to_fp 11 53) x1_ack!166)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!166) ((_ to_fp 11 53) x2_ack!167)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!166)
                       ((_ to_fp 11 53) x0_ack!168))
               ((_ to_fp 11 53) x0_ack!168))
       ((_ to_fp 11 53) x1_ack!166)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!166)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!166)
                       ((_ to_fp 11 53) x0_ack!168)))
       ((_ to_fp 11 53) x0_ack!168)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!167)
                       ((_ to_fp 11 53) x1_ack!166))
               ((_ to_fp 11 53) x1_ack!166))
       ((_ to_fp 11 53) x2_ack!167)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!167)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!167)
                       ((_ to_fp 11 53) x1_ack!166)))
       ((_ to_fp 11 53) x1_ack!166)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!166)
                    ((_ to_fp 11 53) x0_ack!168))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!167)
                    ((_ to_fp 11 53) x1_ack!166))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
