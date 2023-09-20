(declare-fun x1_ack!869 () (_ BitVec 64))
(declare-fun x0_ack!872 () (_ BitVec 64))
(declare-fun x2_ack!870 () (_ BitVec 64))
(declare-fun xx_ack!871 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!872) ((_ to_fp 11 53) x1_ack!869)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!869) ((_ to_fp 11 53) x2_ack!870)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!869)
                       ((_ to_fp 11 53) x0_ack!872))
               ((_ to_fp 11 53) x0_ack!872))
       ((_ to_fp 11 53) x1_ack!869)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!869)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!869)
                       ((_ to_fp 11 53) x0_ack!872)))
       ((_ to_fp 11 53) x0_ack!872)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!870)
                       ((_ to_fp 11 53) x1_ack!869))
               ((_ to_fp 11 53) x1_ack!869))
       ((_ to_fp 11 53) x2_ack!870)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!870)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!870)
                       ((_ to_fp 11 53) x1_ack!869)))
       ((_ to_fp 11 53) x1_ack!869)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!869)
                    ((_ to_fp 11 53) x0_ack!872))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!870)
                    ((_ to_fp 11 53) x1_ack!869))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!871) ((_ to_fp 11 53) x0_ack!872))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!871) ((_ to_fp 11 53) x2_ack!870))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!871) ((_ to_fp 11 53) x0_ack!872))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!871) ((_ to_fp 11 53) x1_ack!869))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!869)
               ((_ to_fp 11 53) x0_ack!872))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
