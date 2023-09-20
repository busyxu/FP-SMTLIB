(declare-fun x1_ack!423 () (_ BitVec 64))
(declare-fun x0_ack!426 () (_ BitVec 64))
(declare-fun x2_ack!424 () (_ BitVec 64))
(declare-fun xx_ack!425 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!426) ((_ to_fp 11 53) x1_ack!423)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!423) ((_ to_fp 11 53) x2_ack!424)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!423)
                       ((_ to_fp 11 53) x0_ack!426))
               ((_ to_fp 11 53) x0_ack!426))
       ((_ to_fp 11 53) x1_ack!423)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!423)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!423)
                       ((_ to_fp 11 53) x0_ack!426)))
       ((_ to_fp 11 53) x0_ack!426)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!424)
                       ((_ to_fp 11 53) x1_ack!423))
               ((_ to_fp 11 53) x1_ack!423))
       ((_ to_fp 11 53) x2_ack!424)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!424)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!424)
                       ((_ to_fp 11 53) x1_ack!423)))
       ((_ to_fp 11 53) x1_ack!423)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!423)
                    ((_ to_fp 11 53) x0_ack!426))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!424)
                    ((_ to_fp 11 53) x1_ack!423))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) xx_ack!425) ((_ to_fp 11 53) x0_ack!426)))

(check-sat)
(exit)
