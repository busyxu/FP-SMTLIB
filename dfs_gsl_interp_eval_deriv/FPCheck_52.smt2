(declare-fun x1_ack!455 () (_ BitVec 64))
(declare-fun x0_ack!458 () (_ BitVec 64))
(declare-fun x2_ack!456 () (_ BitVec 64))
(declare-fun xx_ack!457 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!458) ((_ to_fp 11 53) x1_ack!455)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!455) ((_ to_fp 11 53) x2_ack!456)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!455)
                       ((_ to_fp 11 53) x0_ack!458))
               ((_ to_fp 11 53) x0_ack!458))
       ((_ to_fp 11 53) x1_ack!455)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!455)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!455)
                       ((_ to_fp 11 53) x0_ack!458)))
       ((_ to_fp 11 53) x0_ack!458)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!456)
                       ((_ to_fp 11 53) x1_ack!455))
               ((_ to_fp 11 53) x1_ack!455))
       ((_ to_fp 11 53) x2_ack!456)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!456)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!456)
                       ((_ to_fp 11 53) x1_ack!455)))
       ((_ to_fp 11 53) x1_ack!455)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!455)
                    ((_ to_fp 11 53) x0_ack!458))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!456)
                    ((_ to_fp 11 53) x1_ack!455))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!457) ((_ to_fp 11 53) x0_ack!458))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!457) ((_ to_fp 11 53) x2_ack!456))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!457) ((_ to_fp 11 53) x0_ack!458))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!457) ((_ to_fp 11 53) x1_ack!455)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!455) ((_ to_fp 11 53) xx_ack!457))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!456)
               ((_ to_fp 11 53) x1_ack!455))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW xx_ack!457 x1_ack!455))

(check-sat)
(exit)
