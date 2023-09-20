(declare-fun x1_ack!427 () (_ BitVec 64))
(declare-fun x0_ack!430 () (_ BitVec 64))
(declare-fun x2_ack!428 () (_ BitVec 64))
(declare-fun xx_ack!429 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!430) ((_ to_fp 11 53) x1_ack!427)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!427) ((_ to_fp 11 53) x2_ack!428)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!427)
                       ((_ to_fp 11 53) x0_ack!430))
               ((_ to_fp 11 53) x0_ack!430))
       ((_ to_fp 11 53) x1_ack!427)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!427)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!427)
                       ((_ to_fp 11 53) x0_ack!430)))
       ((_ to_fp 11 53) x0_ack!430)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!428)
                       ((_ to_fp 11 53) x1_ack!427))
               ((_ to_fp 11 53) x1_ack!427))
       ((_ to_fp 11 53) x2_ack!428)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!428)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!428)
                       ((_ to_fp 11 53) x1_ack!427)))
       ((_ to_fp 11 53) x1_ack!427)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!427)
                    ((_ to_fp 11 53) x0_ack!430))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!428)
                    ((_ to_fp 11 53) x1_ack!427))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!429) ((_ to_fp 11 53) x0_ack!430))))
(assert (fp.gt ((_ to_fp 11 53) xx_ack!429) ((_ to_fp 11 53) x2_ack!428)))

(check-sat)
(exit)
