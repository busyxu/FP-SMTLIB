(declare-fun x1_ack!115 () (_ BitVec 64))
(declare-fun x0_ack!117 () (_ BitVec 64))
(declare-fun x2_ack!116 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!117) ((_ to_fp 11 53) x1_ack!115)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!115) ((_ to_fp 11 53) x2_ack!116)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!115)
                       ((_ to_fp 11 53) x0_ack!117))
               ((_ to_fp 11 53) x0_ack!117))
       ((_ to_fp 11 53) x1_ack!115)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!115)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!115)
                       ((_ to_fp 11 53) x0_ack!117)))
       ((_ to_fp 11 53) x0_ack!117)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!116)
                       ((_ to_fp 11 53) x1_ack!115))
               ((_ to_fp 11 53) x1_ack!115))
       ((_ to_fp 11 53) x2_ack!116)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!116)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!116)
                       ((_ to_fp 11 53) x1_ack!115)))
       ((_ to_fp 11 53) x1_ack!115)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!115)
                    ((_ to_fp 11 53) x0_ack!117))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
